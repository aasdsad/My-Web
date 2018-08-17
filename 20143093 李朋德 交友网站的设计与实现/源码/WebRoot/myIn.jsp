<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myIn.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/myInCss.css">
	<script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
	<script src="./js/getUrlArgs.js"></script>
	<script src="./js/myInInit.js"></script>
	<script src="./js/myInAjax.js"></script>
  </head>
  
  <body>
  <jsp:include page="Header.jsp"></jsp:include>
 	<div class="gray-bg">
		<div class="wrapper-content">
	        <div class="col-sm-4 row" >
	            <div class="ibox float-e-margins" >
	                <div class="ibox-title">
	                    <h1>个人资料</h1>
	                    <div>
	                    	<span class="alterIn">修改资料</span>
	                    	<span>  </span>
	                    	<span class="alterPsw">修改密码</span>
	                    </div>
	                </div>
	                <div>
	                    <div class="ibox-content no-padding border-left-right">
	                        <img alt="image" class="img-responsive" src="./images/9.jpg">           
	                   </div>
	                    <div class="ibox-content profile-content">
	                        <h4><strong id="nickname1">Beaut-zihan</strong></h4>
	                        <p ><span id="sex1">nan</span><span id="age1">18</span><span id="nationality1">chinese</span></p>
	                        <h5>关于我 </h5>
	                        <p id="signature1">
	                            会点前端技术，div+css啊，jQuery之类的，不是很精；热爱生活，热爱互联网，热爱新技术；有一个小的团队，在不断的寻求新的突破。 </p>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="col-sm-8 wordApplet">
	            	<div class="top">
	            		<div class="topspan">
		            		<span class="feigehaha1">飞鸽传书</span>
		            		<span class="haoyouhaha1">好友请求</span>
		            		<span class="dongtaihaha1">我的动态</span>
	            		</div>
	            	</div>
	            	<hr/>
	            	<div class="wordBody">
	            		<div class="feigehaha"></div>
	            		<div class="haoyouhaha"></div>
	            		<div class="dongtaihaha"></div>
	            	</div>
	        </div>
	    </div>
    </div>
        <script type="text/javascript">
        	var name=getUserName();
        	inInit();
        	$(".feigehaha").hide();
			$(".haoyouhaha").hide();
			$(".dongtaihaha").show();
        	window.onload=function(){
        		$.ajax({
					    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
					    		        type : "post",      
					    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
					    		        url : "getMyInformation", 
					    		        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
					    		        data :
					    		        { 
					    		        	"name":name
					    		        }, 
					    		        success : function(data)
					    		        {
					    		        	console.log(data);
					    		        	$("#nickname1").text(data[0].nickname);
					    		     		if(data[0].sex=='m'){
					    		        		$("#sex1").text("男");
					    		        	}else{
					    		        		$("#sex1").text("女");
					    		        	}
					    		        	$("#age1").text(data[0].age);
					    		        	$("#nationality1").text(data[0].nationality);
					    		        	$("#signature1").text(data[0].signature);
					    		        },
					    		        error : function(xhr, status, errMsg)
					    		        {
					    		             alert("数据传输失败!");
					    		        }
					    	   		 });
        	}
        	$(".alterIn").on("click",function () {
        		var over="<div class='overlay'></div>";
        		var tableFr="<div class='wrapper'><div><span>x</span></div><h1>修改资料</h1><form><table>";
        		var tr0="<tr><td>昵称</td><td><input type='text' id='nickname'></td></tr>";
        		var tr1="<tr><td>性别</td><td><input type='radio' name='alsex' value='m' checked>男<input type='radio' name='alsex' value='f'>女</td></tr>";
        		var tr2="<tr><td>年龄</td><td><input type='text' id='age'></td></tr>";
        		var tr3="<tr><td>所在地</td><td><input type='text' id='nation'></td></tr>";
        		var tr4="<tr><td>职业</td><td><input type='text' id='professional'></td></tr>";
        		var tr5="<tr><td>个人简介</td><td><input type='text' id='signature'></td></tr>";
        		var tr6="<tr><td align='center' colspan='2'><input type='button' value='提交' id='dd'><input type='reset' value='重置'></td></tr>";
        		var tableLt="</table></form></div>";
        		var content=tableFr+tr0+tr1+tr2+tr3+tr4+tr5+tr6+tableLt;
        		$("body").append($(over)).append($(content));
        		$(".wrapper span").on("click",function(){
        			$(".wrapper").remove();
        			$(".overlay").remove();
        		})
        		$("#dd").on("click",function(){
        			
        			var sexVal=$('input:radio[name="alsex"]:checked').val();
        			var nickName=$("#nickname").val();
        			var age=$("#age").val();
        			var nationality=$("#nation").val();
        			var signature=$("#signature").val();
        			var professional=$("#professional").val();
		            $.ajax({
		    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		    		        type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "alterIn", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":name,
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
		    		        		alert("感谢您的使用，用户资料修改成功");
		    		        		$.ajax({
					    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
					    		        type : "post",      
					    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
					    		        url : "getMyInformation", 
					    		        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
					    		        data :
					    		        { 
					    		        	"name":name
					    		        }, 
					    		        success : function(data)
					    		        {
					    		        	console.log(data);
					    		        	$("#name1").text(data[0].nickname);
					    		     		if(data[0].sex=='m'){
					    		        		$("#sex1").text("男");
					    		        	}else{
					    		        		$("#sex1").text("女");
					    		        	}
					    		        	$("#age1").text(data[0].age);
					    		        	$("#nationality1").text(data[0].nationality);
					    		        	$("#signature1").text(data[0].signature);
					    		        },
					    		        error : function(xhr, status, errMsg)
					    		        {
					    		             alert("数据传输失败!");
					    		        }
					    	   		 });
		    		        		$(".wrapper").remove();
        							$(".overlay").remove();
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
        	});
        	$(".alterPsw").on("click",function () {
        		var over="<div class='overlay'></div>";
        		var tableFr="<div class='wrapper'><div><span>x</span></div><h1>修改密码</h1><form><table>";
        		var tr1="<tr><td>旧密码</td><td><input type='text' id='psw'></td></tr>";
        		var tr2="<tr><td>新密码</td><td><input type='text' id='newpsw'></td></tr>";
        		var tr3="<tr><td>新密码</td><td><input type='text' id='newpsw1'></td></tr>";
        		var tr6="<tr><td align='center' colspan='2'><input type='button' value='提交' id='dd'><input type='reset' value='重置'></td></tr>";
        		var tableLt="</table></form></div>";
        		var content=tableFr+tr1+tr2+tr3+tr6+tableLt;
        		$("body").append($(over)).append($(content));
        		$(".wrapper span").on("click",function(){
        			$(".wrapper").remove();
        			$(".overlay").remove();
        		})
        		$("#dd").on("click",function(){
        			var psw=$("#psw").val();
        			var newpsw=$("#newpsw").val();
        			var newpsw1=$("#newpsw1").val();
       				if(newpsw==newpsw1){
			            $.ajax({
			    		        type : "post",      
			    		        url : "alterPsw", 
			    		        dataType : "text", 
			    		        data :
			    		        { 
			    		        	"name":name,
			    		        	"psw":psw,
			    		        	"newpsw":newpsw
			    		        }, 
			    		        success : function(Result)
			    		        {
			    		        	if(Result=="y")
			    		        	{
			    		        		alert("感谢您的使用，密码修改成功");
			    		        		$(".wrapper").remove();
	        							$(".overlay").remove();
			    		        	}else if(Result=="n"){
			    		        		alert("密码错误！");
			    		        	}else{
			    		        		alert("未知错误");
			    		        	}
			    		        	
			    		        },
			    		        error : function(xhr, status, errMsg)
			    		        {
			    		             alert("数据传输失败!");
			    		        }
			    	   	});
			    	}else{
			    		alert("两次输入的新密码不一致!")
			    	}
        		})
        	});
        	$(function(){
				$(".feigehaha1").on("click",function(){
					$(".feigehaha").show();
					$(".haoyouhaha").hide();
					$(".dongtaihaha").hide();
				})
				$(".haoyouhaha1").on("click",function(){
					$(".haoyouhaha").show();
					$(".feigehaha").hide();
					$(".dongtaihaha").hide();
				})
				$(".dongtaihaha1").on("click",function(){
					$(".feigehaha").hide();
					$(".haoyouhaha").hide();
					$(".dongtaihaha").show();
				})
			})
        </script>

  </body>
</html>
