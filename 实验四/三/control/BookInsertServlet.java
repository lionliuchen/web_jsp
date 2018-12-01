package com.control;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.beans.BookBean;
import com.beans.BookDAO;

public class BookInsertServlet extends HttpServlet {

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gbk");
	    String message = null;  
	    BookBean book = new BookBean(
	        request.getParameter("bookid"),request.getParameter("title"),
	        request.getParameter("author"),request.getParameter("publisher"),
	        Float.parseFloat(request.getParameter("price"))
	    	); 
//	    System.out.println(request.getParameter("title"));
//	    System.out.println(request.getParameter("price"));
	    BookDAO bookdao = new BookDAO();
	    boolean success = bookdao.insertBook(book);
	    if(success){
	       message = "成功插入一条记录！";
	     }else{ 
	       message = "插入记录错误！";
	    }   
//	    System.out.print(message);
	   request.setAttribute("result",message);
	   RequestDispatcher view = request.getRequestDispatcher("/bookInsert.jsp");
	   view.forward(request, response);
	}

}
