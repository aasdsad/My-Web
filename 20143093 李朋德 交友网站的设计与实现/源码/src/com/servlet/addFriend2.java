package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

public class addFriend2 extends HttpServlet {

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
		
		String a="Y";
		String nickname=null;
		try {
			/*response.getWriter().write(a);
			PrintWriter out = response.getWriter();
			out.print(a);*/
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			Date createtime = new Date();
		    DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    String time = format.format(createtime);
		    String sqlc="select nickname from user_information where name="+name;
  			ResultSet resultc= sta.executeQuery(sqlc);
  			System.out.println("haha");
  			if(resultc.next() == true){
				nickname=resultc.getString("nickname");
			}
			String sql="insert into user"+friendName+"addfriendrequest (requestname,response,requesttime,nickname) values('"+name+"','"+"z"+"','"+time+"','"+nickname+"')";
			System.out.println("插入好友请求表："+sql);
			int result2 = sta.executeUpdate(sql);
			if(result2<0){
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
