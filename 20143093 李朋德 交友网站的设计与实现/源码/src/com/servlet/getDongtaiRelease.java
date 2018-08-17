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

public class getDongtaiRelease extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		List list = new ArrayList();
		String name_key="username";
		String name_value=name;
		String nickname_key="nickname";
		String nickname_value=name;
        try{
        	
        	Class.forName("com.mysql.jdbc.Driver");
  			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
  			Statement sta= con.createStatement();
  			Statement sta3= con.createStatement();
  			//把所有好友的账户名拿出来
  			String sql1="select *from user"+name+"friend";
  			ResultSet result1= sta.executeQuery(sql1);
  			//把自己的动态先加入list中
  			String sqlc="select nickname from user_information where name="+name;
  			ResultSet resultc= sta3.executeQuery(sqlc);
  			if(resultc.next() == true){
				nickname_value=resultc.getString("nickname");
			}
  			
  			String sql2="select *from user"+name+"dongtairelease";
  			ResultSet result2= sta3.executeQuery(sql2);
            JSONArray jsonData1 = JSONArray.fromObject(convertList(result2,list,name_key,name_value,nickname_key,nickname_value));
            
            if(result1.next() == true){
            	name_value=result1.getString("friend");
            	String sqlo="select nickname from user_information where name="+name_value;
      			ResultSet resulto= sta3.executeQuery(sqlo);
      			if(resulto.next() == true){
    				nickname_value=resulto.getString("nickname");
    			}
            	String sql3="select *from user"+name_value+"dongtairelease";
            	ResultSet result3= sta3.executeQuery(sql3);
            	jsonData1 = JSONArray.fromObject(convertList(result3,list,name_key,name_value,nickname_key,nickname_value));
		    }
            
           /* System.out.println(jsonData2.toString());*/
            PrintWriter out = response.getWriter();  
            
            out.print(jsonData1);
        }catch (ClassNotFoundException e) {
        
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		} catch (SQLException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
	}
	private static List convertList(ResultSet rs,List list,String name_key,String name_value,String nickname_key,String nickname_value) throws SQLException {
        ResultSetMetaData md = rs.getMetaData();
        int columnCount = md.getColumnCount();
        while (rs.next()) {
            Map rowData = new HashMap();
            for (int i = 1; i <= columnCount; i++) {
                rowData.put(md.getColumnName(i), rs.getObject(i));
            }
            rowData.put(name_key, name_value);
            rowData.put(nickname_key,nickname_value);
            list.add(rowData);
        }
        return list;
    }

}
