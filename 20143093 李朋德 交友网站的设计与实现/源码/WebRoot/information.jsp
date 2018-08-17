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
	<div style="height:10%;"></div>
	<h3 align="center">请完善资料：</h3>
	<center>
		<form action="Register" method="post" onsubmit="check();">
			<table>
				<tr>
					<td>昵称：</td>
					<td><input type="text" id="nickname" />
					</td>
				</tr>
				<tr>
					<td>性别：</td>
					<td align="center"><input type='radio' name='alsex' value='m' checked>男<input type='radio' name='alsex' value='f'>女</td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type="text" id="age" />
					</td>
				</tr>
				<tr>
					<td>职业：</td>
					<td><input type="text" id="professional" />
					</td>
				</tr>
				<tr>
					<td>所在地：</td>
					<td><input type="text" id="nationality" />
					</td>
				</tr>
				<tr>
					<td>个人介绍：</td>
					<td><input type="text" id="signature" />
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
		var sexVal=$('input:radio[name="alsex"]:checked').val();
        var nickName=$("#nickname").val();
       	var age=$("#age").val();
        var nationality=$("#nationality").val();
        var signature=$("#signature").val();
        var professional=$("#professional").val();
        $.ajax({
        					type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "alterIn", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":getUserName(),
		    		        	"nickName":nickName,
		    		        	"sex":sexVal,
		    		        	"age":age,
		    		        	"nationality":nationality,
		    		        	"signature":signature,
		    		        	"professional":professional
		    		        }, 
		    		        success : function(Result)
		    		        {
		    		        	if(Result=="y")
		    		        	{
		    		        		alert("设置成功!");
		    		        		window.location.href="loginPage.jsp";
		    		        	}else{
		    		        		alert("因数据库问题修改失败");
		    		        	}
		    		        },
		    		        error : function(xhr, status, errMsg)
		    		        {
		    		             alert("数据传输失败!");
		    		        }
		   });
	})
	function check() {
		var psw = document.getElementById("upsw");
		var repsw = document.getElementById("urepeat");
		if (psw.value != repsw.value) {
			alert("两次密码输入不一致！");
			return;
		}
	}
</script>
	<div style="height:12%;"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
