package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class alterIn extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		String a="y";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			String name=request.getParameter("name");
			String nickName = request.getParameter("nickName");
			String age = request.getParameter("age");
			String sex = request.getParameter("sex");
			String nationality=request.getParameter("nationality");
			String signature=request.getParameter("signature");
			String professional=request.getParameter("professional");
			String sql="update user_information set nickname='"+nickName+"',sex='"+sex+"',age='"+age+"',nationality='"+nationality+"',signature='"+signature+"',professional='"+professional+"' where name='"+name+"'";
			System.out.println(sql);
			int result = sat.executeUpdate(sql);
			if(result<0){
				a="n";
			}
			out.print(a);
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
