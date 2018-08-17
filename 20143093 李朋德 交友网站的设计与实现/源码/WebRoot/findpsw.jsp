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
 <script src="./js/getUrlArgs.js"></script>
 <script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
</head>

<body style="background:url(./images/wood.jpg);">
	<jsp:include page="Header.jsp"></jsp:include>
	<div style="height:12%;"></div>
	<h4 align="center">找回密码：</h4>
	<center>
		<form action="Register" method="post" onsubmit="check();">
			<table>
				<tr>
					<td>账号：</td>
					<td><input type="text" id="username" />
					</td>
				</tr>
				<tr>
					<td>安全码：</td>
					<td><input type="text" id="safecode" />
					</td>
				</tr>
				
				<tr>
					<td align="center" colspan="2" style="text-align:center;"><input type="button" id="ok" value="确定" />
						<input type="reset" value="重填">
					</td>
				</tr>
			</table>
		</form>
	</center>
	<script>
	$("#ok").on("click",function(){
		var username=$("#username").val();
        var safecode=$("#safecode").val();
        if(check()==true){
	        $.ajax({
	        	type : "post",      
			    url : "getMyPsw", 
			    dataType : "text", 
			   	data :
			    { 
			    	"username":username,
			    	"safecode":safecode
			   }, 
			 	success : function(Result)
			 	 {
			  		 if(Result=="n")
			    	{
			    		alert("此账户不存在!");
			    	}else if(Result=="c"){
			    		alert("安全码不正确");
			    	}else{
			    		alert("您的密码为："+Result);
			    	}
				 },
				 error : function(xhr, status, errMsg)
			 	{
			   	 	alert("数据传输失败!");
			 	}
			});
		}
	})
	function check() {
		var username = document.getElementById("username");
		var safecode = document.getElementById("safecode");
		if (username.value=="" || safecode.value=="") {
			alert("不能为空！");
			return false;
		}else{
			return true;
		}
	}
</script>
<div style="height:12%;"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
