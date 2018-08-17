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
	<script src="./js/carousel.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/dongtaiPageCss.css">
	<link rel="stylesheet" type="text/css" href="./css/homePage.css">
	<link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
  </head>
  
  <body>
    <div id="div1"></div>
    <div class="wrapper-content animated fadeInRight" style="background: #fff;position: relative;margin-top: 10px;">
    <div class="row xixiPageInit">
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            <div class="m-t-xs font-bold">CTO</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>奔波儿灞</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 甘肃·兰州</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                            <div class="m-t-xs font-bold">营销总监</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>灞波儿奔</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 四川·成都</p>
                        <address>
                            <strong>Taobao, Inc.</strong><br> E-mail:xxx@taobao.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                            <div class="m-t-xs font-bold">Marketing manager</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>Monica Smith</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                            <div class="m-t-xs font-bold">攻城师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>Michael Zimber</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>作家崔成浩</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a6.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>韩寒</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                            <div class="m-t-xs font-bold">CEO</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>郭敬明</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>马云</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a3.jpg">
                            <div class="m-t-xs font-bold">市场总监</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>范爷</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a4.jpg">
                            <div class="m-t-xs font-bold">攻城师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>李彦宏</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a5.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>小马哥</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a6.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>乔峰</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>

            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a1.jpg">
                            <div class="m-t-xs font-bold">CEO</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>慕容晓晓</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>高圆圆</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>高圆圆</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="contact-box">
                <a href="profile.html">
                    <div class="col-sm-4">
                        <div class="text-center">
                            <img alt="image" class="img-circle m-t-xs img-responsive" src="http://ozwpnu2pa.bkt.clouddn.com/a2.jpg">
                            <div class="m-t-xs font-bold">射鸡师</div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <h3><strong>高圆圆</strong></h3>
                        <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                        <address>
                            <strong>Baidu, Inc.</strong><br> E-mail:xxx@baidu.com<br> Weibo:
                            <a href="">http://weibo.com/xxx</a>
                            <br> <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </div>
        </div>
    </div>
	</div>
    <script type="text/javascript">
    	var imgData = [
			{src: './images/15.jpg', title: '这是第一张图片'},
			{src: './images/29.jpg', title: '这是第二张图片'},
			{src: './images/09.jpg', title: '这是第三张图片'},
			{src: './images/12.jpg', title: '这是第四张图片'},
			{src: './images/30.jpg', title: '这是第五张图片'}
		];
		carousel("#div1", imgData);
    </script>
  </body>
</html>
