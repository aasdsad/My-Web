function cnt(){		
        		var over="<div class='overlay2'></div>";
        		var tableFr="<div class='wrapper2'><div><span class='span1'>x</span></div><h1>创建新活动</h1><div class='cnt-1'>";
        		var tr0="<div class='cnt-cjr'><span>活动名称</span><input type='text'></div>";
        		var tr1="<div class='cnt-hddd'><span>活动地点</span><input type='text'></div>";
        		var tr2="<div class='cnt-kssj'><span>开始时间</span><input type='text'></div>";
        		var tr3="<div class='cnt-hdsm'><span>活动说明</span><textarea rows='3'></textarea></div>";
        		var tr5="<div><button class='cnt-createBtn'>确定创建</button></div>";
        		var tableLt="</div>";
        		var content=tableFr+tr0+tr1+tr2+tr3+tr5+tableLt;
        		$("body").append($(over)).append($(content));
        		$(".wrapper2 .span1").on("click",function(){
        			$(".wrapper2").remove();
        			$(".overlay2").remove();
        		});
        		$(".cnt-createBtn").on("click",function(){
        			var name=getUserName();
        			var cntcjrVal=$('.cnt-cjr input').val();
        			var cnthdddVal=$('.cnt-hddd input').val();
        			var cntkssjVal=$('.cnt-kssj input').val();
        			var cnthdsmVal=$('.cnt-hdsm textarea').val();
		            $.ajax({
		    		        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
		    		        type : "post",      
		    		        //servlet 文件名为Calculator，需要提前在web.xml里面注册
		    		        url : "createNewActivity", 
		    		        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
		    		        data :
		    		        { 
		    		        	"name":name,
		    		        	"cntcjrVal":cntcjrVal,
		    		        	"cnthdddVal":cnthdddVal,
		    		        	"cntkssjVal":cntkssjVal,
		    		        	"cnthdsmVal":cnthdsmVal
		    		        }, 
		    		        success : function(Result)
		    		        {
		    		        	if(Result=="y")
		    		        	{
		    		        		alert("活动项目成功，作为项目创建者，别忘了准时参加哦");
		    		        		$(".wrapper2").remove();
        							$(".overlay2").remove();
		    		        	}else{
		    		        		alert("因数据库问题修改失败");
		    		        	}
		    		        	
		    		        },
		    		        error : function(xhr, status, errMsg)
		    		        {
		    		             alert("数据传输失败!");
		    		        }
		    	   	});
        		})
}