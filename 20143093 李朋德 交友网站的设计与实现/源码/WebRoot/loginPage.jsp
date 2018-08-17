<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
a{
	color:red;
}
</style>
</head>

<body style="background:url(./images/wood.jpg);">
	<script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		function loginResult(){
			var c=6;
			var name=$("#name").val();
			var psw=$("#upsw").val();
			console.log(name);
			console.log(psw);
			$.ajax({
		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		        type : "post",      
		        //servlet文件名为Calculator，需要提前在web.xml里面注册
		        url : "Login", 
		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		        data :
		        { 
		        	"name":name,
		        	"psw":psw
		        }, 
		        success : function(Result)
		        {
		        	if(Result=="c"){
		        		alert("账号不存在");
		        	}
		        	if(Result=="n"){
		        		alert("密码不正确");
		        	}
		        	if(Result=="y"){
		        		var url="xixiPage.jsp?username="+name;
		        		window.location.href=url;
		        	}
		               //Result为后端post函数传递来的数据，这里写结果操作代码
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
	   		 });
		}
	</script>
	<jsp:include page="Header.jsp"></jsp:include>
	<div style="height:15%;"></div>
	<h3 align="center">用户登录：</h3>

	<center>
			<table>
				<tr>
					<td>登录名称：</td>
					<td><input type="text" name="uname" id="name" /></td>
				</tr>
				<tr>
					<td>登录密码：</td>
					<td><input type="password" name="psw" id="upsw" /></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input id="login" type="submit" value="登录" />
						<input type="reset" value="重填"></td>
				</tr>
			</table>
		<div>
		  
		</div>
	</center>
	<div style="height:12%;"></div>
	 <h4 align="center"><A href="RegisterForm.jsp">注册账号</A>  <A href="findpsw.jsp">找回密码</A></h4>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
	
			var loginBut=document.getElementById("login");
			loginBut.onclick=function(){
	
				loginResult();
			}
		
	</script>
</body>
</html>
