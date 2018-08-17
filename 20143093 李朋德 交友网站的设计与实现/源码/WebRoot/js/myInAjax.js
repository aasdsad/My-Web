
function myResponse(response,friendName){
	$.ajax({//处理消息请求
        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
        type : "post",      
        //servlet 文件名为Calculator，需要提前在web.xml里面注册
        url : "addMyFriend", 
        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
        data :
        { 
			"name":getUserName(),
			"respon":response,
			"friendName":friendName
        }, 
        success : function(Result)
        {
        	if(Result=="Y"){
        		alert("已添加！");
        	}else{
        		alert("添加失败");
        	}
        },
        error : function(xhr, status, errMsg)
        {
             alert("数据传输失败!");
        }
	});
}