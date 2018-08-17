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

<title>My JSP 'RegisterForm.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	td{
		text-align:right;
	}
</style>
</head>

<body style="background:url(./images/wood.jpg);">
	<jsp:include page="Header.jsp"></jsp:include>
	<div style="height:12%;"></div>
	<h3 align="center">用户注册：</h3>
	<center>
		<form action="Register" method="post" onsubmit="check();">
			<table>
				<tr>
					<td>登录名称：</td>
					<td><input type="text" name="name1" />
					</td>
				</tr>
				<tr>
					<td>登录密码：</td>
					<td><input type="password" name="psw1" id="upsw" />
					</td>
				</tr>
				<tr>
					<td>密码确认：</td>
					<td><input type="password" name="repeat1" id="urepeat" />
					</td>
				</tr>
				<tr>
					<td>安全邮箱：</td>
					<td><input type="text" name="mail" id="mail"/>
					</td>
				</tr>
				<tr>
					<td>安全码：</td>
					<td><input type="text" name="safecode" />
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" style="text-align:center;"><input type="submit" value="注册" />
						<input type="reset" value="重填">
					</td>
				</tr>
			</table>
		</form>
	</center>
	<script><!--
	function check() {
		var psw = document.getElementById("upsw");
		var repsw = document.getElementById("urepeat");
		var objName =document.getElementById("mail");
		var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  
		if (psw.value != repsw.value) {
			alert("两次密码输入不一致！");
			return;
		}
		console.log(!pattern.test(objName.value));
		 /*if (!pattern.test(objName.value)) {  
		 		objName.focus();
		        alert("请输入正确的邮箱地址。");  
		        return false;  
    	}  */
	}
	</script>
	<div style="height:12%;"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
