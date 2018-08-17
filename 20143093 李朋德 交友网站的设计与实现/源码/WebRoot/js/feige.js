$(".btn-feigepost").on("click",function(){
	var postName=$(".inp-feige1").val();
	var postTitle=$(".inp-feige2").val();
	var contentOne=$(".inp-feige3").text();
	var contentSec=$(".inp-feige4").text();
	$ajax({
		type:"post",
		url:"postFeige",
		dataType:"json",
		data:{
			postName:postName,
			postTitle:postTitle,
			contentOne:contentOne,
			contentSec:contentSec,
			name:getUserName()
		},
		success:function(Result){
			
		},
		error:function(xhr, status, errMsg){
			alert(errMsg);
		}
	})
})
