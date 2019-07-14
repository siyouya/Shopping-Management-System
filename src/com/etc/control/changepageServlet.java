package com.etc.control;

import com.etc.dao.ShopDao;
import com.etc.entity.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "changepageServlet",urlPatterns = "/changepageServlet")
public class changepageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


              doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html");

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        ShopDao shopdao=new ShopDao();
        int totalcount=shopdao.findcount();

     int start=Integer.valueOf(request.getParameter("start"));




        if(start<=0){

         start=0;

            request.setAttribute("start",start);

         request.getRequestDispatcher("FirstPage").forward(request,response);

        }else if (start>=totalcount){

            request.setAttribute("start",start-12);

            List<Shop> list=shopdao.querybypage(start-12);

            request.setAttribute("shop",list);

            request.getRequestDispatcher("main3.jsp").forward(request,response);
        }


            else{

            List<Shop> list=shopdao.querybypage(start);

            request.setAttribute("shop",list);

            request.setAttribute("start",start);

            request.getRequestDispatcher("main3.jsp").forward(request,response);
        }








    }
}
