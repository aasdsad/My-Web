function select(selector, data){
	var $container = $('<div class="container"></div>');
	var $title = $('<div class="title"></div>');
	var $content = $('<div class="content"></div>');

	$container.append($title).append($content);
	$(selector).append($container);
	
	for(var i=0; i<data.length; i++){
		var $titleItem = $("<div>"+ data[i].title +"</div>").on("click", function(){
			$(this).addClass("selected").siblings().removeClass('selected');
			$(".content div").eq($(this).index()).addClass('selected').siblings().removeClass('selected');
		});
		$title.append($titleItem);

		if(data[i].content.indexOf(".html") == -1){
			var $contentItem = $("<div></div>").html(data[i].content);
		}else{
			var $contentItem = $("<div></div>").load(data[i].content);
		}
		$content.append($contentItem);
	}
/*	var obj = {
		name : "zhangsan",
		age : 20
	};
	for(var p in obj){
		console.log(p +  ":" +obj[p]);
	}
*/
	// $(".title div").eq(0).addClass("selected");
	// $(".title div:eq(0)").addClass("selected");
	// $("div", $title).first().addClass("selected");
	// $(".title div:first-child").addClass("selected");
	$(".title div:nth-child(1)").addClass("selected");
	$("div", $content).first().addClass("selected");
	



}