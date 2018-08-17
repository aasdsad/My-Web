package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/xixi_sql","root","root");
			Statement sat = con.createStatement();
			Statement satt = con.createStatement();
			String name = request.getParameter("name1");
			String psw = request.getParameter("psw1");
			String psw2 = request.getParameter("repeat1");
			String mail = request.getParameter("mail");
			String safecode = request.getParameter("safecode");
			String nickname = "�û�"+name;
			String professional = "δ֪";
			String age ="1";
			String sex = "m";
			String nationality = "�й��Ϻ�";
			String signature ="�����ǿգ���̤ʵ�ء�";
/*			String nickname = request.getParameter("nickname");
			String professional = request.getParameter("professional");
			String age = request.getParameter("age");
			String sex = request.getParameter("sex");
			String nationality = request.getParameter("nationality");
			String signature = request.getParameter("signature");
			System.out.println("sad");*/
			String sqll="select username from users";
			String[] s = new String[1000];
			int i=0;
			ResultSet rst=satt.executeQuery(sqll);
			if(rst.next()==true){
				s[i]=rst.getString("username");
				i++;
			}
			if(Arrays.asList(s).contains(name)==true){
				out.print("<h3>�˺��Ѵ��ڣ�</h3><br>");
			    out.print("<a href='RegisterForm.jsp'>������ע��...</a><br>");
			}
			if(psw.equals(psw2)&&Arrays.asList(s).contains(name)==false){
				//�û����û����ϱ��õ���������»��,�ɸ봫����ֶ������ݿⴴ��
				//���û��������û���
				String sqlq="insert into users (username,userpsw,mail,safecode) values('"+name+"','"+psw+"','"+mail+"','"+safecode+"')";
				System.out.println(sqlq);
				int result = sat.executeUpdate(sqlq);
			    
			    //���û����ֶβ����û����ϱ�,Ĭ��
			    String sql3="insert into user_information (name,nickname,sex,age,nationality,signature,professional) values('"+name+"','"+nickname+"','"+sex+"','"+age+"','"+nationality+"','"+signature+"','"+professional+"')";
			    //�����û��ĺ��ѱ�
			    String sql="create table"+" user"+name+ "friend "+"(friend varchar(20) not null primary key,notename varchar(15) not null,addtime varchar(20) not null,state varchar(40) not null)";
			    //�����û��ĺ��������
			    String sql2="create table"+" user"+name+ "addfriendrequest "+"(requestname varchar(20) not null,response varchar(10) not null,requesttime varchar(20) not null,nickname varchar(30) not null)";
			    //�����û��Ķ�̬��
			    String sql4="create table"+" user"+name+ "dongtairelease "+"(content varchar(1000) not null,releasetime varchar(20) not null,id varchar(10) not null)";
			    sat.executeUpdate(sql3);
			    sat.executeUpdate(sql4);
			    System.out.println(sql3);
			    System.out.println(sql4);
			    int result2 = sat.executeUpdate(sql);
			    result2 =result2+ sat.executeUpdate(sql2);
			    //int result2 = sat.executeUpdate("create table user11 (id int not null primary key,name varchar(80) not null)");
			    if(result>0){
			    	String url="information.jsp?username="+name;
			    	//request.getRequestDispatcher(url).forward(request, response);
			    	//out.print("<body style='background:url(./images/wood.jpg);'>");
			 	    out.print("<div style='margin:auto;'><h3>ע��ɹ���</h3><a href='"+url+"'>����ȥ��������</a><br>");
				    out.print("<a href='loginPage.jsp'>���ˣ�ֱ�ӵ�¼</a><br>");
				    //out.print("</div></body>");
			   }else{
				   	//out.print("<body style='background:url(./images/wood.jpg);'>");
				    out.print("<h3>ע��ʧ�ܣ�</h3><br>");
				    out.print("<a href='RegisterForm.jsp'>������ע��...</a><br>");
				    //out.print("</body>");
			   }
			   con.close();
			}else{
			    out.print("<h3>������������벻һ�£�</h3><br>");
			    out.print("<a href='RegisterForm.jsp'>������ע��...</a><br>");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
