package com.etc.control;
import com.etc.dao.UserDao;
import com.etc.entity.User;
import javax.swing.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "adduserServlet",urlPatterns = "/adduserServlet")
public class adduserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name  = request.getParameter("username");
        String password =request.getParameter("password");
        int tel =Integer.parseInt(request.getParameter("tel"));
        int age=Integer.valueOf(request.getParameter("age"));
        String address =request.getParameter("address");
        UserDao userdao  = new UserDao();
        User user=new User();
        user.setName(name);
        user.setPassword(password);
        user.setTel(tel);
        user.setAge(age);
        user.setAddress(address);
        userdao.addUserez(name,password,tel,age ,address);
        JOptionPane.showMessageDialog(null,"注册成功","通知",JOptionPane.INFORMATION_MESSAGE);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
