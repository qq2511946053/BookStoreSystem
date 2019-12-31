package com.vp.bookstore.controller;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dto.ShowPageHomeDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: duYang
 * @Date: 2019/12/23 18:57
 * @Version: 1.0
 */
@WebServlet(value = "/ShowPageHome")
public class ShowPageHome extends HttpServlet {
    private static IBookInfoDao bookInfoDao=new IBookInfoDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ShowPageHomeDto PageHomeDto=new ShowPageHomeDto();
        //获得热销排行榜的7条数据
        PageHomeDto.setHeatRanking(bookInfoDao.findHeatRanking(7));
        //获得新书上架的7条数据
        PageHomeDto.setNewBookRanking(bookInfoDao.findNewBookRanking(7));
        //获得热门推荐中每种类别的10条数据
        PageHomeDto.setPrimarySchoolBook(bookInfoDao.findBookTypeRanking("小学",10));
        PageHomeDto.setMiddleSchoolBook(bookInfoDao.findBookTypeRanking("初中",10));
        PageHomeDto.setHighSchoolBook(bookInfoDao.findBookTypeRanking("高中",10));
        PageHomeDto.setEducationBook(bookInfoDao.findBookTypeRanking("教育",10));
        PageHomeDto.setReferenceBook(bookInfoDao.findBookTypeRanking("工具书",10));
        PageHomeDto.setPeriodicalBook(bookInfoDao.findBookTypeRanking("期刊",10));
        //获得今日特价的10条数据
        PageHomeDto.setDisCountBookRanking(bookInfoDao.findDisCountBookRanking(10));
        req.setAttribute("data",PageHomeDto);
        req.getRequestDispatcher("reception/pagehome.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
