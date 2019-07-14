package com.etc.control;

import com.etc.dao.OrderDao;
import com.etc.dao.ShopDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "delOrderServlet",urlPatterns = "/delOederServlet")
public class delOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session =  request.getSession(true);
        ShopDao shopDao = new ShopDao();
        OrderDao orderDao=new OrderDao();
        int sid=Integer.valueOf(request.getParameter("sid"));
        shopDao.delorder(sid);
        orderDao.deleteOrder(sid);
        request.getRequestDispatcher("order.jsp").forward(request, response);

    }
}
