<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'feiPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/feiCss.css">
	<script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
	<style type="text/css">
		.feige-leftTitle{
			background: #fff;
		    width: 20%;
		    float: left;
		}
		.chakan1,.fasong1{
			margin-left: 21%;
			display: none;
		}
		.feige-table{
			margin-left: 21%;
		}
		.feige-leftTitle ul li{
		    list-style-type: none;
		    font-zize: 50px;
		    font-size: 20px;
		    border-bottom: 1px solid #ccc;
		    padding-left: 67px;
		    padding-top: 13px;
		    padding-bottom: 10px;
		}
		.feige-leftTitle ul{
			padding:0px;
			margin:0px;
		}
		.feige-table table{
			background-color:#fff;
			width:100%;
		}
		.feige-table table tr{
			margin:0px;
			padding:0px;
		}
		.feige-table table td{
			text-align:center;
			vertical-align:middle;
			border-bottom: 1px solid #ccc;
    		padding: 22px 0 33px;
		}
		.feige-td1{
			width:20%;
		}
		.feige-td2{
			width:58%;
		}
		.feige-td3{
			width:20%
		}
		.chakan,.fasong{
			display:block;
		}
		ul li{
			cursor:pointer;
		}
	</style>
  </head>
  
  <body>
    	<div>
		<div class="feigeTop">
			<img src="./images/8.jpg" class="img-circle in-b">
		</div>
		<div class="feigeBottom">
			<div class="feige-leftTitle">
				<ul>
					<li class="chakan">查看飞鸽传书</li>
					<li class="fasong">发送飞鸽传书</li> 
				</ul>
			</div>
			<div class="feige-table">
				<table>
					<thead>
						<tr>
							<td class="feige-td1" style="font-size:25px;">发送者</td>
							<td class="feige-td2" style="font-size:25px;">主题</td>
							<td class="feige-td3" style="font-size:25px;">发送时间</td>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
			<div class="chakan1">
					<div class="mail-box-header"><!--
		                <div class="pull-right tooltip-demo">
		                    <a href="mail_compose.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="回复">
		                        <i class="fa fa-reply"></i> 回复
		                    </a>
		                    <a href="mail_detail.html#" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="打印邮件">
		                        <i class="fa fa-print"></i></a>
		                    <a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="标为垃圾邮件">
		                        <i class="fa fa-trash-o"></i></a>
		                </div>
		                --><h2>
		                    查看飞鸽传书 </h2>
	                	<div class="mail-tools tooltip-demo m-t-md">


		                    <h3>
		                        <span class="font-noraml">主题： </span>幼儿园亲子班（园中园）项目方案 </h3>
		                    <h5>
		                        <span class="pull-right font-noraml">2014年10月28日(星期二) 晚上8:20</span> <span class="font-noraml">发件人： </span>i@zi-han.net
		                    </h5>
	                	</div>
	            	</div>
	            	<div class="mail-box tt">
		            	<div class="mail-body">
	                    	<h4>尊敬的幼儿园园长朋友：</h4>
		                    <p>
		                        贝贝聪教育，因您而精彩！由于婴幼教育一体化更符合婴幼儿成长需求，是全球早教专家、心理学家普遍推崇的一种办园模式。在美国、日本、英国、意大利、新加坡等国家及我国香港、台湾等地区，幼儿园普遍开设了亲子班，美国幼儿园开亲子班的比率为87%，意大利比率为83%。香港、台湾地区分别为74%、76%。2003年3月4日，国务院办公厅转发了教育部等10部门（单位）《关于幼儿教育改革与发展的指导意见》，强调发展0－6岁婴幼儿教育。在《幼儿园教育指导纲要（试行）》中已明确指出幼儿园教育要与0-3岁教育做好衔接。北京、上海等地要求在2013年，65%的公立一级幼儿园开设亲子班或园中园。 </p>

							<hr/>
		                    <span style="float: right;color: red;">请您仔细阅读，该邮件页面关闭后将会被焚毁</span>
	               	 	</div>
	               	 </div>
			</div>
			<div class="fasong1">
				<div class="mail-box-header">
	                <!--<div class="pull-right tooltip-demo">
	                    <a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="" data-original-title="存为草稿">
	                        <i class="fa fa-pencil"></i> 存为草稿
	                    </a>
	                    <a href="mailbox.html" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="放弃">
	                        <i class="fa fa-times"></i> 放弃
	                    </a>
	                </div>
                	--><h2>发送飞鸽传书 </h2>飞鸽传书
            	</div>
            	<div class="mail-box">
            		<div class="mail-body">

	                    <form class="form-horizontal" method="get">
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">发送到：</label>

	                            <div class="col-sm-10">
	                                <input type="text" class="form-control inp-feige1" value="请输入发送者的id">
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">主题：</label>

	                            <div class="col-sm-10">
	                                <input type="text" class="form-control inp-feige2" value="">
	                            </div>
	                        </div>
	                    </form>

                	</div>
                	<div class="mail-text">
                		<div class="note-editable" contenteditable="true">
	                        <h2 class="inp-feige3">您好</h2>
	                        <p class="inp-feige4">
	                            别来无恙，甚是想念。
	                        </p>
                    	</div>
                	</div>
                	<div class="mail-body text-right tooltip-demo">
                    <a class="btn btn-sm btn-primary btn-feigepost" data-toggle="tooltip" data-placement="top" title="Send">
                        <i class="fa fa-reply"></i> 发送
                    </a>
                    <a class="btn btn-white btn-sm feige-gitout" data-toggle="tooltip" data-placement="top" title="Discard email">
                        <i class="fa fa-times"></i> 放弃
                    </a>
                    <!--<a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="" data-original-title="Move to draft folder">
                        <i class="fa fa-pencil"></i> 存为草稿
                    </a>
                --></div>
            	</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	window.onload=function(){
		$(".chakan").css("color","red");
	}
		$(function(){
			$(".chakan").on("click",function(){
				$(".feige-table").show();
				$(".chakan").css("color","red");
				$(".fasong").css("color","#333");
				$(".chakan1").hide();
				$(".fasong1").hide();
			})
			$(".fasong").on("click",function(){
				$(".chakan").css("color","#333");
				$(".fasong").css("color","red");
				$(".feige-table").hide();
				$(".chakan1").hide();
				$(".fasong1").show();
			})
			$(".feige-gitout").on("click",function(){
				$(".inp-feige1").val("");
				$(".inp-feige2").val("");
				$(".inp-feige3").text("您好，");
				$(".inp-feige4").text(" 正文");
				$(".feige-table").show("");
				$(".chakan1").hide();
				$(".fasong1").hide();
			})
		})
		$(".btn-feigepost").on("click",function(){
			var postName=$(".inp-feige1").val();
			var postTitle=$(".inp-feige2").val();
			var contentOne=$(".inp-feige3").text();
			var contentSec=$(".inp-feige4").text();
			if(postName!=''&&postTitle!=''&&contentOne!=''&&contentSec!=''){
				$.ajax({
					type:"post",
					url:"postFeige",
					dataType:"text",
					data:{
						postName:postName,
						postTitle:postTitle,
						contentOne:contentOne,
						contentSec:contentSec,
						name:getUserName()
					},
					success:function(Result){
						if(Result=="y"){
							alert("发送成功，静候佳音。");
						}
						else if(Result=="n"){
							alert("该用户还不是您的好友，发送失败。");
						}
					},
					error:function(xhr, status, errMsg){
						alert(errMsg);
					}
				})
			}else{
				alert("不能为空！");
			}
		})
	</script>
  </body>
</html>
