package com.etc.control;

import com.etc.dao.PageshopDao;

import com.etc.dao.ShopDao;
import com.etc.entity.PageData;
import com.etc.entity.Shop;
import com.etc.entity.ShopType;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class SellerServlet
 */

@WebServlet(name = "FirstPage",urlPatterns = "/FirstPage")
public class FirstPage extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");


		 int start=0;

		request.setAttribute("start",start);
		ShopDao shopDao =new ShopDao();


		List<Shop> list=shopDao.querybypage(start);

         request.setAttribute("shop",list);

         request.getRequestDispatcher("main3.jsp").forward(request,response);
		//PrintWriter out=response.getWriter();





	}

}
