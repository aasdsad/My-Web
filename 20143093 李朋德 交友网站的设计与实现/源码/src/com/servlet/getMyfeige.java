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

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import net.sf.json.*;
import net.sf.json.util.*;

public class getMyfeige extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String nickname_key="nickname";
		String nickname_value=name;
        try{     
        	Class.forName("com.mysql.jdbc.Driver");
  			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
  			Statement sta= con.createStatement();
  			Statement sat= con.createStatement();
  			String sql="select *from feige where postname="+name;
  			ResultSet result= sta.executeQuery(sql);
  			if(result.next() == true){
				nickname_value=result.getString("name");
			}
  			//找到这个人的昵称
  			String sql2="select *from user_information where name="+nickname_value;
  			ResultSet result2= sat.executeQuery(sql2);
  			if(result2.next() == true){
				nickname_value=result2.getString("nickname");
			}
  			result= sta.executeQuery(sql);
            JSONArray jsonData = JSONArray.fromObject(convertList(result,nickname_key,nickname_value));      //先转成List格式，再转成json格式
            System.out.println(jsonData.toString());
            PrintWriter out = response.getWriter();    //把json数据传递到前端，记着前端用ajax接收
            out.print(jsonData);
        }catch (ClassNotFoundException e) {
        
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		} catch (SQLException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
	}
	private static List convertList(ResultSet rs,String nickname_key,String nickname_value) throws SQLException {
        List list = new ArrayList();
        ResultSetMetaData md = rs.getMetaData();
        int columnCount = md.getColumnCount();
        while (rs.next()) {
            Map rowData = new HashMap();
            for (int i = 1; i <= columnCount; i++) {
                rowData.put(md.getColumnName(i), rs.getObject(i));
            }
            list.add(rowData);
            rowData.put(nickname_key,nickname_value);
        }
        return list;
    }

}
