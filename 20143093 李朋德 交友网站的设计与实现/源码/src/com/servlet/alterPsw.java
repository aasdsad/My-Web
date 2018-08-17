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

public class alterPsw extends HttpServlet {
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
		String a="n";
		String oldpsw=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			Statement sta = con.createStatement();
			String name=request.getParameter("name");
			String newpsw = request.getParameter("newpsw");
			String psw = request.getParameter("psw");
			String sql1="select userpsw from users where username='"+name+"'";
			ResultSet result1 = sta.executeQuery(sql1);
			if(result1.next()==true){
				oldpsw=result1.getString("userpsw");
				System.out.println("hahah"+oldpsw);
			}
			int result=0;
			System.out.println(psw.equals(oldpsw));
			if(psw.equals(oldpsw)==true){
				String sql="update users set userpsw='"+newpsw+"' where username='"+name+"'";
				System.out.println("fsadfasdf"+sql);
				result = sat.executeUpdate(sql);
				a="y";
			}
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
