package com.etc.control;

import com.etc.dao.OrderDao;
import com.etc.dao.ShopDao;
import com.etc.entity.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "confirmOrderServlet",urlPatterns = "/confirmOederServlet")
public class confirmOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        OrderDao orderDao=new OrderDao();
        ShopDao shopDao=new ShopDao();
        int sid=Integer.valueOf(request.getParameter("sid"));
        orderDao.confirmorder(sid);
        shopDao.confirmorder(sid);
        request.getRequestDispatcher("order.jsp").forward(request, response);

    }
}
