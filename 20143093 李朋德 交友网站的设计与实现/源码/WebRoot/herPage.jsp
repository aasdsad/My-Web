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
	                    <div class="alterIn">
	                    	<span>添加为好友</span>
	                    </div>
	                </div>
	                <div>
	                    <div class="ibox-content no-padding border-left-right">
	                        <img alt="image" class="img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/profile_big.jpg">           
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
	            		<div>
		            		<h1 >他的动态</h1>
		            		<hr>
	            		</div>
	            	</div>
	            	<div class="wordBody">
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
                     		
                        </div>
                        
                  </div>
	            	</div>
	        </div>
	        <
	    </div>
	    <
    </div>
        <script type="text/javascript">
        	function dongtaiInit(data,index){
				var divF='<div class="feed-element">';
			    var div0='<a href="profile.html#" class="pull-left">';
			    var div1='<img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">'
			    var div2='</a>';
			    var div3='<div class="media-body ">';
			    var div4='<small class="pull-right"></small>';
			    var div5='<strong id="huifu_name'+index+'">'+data.nickname+'</strong> 交友达人 <br>';
			    var div6='<small class="text-muted">'+data.releasetime+' 来自 Koryolink iPhone</small>';
			    var div7='<div class="well dongtai-releaseT">'+data.content+'</div>';
			    var divE='</div>';
			    var divLine=divF+div0+div1+div2+div3+div4+div5+div6+div7+divE;
			    $(".wordBody").append($(divLine));
			   
			}
			window.onload=function(){
				var arg=getArgs();
				$.ajax({//看是否自己的好友
			        type : "post",      
			        url : "isFriend", 
			        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
			        data :
			        { 
						"name1":arg.hername,
						"name2":arg.myname
						
			        }, 
			        success : function(Result)
			        {
			        	console.log(Result);
			        	if(Result=="y"){
			        		$(".alterIn").remove();
			        	}
			        },
			        error : function(xhr, status, errMsg)
			        {
			             alert("数据传输失败!");
			        }
				});
				$.ajax({
					    		       
					    		        type : "post",      
					    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
					    		        url : "getMyInformation", 
					    		        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
					    		        data :
					    		        { 
					    		        	"name":arg.hername
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
        	
				$.ajax({//动态初始化
			        type : "post",      
			        url : "getThisRelease", 
			        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
			        data :
			        { 
						"name":arg.hername
			        }, 
			        success : function(Result)
			        {
			        	console.log(Result);
			        	$(".wordBody").empty();
			        	if(Result.length){
				        	Result.sort(function(a,b){
				        	    return Date.parse(b.releasetime) - Date.parse(a.releasetime);//时间正序
				        	});
				        	var l=Result.length>5?5:Result.length;
				        	for(var i=0;i<Result.length;i++)
				        	{
				        		dongtaiInit(Result[i],i);
				        	}
			        	}else{
			        		var tempDom="<h2>该用户暂无动态</h2>";
			        		$(".wordBody").append($(tempDom));
			        	}
			        },
			        error : function(xhr, status, errMsg)
			        {
			             alert("数据传输失败!");
			        }
				});
			}
			$(".alterIn").on("click",function(){
				var arg=getArgs();
				$.ajax({
		    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		    		        type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "addFriend2", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":arg.myname,
		    		        	"friendName":arg.hername
		    		        }, 
		    		        success : function(Result)
		    		        {
		    		        	
		    		        	alert("已发送请求，等待对方回应。");
		    		        	
		    		        },
		    		        error : function(xhr, status, errMsg)
		    		        {
		    		             alert("数据传输失败!");
		    		        }
		    	   		 });
			})
        </script>
		
  </body>
</html>
