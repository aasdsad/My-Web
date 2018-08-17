function carousel(selector, imgData){
	//以下是为了进行网页的预加载和组件化因而把这些布局用js进行处理
	var $containerDom = $('<div class="container"></div>');
	var $imgsDom = $('<div class="imgs"></div>');
	var $thumbsDom = $('<ul class="thumbs"></ul>');
	var $text = $('<div class="text">');
	//布置布局
	$containerDom.append($imgsDom).append($thumbsDom).append($text);
	$(selector).append($containerDom);
	//为缩略图thubs进行布局
	var $imgsObj = $(".imgs");
	var $thumbsObj = $(".thumbs");
	for(var i=0; i<imgData.length; i++){
		$imgsObj.append("<img src='"+imgData[i].src+"'/>");
		$thumbsObj.append("<li> <div class='circle'></div> </li>");
	}
	//设置初始加载网页时出现的图片
	$(".imgs img").first().addClass("selected");
	$(".thumbs li div").first().addClass("selected");
	//设置全局变量
	var index = 0;//代表当前选中的图片的索引
	var imgLength = $('.imgs img').length;
	//
	var $thumbs = $('.thumbs li');
	var $imgs = $('.imgs img');
	var $text = $('.text');
	//设置第一次加载网页图片上出现的标题
	$text.html(  $imgs.eq(0).attr('title')  );/*eq的作用是其中匹配的元素，其中的参数表示第几个匹配的元素；其中attr是attribute的缩写，用来获得某一个属性的值*/
	window.setInterval(function(){
		if(index<4){
			index++;
		}else{
			index=0;
		}
		changeImg(index);
	}, 3000);
	
	//当点击图片是应该执行changmg函数
    //changImg函数如下
	function changeImg(index){
		//$(elem).addClass('selected').siblings().removeClass('selected');//this永远指向当前操纵的对象
		$thumbs.find(".circle").eq(index).addClass('selected');
		for(var i=0;i<5;i++){
			if(i!=index){
				$thumbs.find(".circle").eq(i).removeClass('selected');
			}
		}
		$imgs.eq(index).addClass('selected').siblings().removeClass('selected'); //eq=equals

		$text.html(  $imgs.eq(index).attr('title')  );

	}
}






















