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

public class joinActivity extends HttpServlet {

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
		String b="y";
		String id="";
		String nickname="";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			String name=request.getParameter("name");
			id=request.getParameter("id");
		    
		    /*String sqlcount="select id from activity where activityname='"+activityName+"'";
		    ResultSet result2= sat.executeQuery(sqlcount);
		    
		    if(result2.next() == true){
		    	id=result2.getString("id");
		    }*/
		    String sql3="select * from activity"+id+"people";
	    	ResultSet result3= sat.executeQuery(sql3);
	    	result3.last();
	    	int size=result3.getRow();
	    	for(int i=0;i<size;i++)
	    	{
	    		String people1=result3.getString("people");
	    		if(name.equals(people1)){
	    			b="n";
	    		}
	    		if(result3.next()==false){
	    			break;
	    		}
	    	}
	    	if(b.equals("y")){
	    		String sqlcount="select *from user_information where name='"+name+"'";
			    ResultSet result2= sat.executeQuery(sqlcount);
			    if(result2.next() == true){
			    	nickname=result2.getString("nickname");
			    }
			    
		    	String sql="insert into activity"+id+"people  (people,nickname) values('"+name+"','"+nickname+"')";
		    	System.out.println(sql);
		    	int result = sat.executeUpdate(sql);
		    	if(result>0){
		    		a="y";
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
