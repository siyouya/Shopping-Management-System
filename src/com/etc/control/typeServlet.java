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


@WebServlet(name = "typeServlet",urlPatterns = "/typeServlet")
public class typeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                  doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                String  option=request.getParameter("option");
                HttpSession session =  request.getSession(true);
                ShopDao shopDao=new ShopDao();
                int typeid;
                if (option.equals("life")){
                    typeid=1;
                    List<Shop> shop=shopDao.querytypeShop(typeid);
                    session.setAttribute("shop",shop);
                    request.getRequestDispatcher("main2.jsp").forward(request,response);
                }else if(option.equals("study")){
                    typeid=2;
                    List<Shop> shop=shopDao.querytypeShop(typeid);
                    session.setAttribute("shop",shop);
                    request.getRequestDispatcher("main2.jsp").forward(request,response);
                }else if(option.equals("word")){
                    typeid=3;
                    List<Shop> shop=shopDao.querytypeShop(typeid);
                    session.setAttribute("shop",shop);
                    request.getRequestDispatcher("main2.jsp").forward(request,response);
                }






    }
}
