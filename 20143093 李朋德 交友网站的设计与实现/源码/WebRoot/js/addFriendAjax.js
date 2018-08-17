function addFriendAjax(){
	var name=getUserName();
	var friendName=$('#addUserName').val();
	console.log(friendName);
	if(friendName==null){
		alert("请输入用户名！");
	}else{
			$.ajax({
		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		        type : "post",      
		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		        url : "addFriend", 
		        dataType : "json",  //数据类型，可以为json，xml等等，自己百度
		        data :
		        { 
		        	"name":name,
		        	"friendName":friendName
		        }, 
		        success : function(Result)
		        {
		        	if(Result[0]!=null){
		        		$("#wu").hide();
		        		$("#tab").css("display","block");
		        		var tr="<tr><td>"+Result[0].name+"</td><td>"+Result[0].nickname+"</td><td><button class='addButton'>添加</button></td></tr>";
		        		$("#tab").append($(tr));
		        	}else{
		        		$("#wu").css("display","block");
		        		$("#tab").hide();
		        	}
		        	$("#tab .addButton").on("click",function(){
		        		console.log($(this).index());
		        		var addname=$("#tab tr").eq($(this).index()+1).find("td").eq(0).text();
		        		$.ajax({
		    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		    		        type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "addFriend2", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":name,
		    		        	"friendName":addname
		    		        }, 
		    		        success : function(Result)
		    		        {
		    		        	if(Result=="Y"){
			    		        	console.log($("#tab .addButton"));
			    		        	alert("已发送请求，等待对方回应。");
			    		        	$("#tab tr").eq($(this).index()).remove();
		    		        	}else{
		    		        		alert("未知错误");
		    		        	}
		    		        },
		    		        error : function(xhr, status, errMsg)
		    		        {
		    		             alert("数据传输失败!");
		    		        }
		    	   		 });
		        	}) 
		        },
		        error : function(xhr, status, errMsg)
		        {
		             alert("数据传输失败!");
		        }
			}); 
	}                                                                                                                                                                      
}
