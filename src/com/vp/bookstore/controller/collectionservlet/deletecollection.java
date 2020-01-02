package com.vp.bookstore.controller.collectionservlet;

import com.vp.bookstore.dao.ICollectionDao;
import com.vp.bookstore.dao.impl.ICollectionDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@WebServlet(value = "/deletecollection")
public class deletecollection extends HttpServlet {
    ICollectionDao iCollectionDao=new ICollectionDaoImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        Map<String, String[]> map = request.getParameterMap();
        int user_id=Integer.parseInt(map.get("user_id")[0]);
        String[]book_ids=map.get("book_ids[]");
        boolean falg=true;
        for (int i=0;i<book_ids.length;i++){
            if(!iCollectionDao.deletecollectionBybookid(user_id,Integer.parseInt(book_ids[i])))
                falg=false;
        }
        pw.print(falg);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        int book_id = Integer.parseInt(request.getParameter("book_id"));
        if(iCollectionDao.deletecollectionBybookid(user_id,book_id)){
           response.sendRedirect("/BookStoreSystem_war_exploded/reception/collection.jsp");
        }
    }
}
