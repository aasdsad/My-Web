package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class dongtaiRelease extends HttpServlet {
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
			Statement sta = con.createStatement();
			String name=request.getParameter("name");
			String release = request.getParameter("releaseVal");
			Date createtime = new Date();
		    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    String time = format.format(createtime);
		    
		    String sqlcount="select *from user"+name+"dongtaiRelease";
		    ResultSet result2= sta.executeQuery(sqlcount);
		    result2.last();
		    int id=result2.getRow()+1;
		    System.out.println(result2.getRow());
		    
			String sql="insert into user"+name+"dongtaiRelease (content,releasetime,id) values('"+release+"','"+time+"','"+id+"')";
			int result = sat.executeUpdate(sql);
			if(result>0){
				String sqlc="create table"+" user"+name+id+" (name varchar(20) not null,content varchar(1000) not null,nickname varchar(20) not null)";
				System.out.println(sqlc);
				int result1 = sat.executeUpdate(sqlc);
				if(result1<0){
					a="n";
				}
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
