package com.etc.control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import com.etc.dao.UserDao;



@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                     doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


                String name =request.getParameter("username");
                String password =request.getParameter("password");
                UserDao userdao= new UserDao();
                userdao.checkLogin(name,password);
                if(name!=null && password!=null && name.length()>0 && password.length()>0)
                {

                    int uid  =  userdao.checkLogin(name, password);
                    if(uid>0){
                        HttpSession session =  request.getSession(true);
                        session.setAttribute("uid", uid);

                        request.getRequestDispatcher("main.jsp").forward(request, response);
                    }
                    else{
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                }

                else{
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
}
