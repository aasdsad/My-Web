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

public class getXixiPageInfo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String[] s = new String[100];
		s[0]=name;
		int counter=1;
        try{     
        	Class.forName("com.mysql.jdbc.Driver");
  			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
  			Statement sta= con.createStatement();
  			//�ҵ����ѵ��˺ţ��������Ǳ��浽������
  			String sql="select *from user"+name+"friend";
  			ResultSet result= sta.executeQuery(sql);
  			if(result.next()==true)
  			{
  				s[counter]=result.getString("friend");
  				counter++;
  			}
  			//
  			String sql1="select * from user_information";
  			ResultSet result1= sta.executeQuery(sql1);
  			System.out.println(s[0]);
            JSONArray jsonData = JSONArray.fromObject(convertList(result1,s));      //��ת��List��ʽ����ת��json��ʽ
            System.out.println(jsonData.toString());
            PrintWriter out = response.getWriter();    //��json���ݴ��ݵ�ǰ�ˣ�����ǰ����ajax����
            out.print(jsonData);
        }catch (ClassNotFoundException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		} catch (SQLException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
	}
	private static List convertList(ResultSet rs ,String s[]) throws SQLException {
        List list = new ArrayList();
        ResultSetMetaData md = rs.getMetaData();
        int columnCount = md.getColumnCount();
        while (rs.next()) {
            Map rowData = new HashMap();
            if(Arrays.asList(s).contains(rs.getString("name"))==false){
	            for (int i = 1; i <= columnCount; i++) {
	                rowData.put(md.getColumnName(i), rs.getObject(i));
	            }
	            list.add(rowData);
            }
        }
        return list;
    }
}
