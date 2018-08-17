package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

public class getFRes extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
doPost(request,response);
}

public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		List list = new ArrayList();
		try{     
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
			//获取我的好友请求列表
			String sql="select *from user"+name+"addfriendrequest where response='z'";
			System.out.println(sql);
			ResultSet result= sta.executeQuery(sql);
		    JSONArray jsonData = JSONArray.fromObject(convertList(result,list));      //先转成List格式，再转成json格式
		    System.out.println(jsonData.toString());
		    PrintWriter out = response.getWriter();   
		    out.print(jsonData);
		}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		private static List convertList(ResultSet rs,List list) throws SQLException {
			ResultSetMetaData md = rs.getMetaData();
			int columnCount = md.getColumnCount();
			while (rs.next()) {
			    Map rowData = new HashMap();
			    for (int i = 1; i <= columnCount; i++) {
			        rowData.put(md.getColumnName(i), rs.getObject(i));
			    }
			    list.add(rowData);
			}
			return list;
		}
}
