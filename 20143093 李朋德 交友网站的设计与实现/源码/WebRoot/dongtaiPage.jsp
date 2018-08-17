<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homePage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css"><!--
		.ibox-content1 {
		    clear: both;
		}
		.ibox-content1 {
		    background-color: #fff;
		    color: inherit;
		    padding: 15px 20px 20px;
		    border-color: #e7eaec;
		    -webkit-border-image: none;
		    -o-border-image: none;
		    border-image: none;
		    border-style: solid solid none;
		    border-width: 1px 0;
		    left: 326px;
		    position: relative;
		    top: 70px;
		}
		.feed-element, .media-body {
		    overflow: hidden;
		}
		.media-body, .sidebard-panel .feed-element, .sidebard-panel p {
		    font-size: 12px;
		}
		.media-body {
		    display: block;
		    width: auto;
		}
		.pull-right {
		    float: right!important;
		}
		.small, small {
		    font-size: 85%;
		}
		b, strong {
		    font-weight: 700;
		}
		.text-muted {
		    color: #888;
		}
		.feed-element .well {
		    border: 1px solid #e7eaec;
		    box-shadow: none;
		    margin-top: 10px;
		    margin-bottom: 5px;
		    padding: 10px 20px;
		    font-size: 11px;
		    line-height: 16px;
		}
		.well {
		    min-height: 20px;
		    padding: 19px;
		    margin-bottom: 20px;
		    background-color: #f5f5f5;
		    border: 1px solid #e3e3e3;
		    border-radius: 4px;
		    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
		    box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
		}
		.float-e-margins .btn {
		    margin-bottom: 5px;
		}
		.btn-white {
		    color: inherit;
		    background: #fff;
		    border: 1px solid #e7eaec;
		}
		.btn {
		    border-radius: 3px;
		}
		.btn-group-xs>.btn, .btn-xs {
		    padding: 1px 5px;
		    font-size: 12px;
		    line-height: 1.5;
		    border-radius: 3px;
		}
		.float-e-margins .btn {
		    margin-bottom: 5px;
		}
		.btn-white {
		    color: inherit;
		    background: #fff;
		    border: 1px solid #e7eaec;
		}
		.btn {
		    border-radius: 3px;
		}
		.btn-group-xs>.btn, .btn-xs {
		    padding: 1px 5px;
		    font-size: 12px;
		    line-height: 1.5;
		    border-radius: 3px;
		}
		.btn {
		    display: inline-block;
		    padding: 6px 12px;
		    margin-bottom: 0;
		    font-size: 14px;
		    font-weight: 400;
		    line-height: 1.42857143;
		    text-align: center;
		    white-space: nowrap;
		    vertical-align: middle;
		    -ms-touch-action: manipulation;
		    touch-action: manipulation;
		    cursor: pointer;
		    -webkit-user-select: none;
		    -moz-user-select: none;
		    -ms-user-select: none;
		    user-select: none;
		    background-image: none;
		    border: 1px solid transparent;
		    border-radius: 4px;
		}
		.float-e-margins .btn {
		    margin-bottom: 5px;
		}
		.btn-primary {
		    background-color: #1ab394;
		    border-color: #1ab394;
		    color: #FFF;
		}
		.btn {
		    border-radius: 3px;
		}
		.feed-element img.img-circle {
		    width: 38px;
		    height: 38px;
		}
		.img-circle {
		    border-radius: 50%;
		}
		.img-circle {
		    border-radius: 50%;
		}
		.img-circle {
		    border-radius: 50%;
		}
		img {
		    vertical-align: middle;
		}
		img {
		    border: 0;
		}
				.feed-activity-list .feed-element {
		    border-bottom: 1px solid #e7eaec;
		}
		.feed-element, .media-body {
		    overflow: hidden;
		}
		.feed-element, .feed-element .media {
		    margin-top: 15px;
		}
		.feed-element {
		    padding-bottom: 15px;
		}
		.feed-element input{
		    width: 618px;
		    position: relative;
		    margin-bottom: 6px;
		}
		.dongtai-huifu{
			position: relative;
		    left: 76px;
		    width: 543px;
		}
		.input65{
			display:none;
		}
		.dongtai-huifu-all{
			display:none;
		}
	</style>
 <script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
 <script src="./js/carousel.js"></script>
  <script src="./js/dongtaikuangComponent.js" charset="utf-8"></script>
  <link rel="stylesheet" type="text/css" href="./css/dongtaiPageCss.css">
  <link rel="stylesheet" type="text/css" href="./css/dongtaikuangCss.css">
  <script src="./js/getUrlArgs.js"></script>
  </head>
  
  <body>
		<div class="texContent dongtai-wInput">
			<input type="text" class="tex"  style="color:#cccccc;font-size:30px" placeholder="来跟朋友们说点什么吧" "></input> 
			<button id="dongtai-releaseBtn">发表</button>
		</div>
		<div class="dongtaikaung" style="width: 700px;">
			<div class="ibox-content1">
				<div class="feed-element">
                      <a href="profile.html#" class="pull-left">
                            <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                       </a>
                      <div class="media-body ">
                      		<small class="pull-right">2小时前</small>
                        	<strong>作家崔成浩</strong> 抽奖中了20万 <br>
                        	<small class="text-muted">今天 09:27 来自 Koryolink iPhone</small>
                       		<div class="well dongtai-releaseT">
                                        抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？
                       		</div>
                        	<div class="well dongtai-huifu-all">
                        		<div class="well">
	                     			<span>好蓝</span><span> 回复：  </span></span><span>抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？</span>
	                			</div>
	                		</div>
                     		<div class="input65">
                    			<input type="text"  />
                   			 </div>
                             <div class="pull-right">
                                        <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞</a>
                                        <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                        <a class="btn btn-xs btn-primary btn-65"><i class="fa fa-pencil"></i> 评论</a>
                             </div>
                        </div>
                  </div>
                  <div class="feed-element">
                        <a href="profile.html#" class="pull-left">
                                    <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                        </a>
                        <div class="media-body ">
                            <small class="pull-right">2小时前</small>
                            <strong>作家崔成浩</strong> 抽奖中了20万 <br>
                            <small class="text-muted">今天 09:27 来自 Koryolink iPhone</small>
                            <div class="well dongtai-releaseT">
                                        抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？
                            </div>
                            <div class="well dongtai-huifu-all">
                                <div class="well">
	                    				 	<span>好蓝</span><span> 回复：  </span></span><span>抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？</span>
	                			</div>
	                		</div>
                    		<div class="input65">
                    			<input type="text" />
                    		</div>
                            <div class="pull-right">
                                  <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞</a>
                                  <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                  <a class="btn btn-xs btn-primary btn-65"><i class="fa fa-pencil"></i> 评论</a>
                            </div>
                        </div>
                   </div>
               </div>
		</div>
	<script>
		$("#dongtai-releaseBtn").on("click",function(){
			var releaseVal=$(".dongtai-wInput input").val();
			console.log(releaseVal);
			$.ajax({
		    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		    		        type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "dongtaiRelease", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":getUserName(),
		    		        	"releaseVal":releaseVal
		    		        }, 
		    		        success : function(Result)
		    		        {
		    		        	console.log("发表成功");
		    		        },
		    		        error : function(xhr, status, errMsg)
		    		        {
		    		             alert("数据传输失败!");
		    		        }
		    	   		 });
		});
		var data=[
				{
					name:'张三',text:'月下飞天镜，云生结海楼。仍怜故乡水，万里送行舟。',huifu:{
							name:'李四',text:'文采飞扬'
					}
				},
				{name:'李白',text:'请君试问东流水，别意与之谁短长'},
				{name:'杜甫',text:'安得广厦千万间，大庇天下寒士俱欢颜'},
				{}
			];
		//dongtaiDiv(data,".dongtaikaung");
	</script>
  </body>
</html>
