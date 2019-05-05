package com.etc.control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import com.etc.dao.*;
import com.etc.entity.*;
@WebServlet(name = "personInfoServlet",urlPatterns = "/personInfoServlet")
public class personInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
                    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                request.setCharacterEncoding("UTF-8");
                response.setCharacterEncoding("UTF-8");
                HttpSession session =  request.getSession(true);
                int userid =(int)session.getAttribute("uid");
                String option=request.getParameter("option");


                if(option.equals("dochangeuser")) {
                    String name = request.getParameter("name");
                    String password = request.getParameter("password");
                    int age = Integer.valueOf(request.getParameter("age"));
                    int tel = Integer.valueOf(request.getParameter("tel"));
                    String address = request.getParameter("address");
                    UserDao userdao = new UserDao();
                    userdao.changeuser(name, password, age, tel, address, userid);
                    request.getRequestDispatcher("changeuser.jsp").forward(request, response);

                }else if(option.equals("addshop")){

                    int uid=(int)session.getAttribute("uid");
                    String shopname  = request.getParameter("shopname");
                    int shoptypename  = Integer.valueOf(request.getParameter("shoptypename"));
                    int price= Integer.valueOf(request.getParameter("price"));
                    session.setAttribute("shopname",shopname);
                    session.setAttribute("shoptypename",shoptypename);
                    session.setAttribute("price",price);
                    ShopDao shopDao =new ShopDao();
                 //   shopDao.addShop(shopname,price,shoptypename,uid);
                    UserDao userDao=new UserDao();
                    Shop shop=shopDao.queryAllShop(uid);
                    int shop1= shop.getBid();
                    userDao.seller(uid,shopname,price,shop1);
                    request.getRequestDispatcher("seller.jsp").forward(request,response);
                }



    }
}
