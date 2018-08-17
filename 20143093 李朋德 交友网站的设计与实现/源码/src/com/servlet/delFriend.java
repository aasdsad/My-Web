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

public class delFriend extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String nameFriend = request.getParameter("friendName");
		System.out.println(name);
		System.out.println(nameFriend);
		int result=0;
		PrintWriter out = response.getWriter();
		try {
			/*response.getWriter().write(a);
			PrintWriter out = response.getWriter();
			out.print(a);*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			String sql="delete from user"+name+"friend where friend="+nameFriend;
			result=result+ sta.executeUpdate(sql);
			String sql2="delete from user"+nameFriend+"friend where friend="+name;
			int result2= sta.executeUpdate(sql2);
			if(result>0&&result2>0){
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
