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

public class getThisActivity extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String nickname=""; 
		String nickname_key="nickname";
        try{     
        	Class.forName("com.mysql.jdbc.Driver");
  			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
  			Statement sta= con.createStatement();
  			Statement sat= con.createStatement();
  			String sql="select *from activity where id='"+id+"'";
  			ResultSet result= sta.executeQuery(sql);
  			if(result.next()==true){
  				nickname=result.getString("createpeople");
  			}
  			String sql1="select nickname from user_information where name='"+nickname+"'";
  			ResultSet result1= sat.executeQuery(sql1);
  			if(result1.next()==true){
  				nickname=result1.getString("nickname");
  			}
  			result= sta.executeQuery(sql);
            JSONArray jsonData = JSONArray.fromObject(convertList(result,nickname_key,nickname));      //先转成List格式，再转成json格式
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
	private static List convertList(ResultSet rs,String nickname_key,String nickname) throws SQLException {
        List list = new ArrayList();
        ResultSetMetaData md = rs.getMetaData();
        int columnCount = md.getColumnCount();
        while (rs.next()) {
            Map rowData = new HashMap();
            for (int i = 1; i <= columnCount; i++) {
                rowData.put(md.getColumnName(i), rs.getObject(i));
            }
            rowData.put(nickname_key,nickname);
            list.add(rowData);
        }
        return list;
    }

}
