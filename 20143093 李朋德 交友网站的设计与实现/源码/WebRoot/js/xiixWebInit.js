//初始化好友模块
function friendPageInit(){
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
//初始化好胆模块
function haodanInit(data){
	var tr='<tr>';
	var td0='<td class="project-status"><span class="label label-primary">进行中</span></td>';
	var td1='<td class="project-title"><a  class="aN">'+data.activityname+'</a><br><small>创建于 '+data.createtime+'</small></td>';
	var td2='<td class="project-completion"><small>当前进度： 48%</small><div class="progress progress-mini"><div style="width: 48%;" class="progress-bar"></div></div></td>';
	var td3='<td class="project-people"><a ><img alt="image" class="img-circle" src="./friendimages/1.jpg"></a><a ><img alt="image" class="img-circle" src="./friendimages/2.jpg"></a> <a ><img alt="image" class="img-circle" src="./friendimages/3.jpg"></a><a ><img alt="image" class="img-circle" src="./friendimages/4.jpg"></a><a ><img alt="image" class="img-circle" src="./friendimages/5.jpg"></a></td>';
	var td4='<td class="project-actions"><span class="btn btn-white btn-sm activity-into"><i class="fa fa-folder"></i>查看</span><span class="btn btn-white btn-sm activity-join"><i class="fa fa-pencil"></i>参加</span></td></tr>';
	var line=tr+td0+td1+td2+td3+td4;
	console.log(line);
	$(".table-activity tbody").append($(line));
	$(".activity-into").on("click",function(){
		/*var activityName=$(".aN").eq($(".activity-into").index($(this))).text()+"";
		console.log(activityName);*/
		window.location.href="ativity.jsp?id="+data.id;
	});
	$(".activity-join").on("click",function(){
		var index=$(".activity-into").index($(this));
		var activityName=$(".aN").eq($(".activity-into").index($(this))).text()+"";
		console.log(activityName);
		 $.ajax({
		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		        type : "post",      
		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		        url : "joinActivity", 
		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		        data :
		        { 
					"name":getUserName(),
					"id":data.id
		        }, 
		        success : function(Result)
		        {
		        	if(Result=="y"){
		        		$(".activity-join").eq(index).html("<i class='fa fa-pencil'></i>已参加");
		        	}
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
			});
	});
}
//初始化动态模块
function dongtaiInit(data,index){
	var divF='<div class="feed-element">';
    var div0='<a href="profile.html#" class="pull-left">';
    var div1='<img alt="image" class="img-circle" src="./friendimages/'+index+'.jpg">';
    var div2='</a>';
    var div3='<div class="media-body ">';
    var div4='<small class="pull-right">  </small>';
    var div5='<strong id="huifu_name'+index+'">'+data.nickname+'</strong> 交友达人 <br>';
    var div6='<small class="text-muted">'+data.releasetime+' 来自 Koryolink iPhone</small>';
    var div7='<div class="well dongtai-releaseT">'+data.content+'</div>';
    var div8='<div class="well dongtai-huifu-all"></div>';
	var div9='<div class="input65" id="input65'+index+'"><input type="text"/></div>';
	var div10='<div class="pull-right"><a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞</a><a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a><a class="btn btn-xs btn-primary btn-65" id="btn-65'+index+'"><i class="fa fa-pencil"></i> 评论</a></div>';
    var divE='</div>';
    var divLine=divF+div0+div1+div2+div3+div4+div5+div6+div7+div8+div9+div10+divE;
    $(".ibox-content1").append($(divLine));
    //给评论按钮添加点击事件
    var but="#btn-65"+index;
    var inp="#input65"+index;
    var input8="#input65"+index+" input";
    var name_1="#huifu_name"+index;
    $(but).on('click',function(){
    	if($(inp).css("display")=="none")
    	{
    		$(inp).show();
    	}else{
    		console.log("输出："+$(inp).val());
    		console.log($(".dongtai-releaseT").eq(index).text());
    		if($(input8).val()!="")
    		{
    			console.log("输出："+$(input8).val());
    			$.ajax({
        		        
        		        type : "post",      
        		        url : "writeInHuifu", 
        		        dataType : "text", 
        		        data :
        		        { 
        		        	"hername":data.username,
        		        	"myname":getUserName(),
        		        	"huifuVal":$(input8).val(),
        		        	"dongtaireleaseT":data.content
        		        }, 
        		        success : function(Result)
        		        {
        		        	if(Result="y"){
    				    		var divHuifufirst="<div class='well'>";
    				      		var spanHuifuall="<span>"+data.nickname+"</span><span> 回复：  </span></span><span>"+$(input8).val()+"</span>";
    				      		var divHuifuend="</div>";
    				      		var divHuifuall=divHuifufirst+spanHuifuall+divHuifuend;
    				      		$(".dongtai-huifu-all").eq(index).append($(divHuifuall));
    				      	}
    				  
        		        },
        		        error : function(xhr, status, errMsg)
        		        {
        		             alert("数据传输失败!");
        		        }
    			});
    		}
    		$(".input65").eq($(".btn-65").index($(this))).hide();
    	}
    });
    //初始化每一条动态的回复
    $.ajax({
        type : "post",      
        url : "getDongtaiHuifu", 
        dataType : "json",  
        data :
        { 
			"name":data.username,
			"id":data.id
        }, 
        success : function(Result)
        {
        	if(Result.length){
        		$(".dongtai-huifu-all").show();
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		var divHuifufirst="<div class='well'>";
	        		var spanHuifuall="<span>"+Result[i].nickname+"</span><span> 回复：  </span></span><span>"+Result[i].content+"</span>";
		      		var divHuifuend="</div>";
		      		var divHuifuall=divHuifufirst+spanHuifuall+divHuifuend;
		      		$(".dongtai-huifu-all").eq(index).append($(divHuifuall));
	        	}
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
}
//初始化首页模块
function xixiPageInit(data,index){
    var divF='<div class="col-sm-4 showman'+index+'">';
    var div0='<div class="contact-box">';
    var div1='<a >';
    var div2='<div class="col-sm-4">';
    var div3='<div class="text-center">';
    var div4='<img alt="image" class="img-circle m-t-xs img-responsive" src="./friendimages/'+index+'.jpg">';
    var div5='<div class="m-t-xs font-bold">职业：'+data.professional+'</div>';
    var div6='</div>';
    var div7='</div>';
    var div8='<div class="col-sm-8">';
    var div9='<h3><strong>'+data.nickname+'</strong></h3>';
    var div10='<p><i class="fa fa-map-marker"></i> '+data.sex+'   '+data.age+'岁</p>';
    var div12='<strong>'+data.nationality+'</strong>';
    var div14='<br> <p>'+data.signature+'</p></div>';
    var div15='<div class="clearfix"></div>';
    var div16='</a></div>';
    var divE='</div>';
    var divLine=divF+div0+div1+div2+div3+div4+div5+div6+div7+div8+div9+div10+div12+div14+div15+div16+divE;
    $(".xixiPageInit").append($(divLine));
    var sm=".showman"+index;
    $(sm).on("click",function(){
    	window.location.href="herPage.jsp?hername="+data.name+"&myname="+getUserName();
    })
}
//初始化飞鸽传书页面
function feigePageInit(data,index){
	var tr="<tr id='tr"+index+"'><td>"+data.postname+"</td><td>"+data.posttitle+"</td><td>"+data.createtime+"</td></tr>";
	$(".feige-table table tbody").append($(tr));
	var trT="#tr"+index;
	$(trT).on("click",function(){
		var line1="<span class='font-noraml'>主题： </span>"+data.posttitle;
		var line2="<span class='pull-right font-noraml'>"+data.createtime+"</span> <span class='font-noraml'>发件人： </span>"+data.postname;
		$(".chakan1 h3").html(line1);
		$(".chakan1 h5").html(line2);
		$(".tt h5").text(data.contentone);
		$(".tt p").text(data.contentsec);
		$(".feige-table").hide();
		$(".fasong1").hide();
		$(".chakan1").show();
		$.ajax({//动态初始化
	        type : "post",      
	        url : "deleteFei", 
	        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
	        data :
	        { 
				"postname":getUserName(),
				"name":data.name,
				"createtime":data.createtime
	        }, 
	        success : function(Result)
	        {
	        	console.log(Result);
	        	if(Result=="1"){
	        		$(trT).remove();
	        	}else{
	        	}
	        	
	        },
	        error : function(xhr, status, errMsg)
	        {
	             alert("数据传输失败!");
	        }
		});
	})
}
//统一ajax请求
function init(){
	$.ajax({//动态初始化
        type : "post",      
        url : "getDongtaiRelease", 
        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	console.log(Result);
        	if(Result!=null){
        		$(".ibox-content1").empty();
	        	Result.sort(function(a,b){
	        	    return Date.parse(b.releasetime) - Date.parse(a.releasetime);//时间正序
	        	});
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		dongtaiInit(Result[i],i);
	        	}
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
	$.ajax({//好胆初始化
        type : "post",      
        url : "getActivity", 
        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
        data :
        { 
			"name":getUserName()
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
	$.ajax({//首页初始化
        type : "post",      
        url : "getXixiPageInfo", 
        dataType : "json",  
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	if(Result.length){
        		$(".xixiPageInit").empty();
        		var length=Result.length>15?15:Result.length;
	        	for(var i=0;i<length;i++)
	        	{
	        		xixiPageInit(Result[i],i);
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
	$.ajax({//飞鸽传书初始化
        type : "post",      
        url : "getfeigePageInfo", 
        dataType : "json",  
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	if(Result.length){
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		feigePageInit(Result[i],i);
	        		console.log(i);
	        	}
        	}else{
        		var tr="<tr><td colspan='3'>暂无飞鸽传书</td> </tr>";
            	$(".feige-table table tbody").append($(tr));
        		console.log("初始化：好胆模块返回空数组");
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert(errMsg);
        }
	});
}