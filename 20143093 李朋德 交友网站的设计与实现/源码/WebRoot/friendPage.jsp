<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'friendPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/friend.css">
	<script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="./js/addFriendAjax.js"></script>
	<script type="text/javascript" src="./js/friend.js"></script>
	<script type="text/javascript" src="./js/getUrlArgs.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/dialog.css">
  </head>
  
  <body>
   <div class="friendList">
		<div>
			<h1 style="display:inline;">我的好友录</h1>
			<button class="addBut" style="float:right;">添加好友</button>
		</div>
		<div class="table-responsive">
			<table class="table table-striped table-hover friendtable">

			</table>
		</div>
	</div>
	<script type="text/javascript" src="./js/dialog.js"></script>
	<script>
		window.onload=function(){
			var name=getUserName();
			var psw=null;
			
			$.ajax({
		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		        type : "post",      
		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		        url : "getMyfriend", 
		        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
		        data :
		        { 
		        	"name":name,
		        	"psw":psw
		        }, 
		        success : function(Result)
		        {
		        	drankFriend(Result);
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
	   		 });
		}
		$(".addBut").on("click",function(){
			showDialog('添加好友', '<div style="margin-left: 81px;margin-top: 30px;"><span>请输入用户名：</span><input type="text" id="addUserName"><button id="find">查找</button></div><p style="margin-left: 81px;">查找结果：</p><p id="wu">查无此用户</p><table id="tab"><tr><td>用户名</td><td>昵称</td><td></td></tr></table>', true, function(){
					alert(1234);
				});
		})
	</script>
  </body>
</html>
