function inInit(){
	$.ajax({//获取好友请求消息
        type : "post",      
        url : "getFRes", 
        dataType : "json",
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	if(Result.length){
        		Result.sort(function(a,b){
	        	    return Date.parse(b.releasetime) - Date.parse(a.releasetime);//时间正序
	        	});
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		inDomInit(Result[i]);
	        	}
        	}
        	else{
        		var line="<p>暂无好友请求哦</p>";
        		$(".haoyouhaha").append($(line));
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
	$.ajax({//获取飞鸽传书消息
        type : "post",      
        url : "getMyfeige", 
        dataType : "json",
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	if(Result.length){
        		Result.sort(function(a,b){
	        	    return Date.parse(b.createtime) - Date.parse(a.createtime);//时间正序
	        	});
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		var div8="<div class='well'>"+Result[i].nickname+"  给你寄来了一封飞鸽传书，快去看看吧<div><span style='float:right;'>发送于  "+Result[i].createtime+"</span></div></div>";
	        	    $(".feigehaha").append($(div8));
	        	}
        	}
        	else{
        		var line="<p>没人给你发飞鸽传说哦</p>";
        	    $(".feigehaha").append($(line));
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
	$.ajax({//获取我的动态
        type : "post",      
        url : "getMyDongtaiRelease", 
        dataType : "json",
        data :
        { 
			"name":getUserName()
        }, 
        success : function(Result)
        {
        	if(Result.length){
        		Result.sort(function(a,b){
	        	    return Date.parse(b.releasetime) - Date.parse(a.releasetime);//时间正序
	        	});
	        	for(var i=0;i<Result.length;i++)
	        	{
	        	    var div8="<div class='well'>"+Result[i].content+"<div><span style='float:right;'>发表于  "+Result[i].releasetime+"</span></div></div>";
	        	    $(".dongtaihaha").append($(div8));
	        	}
        	}
        	else{
        		var line="<p>您还没有动态哦</p>";
        		$(".dongtaihaha").append($(line));
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
}
function inDomInit(data){
	
		var divF='<div class="feed-element">';
	    var div8="<div class='well'><p ><span class='resquN'>"+data.nickname+"</span>请求添加你为好友"+"       <span class='freAgree'>同意</span>  <span class='freRefuse'>拒绝</span></p>"+"<div><span style='float:right;'>请求时间  "+data.requesttime+"</span></div></div>";
	    var divE='</div>';
	    var divLine=divF+div8+divE;
	    $(".haoyouhaha").append($(divLine));
		$(".freAgree").on('click',function(){
			console.log("myInAjax：同意好友添加按钮已点击");
			console.log($(".resquN").eq($(".freAgree").index($(this))).text());
			myResponse("y",data.requestname);
		});
		$(".freRefuse").on('click',function(){
			console.log("myInAjax：同意好友添加按钮已点击");
			myResponse("n",data.requestname);
		});
	
}
