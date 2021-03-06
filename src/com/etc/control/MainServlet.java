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


@WebServlet(name = "MainServlet",urlPatterns = "/MainServlet")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                  doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                String  option=request.getParameter("option");
                          HttpSession session =  request.getSession(true);
                if (option.equals("user")){
                    String user ="user.jsp";
                    session.setAttribute("jsp",user);
                    request.getRequestDispatcher("personInfo.jsp").forward(request,response);
                }else if(option.equals("changeuser")){
                    String changeuser="changeuser.jsp";
                    session.setAttribute("jsp",changeuser);
                    request.getRequestDispatcher("personInfo.jsp").forward(request,response);
                }else if(option.equals("addshop")){
                    String addshopInfo="addshopInfo.jsp";
                    session.setAttribute("jsp",addshopInfo);
                    request.getRequestDispatcher("personInfo.jsp").forward(request,response);

                }else if (option.equals("seller")){
                    String seller="seller.jsp";
                    session.setAttribute("jsp",seller);
                    request.getRequestDispatcher("personInfo.jsp").forward(request,response);
                }else if(option.equals("order")){
                   String order="order.jsp";
                   session.setAttribute("jsp",order);
                    request.getRequestDispatcher("personInfo.jsp").forward(request,response);

                }






    }
}
