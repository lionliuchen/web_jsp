package com.beans;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.ArrayList;
import com.beans.BookBean;

public class BookDAO {
	private static InitialContext context = null;
	private DataSource dataSource = null;

	public BookDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 根据书号查询图书信息
	public BookBean searchBook(String bookid) {
		String url = "jdbc:mysql://localhost:3306/bookstore";
		String user = "root";
		String psw = "154704";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rst = null;
		BookBean book = new BookBean();
		try {
			conn = DriverManager.getConnection(url, user, psw);
			pstmt = conn.prepareStatement("SELECT * FROM books WHERE bookid=?");
			pstmt.setString(1, bookid);
			rst = pstmt.executeQuery();
			if (rst.next()) {
				book.setBookid(rst.getString("bookid"));
				book.setTitle(rst.getString("title"));
				book.setAuthor(rst.getString("author"));
				book.setPublisher(rst.getString("publisher"));
				book.setPrice(rst.getFloat("price"));
//				System.out.println(book.getString("bookid"));
//				System.out.println(book.getTitle());
				return book;
			} else {
				return null;
			}
		} catch (SQLException se) {
			return null;
		} finally {
			try {
				conn.close();
			} catch (SQLException se) {
			}
		}
//		return null;
	}

	// 插入一本图书记录
	public boolean insertBook(BookBean book) {
		String url = "jdbc:mysql://localhost:3306/bookstore";
		String user = "root";
		String psw = "154704";
		Connection conn = null;
		PreparedStatement pstmt = null;
//		System.out.println(book.getAuthor());
		try {
			conn = DriverManager.getConnection(url, user, psw);
			pstmt = conn.prepareStatement("INSERT INTO books VALUES(?,?,?,?,?)");
			pstmt.setString(1, book.getBookid());
			pstmt.setString(2, book.getTitle());
			pstmt.setString(3, book.getAuthor());
			pstmt.setString(4, book.getPublisher());
			pstmt.setFloat(5, book.getPrice());

			pstmt.executeUpdate();
			pstmt.close();
			return true;
		} catch (SQLException se) {
			se.printStackTrace();
			return false;
		} finally {
			try {
				conn.close();
			} catch (SQLException se) {
			}
		}
	}
}
