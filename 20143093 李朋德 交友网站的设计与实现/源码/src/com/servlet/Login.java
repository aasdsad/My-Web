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

public class Login extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String usepsw = request.getParameter("psw");
		System.out.println(name);
		System.out.println(usepsw);
		String a = null,psw=null,id=null;
		try {
			/*response.getWriter().write(a);
			PrintWriter out = response.getWriter();
			out.print(a);*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			ResultSet result= sta.executeQuery("select username,userpsw from users where username='"+name+"'");
			if(result!=null&&result.next()){
				psw = result.getString("userpsw");
				id = result.getString("username");
				System.out.println(psw);
				System.out.println(id);
				request.getSession().setAttribute("name",name);
				request.getSession().setAttribute("id",id);
				request.getSession().setAttribute("password",psw);
				request.getSession().setAttribute("usepassword",usepsw);
			}
			if(psw==null){
				a="c";
			}else{
				if(id.equals(name)){
					a="n";
					if(psw.equals(usepsw)){
						a="y";
					}
				}
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
		PrintWriter out = response.getWriter();
		out.print(a);
	}

}
