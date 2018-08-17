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

public class writeInHuifu extends HttpServlet {

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
		String id="";
		String nickname="";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			String myname=request.getParameter("myname");
			String hername=request.getParameter("hername");
			String huifuVal=request.getParameter("huifuVal");
			String dongtaiReleaseT=request.getParameter("dongtaireleaseT");
			
			Date createtime = new Date();
		    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    String time = format.format(createtime);
		    //找到这个动态的id
		    String sqlcount="select id from user"+hername+"dongtairelease where content='"+dongtaiReleaseT+"'";
		    ResultSet result2= sat.executeQuery(sqlcount);
		    if(result2.next() == true){
		    	id=result2.getString("id");
		    }
		    //找到我的昵称
		    String sqlcountt="select nickname from user_information where name='"+myname+"'";
		    ResultSet result2t= sat.executeQuery(sqlcountt);
		    if(result2t.next() == true){
		    	nickname=result2t.getString("nickname");
		    }
		    
			String sql="insert into user"+hername+id+"  (name,content,nickname) values('"+myname+"','"+huifuVal+"','"+nickname+"')";
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
