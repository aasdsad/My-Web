<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ativity.jsp' starting page</title>
    
  	<link rel="icon" type="image/png" href="assets/i/favicon.png">
  	<meta name="mobile-web-app-capable" content="yes">
  	<link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">
  	<meta name="apple-mobile-web-app-capable" content="yes">
  	<meta name="apple-mobile-web-app-status-bar-style" content="black">
  	<meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  	<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  	<meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  	<meta name="msapplication-TileColor" content="#0e90d2">
  	<link rel="stylesheet" href="assets/css/amazeui.min.css">
  	<link rel="stylesheet" href="assets/css/app.css">

  </head>
  
  <body id="blog">
<header class="am-g am-g-fixed blog-fixed blog-text-center blog-header">
    <div class="am-u-sm-8 am-u-sm-centered">
        
        <h2 class="am-hide-sm-only hdm">活动：sadf</h2>
    </div>
</header>
<hr>
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-8 am-u-sm-12">

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 am-u-sm-centered blog-entry-img">
                <img src="assets/i/f10.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-12 am-u-md-12 am-u-sm-12 blog-entry-text blog-text-center">
                <span><a href="" class="blog-color cjz">创建者 &nbsp;</a></span>
                
                <span class="cjrq">创建日期</span>
                <h1><a>海内存知已，天涯若比邻</a></h1>
                <p>人生的目的在于追求幸福，幸福来源于相遇。
                </p>
                <p><a href="" class="blog-continue">continue reading</a></p>
            </div>
        </article>

        <article class="am-g blog-entry-article">
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                <img src="assets/i/f6.jpg" alt="" class="am-u-sm-12">
            </div>
            <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                <span><a  class="blog-color">article&nbsp;</a></span>
                <span>@李朋德 &nbsp;</span>
                <span>2018/05/09</span>
                <h1><a >世间所有的相遇，都是久别重逢。</a></h1>
                <p>你可以选择在原处不停地跟周遭不解的人解释你为何这么做，让他们理解你，你可以选择什么都不讲，自顾自往前走。
                </p>
                <p><a class="blog-continue">continue</a></p>
            </div>
        </article>
    </div>

    <div class="am-u-md-4 am-u-sm-12 blog-sidebar">
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>About ME</span></h2>
            <img src="assets/i/b1.jpg" alt="about me" class="blog-entry-img" >
            <p class="kssj">开始时间</p>
            <p class="ksdd">
        开始地点
            </p>
            <p class="hdsm">活动说明？</p>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-title"><span>参与者</span></h2>
            <ul class="am-list">
                <li><a href="#">每个人都有一个死角， 自己走不出来，别人也闯不进去。</a></li>
                <li><a href="#">我把最深沉的秘密放在那里。</a></li>
                <li><a href="#">你不懂我，我不怪你。</a></li>
                <li><a href="#">每个人都有一道伤口， 或深或浅，盖上布，以为不存在。</a></li>
            </ul>
        </div>
    </div>
</div>
<script src="./assets/js/jquery.min.js"></script>
<script src="./assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="./js/getUrlArgs.js"></script>
<script type="text/javascript" src="./js/activity.js"></script>
<script>
	window.onload=function(){
		ativityInit();
	}
</script>
</body>
</html>
