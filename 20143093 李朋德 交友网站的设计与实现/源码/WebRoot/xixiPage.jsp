<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xixiPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
  <link rel="stylesheet" type="text/css" href="./css/xixiPageCsss.css">
    <script type="text/javascript" src="./js/xiixWebInit.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/wordCss.css">
  </head>
  
  <body>
    <div class="flow">
		<div class="overPanel">
	  		<div class="top">
	  			<div class="tit">
	  				<span>首页</span><span>动态</span><span>飞鸽传书</span><span>好胆你就来</span><span>我的好友</span>
	  			</div>
	  			<div class="self">
	  				<span>个人中心</span>
	  			</div>
	  		</div>
	  		<div class="content">
	  			<div id="homePage" class="biaoji">
	  				<jsp:include page="homePage.jsp"></jsp:include>
	  			</div>
	  			<div id="dongtaiPage" class="biaoji">
	  				<jsp:include page="dongtaiPage.jsp"></jsp:include>
	  			</div>
	  			<div id="feiPage" class="biaoji">
	  				<jsp:include page="feiPage.jsp"></jsp:include>
	  			</div>
	  			<div id="haodanPage" class="biaoji">
	  				<jsp:include page="haodanPage.jsp"></jsp:include>
	  			</div>
	  			<div id="friendPage" class="biaoji">
	  				<jsp:include page="friendPage.jsp"></jsp:include>
	  			</div>
	  		</div>
	  		<table class="table-word">
                    <tbody>
                    <tr>
                        <td>
                            <button type="button" class="btn btn-danger m-r-sm">0</button>
                            系统消息
                        </td>
                        <td>
                            <button type="button" class="btn btn-primary m-r-sm">0</button>
                            好友请求
                        </td>
                        <td>
                            <button type="button" class="btn btn-info m-r-sm">0</button>
                            飞鸽传书
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" class="btn btn-info m-r-sm">0</button>
                            赞
                        </td>
                        <td>
                            <button type="button" class="btn btn-success m-r-sm">0</button>
                            评论
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger m-r-sm">0</button>
                            通知
                        </td>
                    </tr>
            
                    </tbody>
                </table>
	  	</div>
  	</div>
  	<script type="text/javascript">
  		window.onload=function(){
			init();
			friendPageInit();
  		}
  		$(function(){
  				$(".tit span").first().addClass("selected");
  				$(".content .biaoji").first().addClass("display");
				$(".tit span").on("click", function(){
					$(this).addClass("selected").siblings().removeClass("selected");
					console.log($(".content .biaoji"));
					$(".content .biaoji").eq($(this).index()).addClass('display').siblings().removeClass('display');
				});
				$(".self").on("click",function(){
					var url="myIn.jsp?username="+getUserName();
		        		window.location.href=url;
				});
				$("table-word tr td").on("click",function(){
					var url="myIn.jsp?username="+getUserName();
		        		window.location.href=url;
				})
		});
		$(".self").hover(function() {
            $(".table-word").show();
        }, function() {
            $(".table-word").hide();
        });
  	</script>
  </body>
</html>
