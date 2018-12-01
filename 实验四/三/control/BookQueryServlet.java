package com.control;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.beans.BookBean;
import com.beans.BookDAO;

public class BookQueryServlet extends HttpServlet {

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

		String bookid = request.getParameter("bookid");
	    BookDAO bookdao = new BookDAO();
//	    System.out.println(bookid);
	    BookBean book = bookdao.searchBook(bookid);
	    
	    if(book!=null){
	      request.getSession().setAttribute("book", book);
//	      System.out.println(book.getAuthor());
	      RequestDispatcher view = request.getRequestDispatcher("/display.jsp");
	      view.forward(request, response);
	    }else{
	      RequestDispatcher view = request.getRequestDispatcher("/errorPage.jsp");
	      view.forward(request, response);
	    }
	}

}
