function drankFriend(data){
	for(var i=0;i<data.length;i++){
		(function(i){
			var trFr="<tr id='tr"+i+"'>";
			var td0="<td class='client-avatar'><img alt='image' src='http://ozwpnu2pa.bkt.clouddn.com/a2.jpg'></td>";
			var td1="<td><a data-toggle='tab' href='#contact-1' class='client-link' aria-expanded='true'>"+data[i].notename+"</a></td>";
			var td2="<td> 账号："+data[i].friend+" </td>";
			var td3="<td class='contact-type'><i class='fa fa-envelope'> </i></td>";
			var td4="<td>成为好友时间："+data[i].addtime+"</td>";
			var td5="<td class='client-status'><span class='label label-primary'>离线</span></td>";
			if(data[i].state=="y"){
				var td5="<td class='client-status'><span class='label label-primary'>在线</span></td>";
			}
			var td6="<td style='vertical-align:top;'><button><strong>-</strong></button><div class='butDiv'><ul style='list-style-type:none;cursor:pointer;'><li class='li1'>查看空间</li><li class='li2'>删除好友</li></ul></div></td>";
			var trLa="</tr>";
			var line=trFr+td0+td1+td2+td3+td4+td5+td6+trLa;
			$(".friendtable").append(line);
			
			var tr="#tr"+i+" button";
			var trDiv="#tr"+i+" div";
			var $tr=$(tr);
			var $trDiv=$(trDiv);
			$tr.on('click',function(){
	
				if ($trDiv.css('display')=='none') {
					console.log("asdads");
					$('tr .butDiv').each(function(index,dom){
						console.log(dom);
						$(dom).hide();
					})
					$trDiv.show();
				}
				else{
					$trDiv.hide();
				}
			});
			var li1=trDiv+" .li1";
			var li2=trDiv+" .li2";
			var $li1=$(li1);
			var $li2=$(li2);
			$li2.on('click',function(){
				var delTr="#tr"+i;
				var friendName=data[i].friend;
				var name=getUserName();
				$.ajax({
			        //直接"post"或者"get",不需要"doPost","doGet"，该函数到后端接收缓冲区会自动匹配
			        type : "post",      
			        //servlet 文件名为Calculator，需要提前在web.xml里面注册
			        url : "delFriend", 
			        dataType : "text",  //数据类型，可以为json，xml等等，自己百度
			        data :
			        { 
			        	"name":name,
			        	"friendName":friendName
			        }, 
			        success : function(Result)
			        {
			        	if(Result=="1"){
			        		$(delTr).remove();
			        	}else{
			        		alert("删除失败，未知错误");
			        	}
			        },
			        error : function(xhr, status, errMsg)
			        {
			             alert("数据传输失败!");
			        }
		   		 });
			});
			$li1.on('click',function(){
				console.log(data[i].friend);
				var friendName=data[i].friend;
				var name=getUserName();
				window.location.href="herPage.jsp?hername="+friendName+"&myname="+getUserName();
			})
			
		})(i);
	}
}