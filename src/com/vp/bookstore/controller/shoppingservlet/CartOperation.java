package com.vp.bookstore.controller.shoppingservlet;

/**
 * @Author: duYang
 * @Date: 2019/12/26 17:38
 * @Version: 1.0
 */

import com.alibaba.fastjson.JSON;
import com.vp.bookstore.dao.ICollectionDao;
import com.vp.bookstore.dao.impl.ICollectionDaoImpl;
import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.pojo.Collection;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * 购物车页面的操作
 */
@WebServlet(value = "/CartOperation")
public class CartOperation extends HttpServlet {
    private static ICollectionDao collectionDao=new ICollectionDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        String operation = req.getParameter("operation");
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        Map<Integer, ShoppingCartDto> cartList = userInfo.getCartList();
        Map<String,Object> resultMap=new HashMap<>();
        if (operation.equals("deleteAll")){
            Map<String, String[]> parameterMap = req.getParameterMap();
            for (String book_id : parameterMap.get("book_id")) {
                int id=Integer.parseInt(book_id);
                cartList.remove(id);
                resultMap.put("result","删除成功！");
            }
        }
        else{
            int book_id = Integer.parseInt(req.getParameter("book_id"));
            if (operation.equals("add")){
                ShoppingCartDto dto = cartList.get(book_id);
                int i=dto.getBook_count()+1;
                dto.setBook_count(i);
                cartList.put(book_id,dto);
                resultMap.put("num",i);
            }
            else if (operation.equals("reduce")){
                ShoppingCartDto dto = cartList.get(book_id);
                if (dto.getBook_count()>1){
                    int i=dto.getBook_count()-1;
                    dto.setBook_count(i);
                    cartList.put(book_id,dto);
                    resultMap.put("num",i);
                }
            }
            else if (operation.equals("delete")){
                cartList.remove(book_id);
                resultMap.put("result","删除成功!");
            }
            else if (operation.equals("collection")){
                Collection collection=new Collection();
                collection.setUser_id(userInfo.getUser_id());
                collection.setBook_id(book_id);
                if (collectionDao.findByUserCollectionBook(collection)) {
                    if (collectionDao.insertCollection(collection)) resultMap.put("result", "收藏成功!");
                    else resultMap.put("result", "收藏失败!");
                }
                else resultMap.put("result","收藏失败!你已收藏过此商品!");
            }
        }
        PrintWriter writer = resp.getWriter();
        writer.write(JSON.toJSONString(resultMap));
        userInfo.setCartList(cartList);
        session.setAttribute("userInfo",userInfo);
    }
}
