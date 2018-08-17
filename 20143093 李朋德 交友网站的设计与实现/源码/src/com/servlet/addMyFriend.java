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

public class addMyFriend extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
doPost(request,response);
}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String friendName = request.getParameter("friendName");
		String respon=request.getParameter("respon");
		System.out.println(name);
		String a="Y";
		String state="n";
		String notename1=" ";
		String notename2=" ";
		Date createtime = new Date();
	    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String time = format.format(createtime);
		try {
			/*response.getWriter().write(a);
			PrintWriter out = response.getWriter();
			out.print(a);*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			Statement sta2= con.createStatement();
			String sqlo="select nickname from user_information where name="+friendName;
			ResultSet resulto=sta2.executeQuery(sqlo);
			if(resulto.next() == true){
				notename1=resulto.getString("nickname");
			}
			String sqlc="select nickname from user_information where name="+name;
			ResultSet resultc=sta2.executeQuery(sqlc);
			if(resultc.next() == true){
				notename2=resultc.getString("nickname");
			}
			System.out.println(notename1);
			System.out.println(notename2);
			//更新我的用户好友请求表的状态
			String sql=" update user"+name+"addfriendrequest set response='"+"y"+"' where requestname='"+friendName+"'";
			System.out.println(sql);
			//将好友添加进我的好友表
			String sql2="insert into user"+name+"friend (friend,notename,addtime,state) values('"+friendName+"','"+notename1+"','"+time+"','"+state+"')";
			//更新添加我的好友请求表的内容
			
			//将我也添加进这个好友的好友表
			String sql4="insert into user"+friendName+"friend (friend,notename,addtime,state) values('"+name+"','"+notename2+"','"+time+"','"+state+"')";
			int result1 = sta.executeUpdate(sql);
			int result2 = sta.executeUpdate(sql2);
			int result4 = sta.executeUpdate(sql4);
			if(result1<0&&result2<0&&result4<0){
		        a="N";
			}
			out.print(a);
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
