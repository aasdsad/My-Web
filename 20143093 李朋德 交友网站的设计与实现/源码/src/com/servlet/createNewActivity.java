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

public class createNewActivity extends HttpServlet {
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
			String cntcjrVal = request.getParameter("cntcjrVal");
			String cnthdddVal = request.getParameter("cnthdddVal");
			String cntkssjVal = request.getParameter("cntkssjVal");
			String cnthdsmVal=request.getParameter("cnthdsmVal");
			Date createtime = new Date();
		    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    String time = format.format(createtime);
		    
		    String sqlcount="select *from activity";
		    ResultSet result2= sat.executeQuery(sqlcount);
		    result2.last();
		    int id=result2.getRow()+1;
		    
			String sql="insert into activity (createpeople,activityname,activityadress,activitystarttime,activityexplain,createtime,id) values('"+name+"','"+cntcjrVal+"','"+cnthdddVal+"','"+cntkssjVal+"','"+cnthdsmVal+"','"+time+"','"+id+"')";
			System.out.println(sql);
			int result = sat.executeUpdate(sql);
			
			String sql3="create table"+" activity"+id+ "people "+"(people varchar(20) not null,nickname varchar(30) not null)";
			int result3 = sat.executeUpdate(sql3);
			if(result<0&&result3<0){
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
