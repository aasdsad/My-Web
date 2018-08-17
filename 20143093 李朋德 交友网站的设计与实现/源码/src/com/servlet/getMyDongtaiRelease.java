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

public class getMyDongtaiRelease extends HttpServlet {

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
		String state_key="state";
		String state_value="r";
		System.out.println(name);
		String nickname_key="nickname";
		String nickname_value=name;
		String time_key="time";
		String time_value=" ";
		try{     
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sta= con.createStatement();
		    //获取我的动态
            state_value="d";
            String sql2="select *from user"+name+"dongtairelease";
  			ResultSet result2= sta.executeQuery(sql2);
  			JSONArray jsonData = JSONArray.fromObject(convertList(result2,list));
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
		private static List convertList1(ResultSet rs,List list,String state_key,String state_value,String nickname_key,String nickname_value,String time_key,String time_value) throws SQLException {
			ResultSetMetaData md = rs.getMetaData();
			int columnCount = md.getColumnCount();
			while (rs.next()) {
			    Map rowData = new HashMap();
			    for (int i = 1; i <= columnCount; i++) {
			        rowData.put(md.getColumnName(i), rs.getObject(i));
			    }
			    rowData.put(state_key, state_value);
			    rowData.put(nickname_key,nickname_value);
			    rowData.put(time_key, time_value);
			    list.add(rowData);
			}
			return list;
		}
}
