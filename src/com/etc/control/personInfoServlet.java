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
                    String tel = request.getParameter("tel");
                    String address = request.getParameter("address");
                    UserDao userdao = new UserDao();
                    userdao.changeuser(name, password, age, tel, address, userid);
                    request.getRequestDispatcher("changeuser.jsp").forward(request, response);
                }else if(option.equals("addshop")){
                    String picture=(String)session.getAttribute("picture");
                    String size=request.getParameter("size");
                    String detail=request.getParameter("detail");
                    int uid=(int)session.getAttribute("uid");
                    String shopname  = request.getParameter("shopname");
                    int shoptypename  = Integer.valueOf(request.getParameter("shoptypename"));
                    int price= Integer.valueOf(request.getParameter("price"));
                    ShopDao shopDao =new ShopDao();
                    shopDao.addShop(shopname,price,shoptypename,uid,detail,picture,size);
                    request.getRequestDispatcher("seller.jsp").forward(request,response);
                }



    }
}
