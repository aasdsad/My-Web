function ativityInit(){
	$.ajax({
        type : "post",
        url : "getThisActivity", 
        dataType : "json", 
        data :
        { 
        	"id":getUserName()
        }, 
        success : function(Result)
        {
        	$(".cjz").text("创建者："+Result[0].nickname+"，  ");
        	$(".cjrq").text("创建时间："+Result[0].createtime);
        	$(".kssj").text("活动时间："+Result[0].activitystarttime);
        	$(".ksdd").text("活动地点："+Result[0].activityadress);
        	$(".hdsm").text(Result[0].activityexplain);
        	$(".hdm").text("活动："+Result[0].activityname);
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
	$.ajax({
        type : "post",
        url : "getActivityName", 
        dataType : "json", 
        data :
        { 
        	"id":getUserName()
        }, 
        success : function(Result)
        {
        	$(".am-list").empty();
        	if(Result.length){
        		//$(".am-list").empty();
	        	for(var i=0;i<Result.length;i++)
	        	{
	        		var line="<li><a >"+Result[i].nickname+"</a></li>";
	        		$(".am-list").append($(line));
	        	}
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
}