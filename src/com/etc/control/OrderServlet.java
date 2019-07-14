package com.etc.control;

import com.etc.dao.*;
import com.etc.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "OrderServlet",urlPatterns = "/OederServlet")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    request.setCharacterEncoding("UTF-8");
                    response.setCharacterEncoding("UTF-8");
                    HttpSession session =  request.getSession(true);
                    int uid=(int)session.getAttribute("uid");
                    int bid=(int)session.getAttribute("bid");
                    int state=1;
                    ShopDao shopDao = new ShopDao();
                    OrderDao orderDao=new OrderDao();
                        orderDao.addorder(uid, bid, state);
                        shopDao.queryidShop(bid);
                        shopDao.changstate(bid);
                        request.getRequestDispatcher("test4.jsp").forward(request, response);


    }
}
