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

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;

public class postFeige extends HttpServlet {
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
		String name1=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			String name=request.getParameter("name");
			String postName = request.getParameter("postName");
			String postTitle = request.getParameter("postTitle");
			String contentOne = request.getParameter("contentOne");
			String contentSec=request.getParameter("contentSec");
			Date createtime = new Date();
		    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    String time = format.format(createtime);
		    
		    //�ҵ��ҵĺ��ѱ���Ҫ���ͷɸ�Ķ����ǲ����ҵĺ���
		    String sqlcount="select *from user"+name+"friend where friend='"+postName+"'";
		    System.out.println(sqlcount);
		    ResultSet result2= sat.executeQuery(sqlcount);
		    if (result2.next()==false) {  
		    	 //���ڼ�¼ rs��Ҫ������һ����¼ ��Ϊrs.next�����һ����¼��  
		    	 result2.previous();  
		    	 //��ִ��while ѭ��  
		    	 a="n";
		    }  
		    if(result2.next() == true){
		    	name1=result2.getString("friend");
		    	if(name1.equals(postName)){
		    		a="n";//������Ϊn
		    	}
		    }
		    if(a=="y"){
				String sql="insert into feige (name,postname,createtime,posttitle,contentone,contentsec) values('"+name+"','"+postName+"','"+time+"','"+postTitle+"','"+contentOne+"','"+contentSec+"')";
				System.out.println(sql);
				int result = sat.executeUpdate(sql);
		    }else{
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
