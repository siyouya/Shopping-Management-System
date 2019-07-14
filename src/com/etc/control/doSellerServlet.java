package com.etc.control;

import com.etc.dao.ShopDao;
import com.etc.entity.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "doSellerServlet",urlPatterns = "/doSellerServlet")
public class doSellerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html");
        //设置编码格式
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession session =  request.getSession(true);
//
//           ShopDao shopdao =new ShopDao();
//           String  shopname =request.getParameter("shopname");
//           List<Shop> shop  = shopdao.queryAllshopLikeName(shopname);
//            //将list存储在request属性范围内 返回给浏览器的数据
//        session.setAttribute("shop",shop);
//            //转发到book.jsp 页面
//        request.getRequestDispatcher("main2.jsp").forward(request, response);


        int shoptype=Integer.valueOf(request.getParameter("shoptype"));
        String shopname=request.getParameter("shopname");
        int lowerprice=Integer.valueOf(request.getParameter("lowprice"));
        int maxerprice=Integer.valueOf(request.getParameter("highprice"));
        System.out.print(shoptype);
        System.out.print(shopname);
        System.out.print(lowerprice);
        System.out.print(maxerprice);
        ShopDao  shopDao=new ShopDao();

        if (shoptype==0&&shopname.equals("")&&lowerprice==0&&maxerprice==9999){//  0 0 0    0
            List<Shop> shop=shopDao.allshop();
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else if(shoptype==0&&lowerprice==0&&maxerprice==9999){                  //0 1 0                    2
            List<Shop> shop=shopDao.queryAllshopLikeName(shopname);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else if(shoptype!=0&&lowerprice==0&&maxerprice==9999){                  //1 1 0                    6
            List<Shop> shop=shopDao.queryAllshopLikeNameandtype(shopname,shoptype);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else if(shoptype==0&&shopname.equals("")){              //0 0 1                   1
            List<Shop> shop=shopDao.Allshopbyprice(lowerprice,maxerprice);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else if (shopname.equals("")){                         //1  0  1                  5
            List<Shop> shop=shopDao.queryAllshopbyprice(shoptype,lowerprice,maxerprice);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else if(shoptype==0){                                                   //0 1 1                  3
            List<Shop> shop=shopDao.queryAllshopbypriceandshopname(shopname,lowerprice,maxerprice);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }else{                                                                                        //111
            List<Shop> shop=shopDao.queryAllshopbypriceandshopnameandtype(shopname,lowerprice,maxerprice,shoptype);
            session.setAttribute("shop",shop);
            request.getRequestDispatcher("main2.jsp").forward(request,response);
        }


        }








}
