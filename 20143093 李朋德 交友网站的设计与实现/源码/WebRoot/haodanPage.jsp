<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'haodanPage.jsp' starting page</title>
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/haodanCss.css">
	<script type="text/javascript" src="./jquery/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="./js/createNewActivity.js"></script>
	<style type="text/css">
		.overlay2{
			width: 100%;
			height: 100%;
			background: #000;
			opacity: 0.5;
			filter: alpha(opacity=50);
			position: absolute;/*缁濆瀹氫綅*/
			left: 0;
			top: 0;
			z-index: 998;
		}
		.wrapper2{
			width: 900px;
			height: 750px;
			background: #fff;
			position: absolute;
			z-index: 999;
			left: 50%;
			top: 50%;
			margin-left: -450px;
			margin-top: -350px;

		}
		.cnt-1{
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -131px;
			margin-top: -275px;

		}
		.wrapper2 h1{
			left: 399px;
    		position: relative;
		}
		.wrapper2 .span1{
			margin-top: -19px;
		    margin-right: 4px;
		    float: right;
		    font-size: 43px;
		    cursor: pointer;
		}
		.wrapper2 p span{
			margin-right: 30px;
		}
		.cnt-cjr{
			margin-bottom: 10px;
		}
		.cnt-hddd{
		    margin-bottom: 10px;
		}
		.cnt-kssj{
		    margin-bottom: 10px;
		}
		.cnt-hdsm{
		    margin-bottom: 10px;
		}
		.cnt-cjr span{
		    display: inline-block;
		    width: 56px;
		    text-align: right;
		    
		}
		.cnt-cjr input{
			width: 198px;
		}
		.cnt-hddd input{
			width: 198px;
		}
		.cnt-kssj input{
			width: 198px;
		}
		.cnt-hdsm span{
			position: relative;
    		top: -86px;
		}
		.cnt-hdsm textarea{
			width: 200px;
		    border: 1px solid;
		    height: 100px;
		    position: relative;
		}
		.wrapper2 button{
		    position: relative;
    		left: 113px;
		}
	</style>
  </head>
  
  <body>
<div class="wrapper1">
    <div class="row">
        <div class="col-sm-12">

            <div class="ibox">
                <div class="ibox-title">
                    <h5>所有线下活动</h5>
                    <div class="ibox-tools">
                        <span class="btn btn-primary btn-xs cnt">创建新活动</span>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row m-b-sm m-t-sm">
                        <div class="col-md-1">
                            <button type="button" id="loading-example-btn" class="btn btn-white btn-sm btn-refresh">
                                <i class="fa fa-refresh"></i> 刷新
                            </button>
                        </div>
                        <div class="col-md-11">
                            <div class="input-group">
                                <input type="text" placeholder="请输入活动项目名称" class="input-sm form-control research-input" style="width: 700px;margin-left: 20px;">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary btn-research" style="margin-left: 20px;left:  -405px;"> 搜索</button> </span>
                            </div>
                        </div>
                    </div>

                    <div class="project-list">

                        <table class="table table-hover table-activity">
                            <tbody>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">LIKE－一款能够让用户快速获得认同感的兴趣社交应用</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 48%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="./friendimages/1.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="./friendimages/2.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="./friendimages/3.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="./friendimages/4.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="./friendimages/5.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">米莫说｜MiMO Show</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 28%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 28%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a7.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a6.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-default">已取消
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">商家与购物用户的交互试衣应用</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 8%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 8%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">天狼---智能硬件项目</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 83%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 83%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a7.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">乐活未来</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 97%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 97%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">【私人医生项目】</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 48%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 48%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">快狗家居</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 28%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 28%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a7.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a6.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-default">已取消
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">线下超市+线上商城+物流配送互联系统</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 8%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 8%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">P司机汽车省钱专家</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 83%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 83%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">左左 靠谱男同交友</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 97%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 97%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="project-status">
                                            <span class="label label-primary">进行中
                                </span></td>
                                <td class="project-title">
                                    <a href="project_detail.html">程序员私活圈</a>
                                    <br>
                                    <small>创建于 2014.08.15</small>
                                </td>
                                <td class="project-completion">
                                    <small>当前进度： 28%</small>
                                    <div class="progress progress-mini">
                                        <div style="width: 28%;" class="progress-bar"></div>
                                    </div>
                                </td>
                                <td class="project-people">
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a7.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a6.jpg">
                                    </a>
                                    <a href="projects.html">
                                        <img alt="image" class="img-circle" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                                    </a>
                                </td>
                                <td class="project-actions">
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
                                        查看
                                    </a>
                                    <a href="projects.html#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i>
                                        编辑
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<script>
		$(".cnt").on("click",function () {
			cnt();
		});
		$(".btn-refresh").click(function(){
			$.ajax({
		        type : "post",      
		        url : "getActivity", 
		        dataType : "json",
		        data :
		        { 
		        }, 
		        success : function(Result)
		        {
		        	if(Result.length){
		        		$(".table-activity tbody").empty();
			        	for(var i=0;i<Result.length;i++)
			        	{
			        		haodanInit(Result[i]);
			        	}
		        	}else{
		        		console.log("初始化：好胆模块返回空数组");
		        	}
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
			});
		});
		$(".btn-research").on('click',function(){
			$.ajax({
		        type : "post",      
		        url : "getActivity", 
		        dataType : "json", 
		        data :
		        { 
		        }, 
		        success : function(Result)
		        {
		        	$(".table-activity tbody").empty();
		        	var research=$(".research-input").val()+"";
		        	var researchState=false;
		        	for(var i=0;i<Result.length;i++)
			        {
			        	var stringTemp=Result[i].activityname;
			        	if(stringTemp.search(research)!=-1){
			        		haodanInit(Result[i]);
			        		researchState=true;
			        	}
			        }
			        if(researchState==false)
			        {
			        	var nullLine="<tr><td>亲，没有这个活动哦！</td></tr>";
			        	$(".table-activity tbody").append($(nullLine));
			        }
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
			});
		});
	</script>

  </body>
</html>
