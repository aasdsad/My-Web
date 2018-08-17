package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteFei extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String postname = request.getParameter("postname");
		String time=request.getParameter("createtime");
		int result=0;
		PrintWriter out = response.getWriter();
		try {
			/*response.getWriter().write(a);
			PrintWriter out = response.getWriter();
			out.print(a);*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			String sql="delete from feige where name='"+name+"' and postname='"+postname+"' and createtime='"+time+"'";
			System.out.printf(sql);
			result=result+ sta.executeUpdate(sql);
			if(result>0){
				out.print("1");
			}else{
				out.print("0");
			}
			con.close();
			/*request.getRequestDispatcher("www.baidu.com").forward(request, response);*/
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
