function carousel(selector, imgData){
	//以下是为了进行网页的预加载和组件化因而把这些布局用js进行处理
	var $containerDom = $('<div class="container"></div>');
	var $imgsDom = $('<div class="imgs"></div>');
	var $thumbsDom = $('<ul class="thumbs"></ul>');
	var $arrowsDom = $('<div class="arrows"></div>');
	var $prevDom = $('<span class="prev">&lt;</span>');
	var $nextDom = $('<span class="next">&gt;</span>');
	var $text = $('<div class="text">');
	//布置布局
	$arrowsDom.append($prevDom).append($nextDom);
	$containerDom.append($imgsDom).append($thumbsDom).append($arrowsDom).append($text);
	$(selector).append($containerDom);
	//为缩略图thubs进行布局
	var $imgsObj = $(".imgs");
	var $thumbsObj = $(".thumbs");
	for(var i=0; i<imgData.length; i++){
		$imgsObj.append("<img src='"+imgData[i].src+"'/>");
		$thumbsObj.append("<li> <img src='"+imgData[i].src+"'> </li>");
	}
	//设置初始加载网页时出现的图片
	$(".imgs img").first().addClass("selected");
	$(".thumbs li").first().addClass("selected");
	//设置全局变量
	var index = 0;//代表当前选中的图片的索引
	var imgLength = $('.imgs img').length;
	//
	var $thumbs = $('.thumbs li');
	var $imgs = $('.imgs img');
	var $text = $('.text');
	//设置第一次加载网页图片上出现的标题
	$text.html(  $imgs.eq(0).attr('title')  );/*eq的作用是其中匹配的元素，其中的参数表示第几个匹配的元素；其中attr是attribute的缩写，用来获得某一个属性的值*/
	//当点击图片是应该执行changmg函数
	$thumbs.on('click', function(){
		index = $(this).index();//获取当前点击图片的下标

		changeImg( index );
	});

	//当点击下一个按钮时执行changImg函数进行切换图片
	$('.next').on('click', function(){
		index++;
		if(index == imgLength){
			index = 0;
		}
		changeImg(  index  );
	});

	//当点击上一个按钮时执行changImg函数进行切换图片
	$('.prev').on('click', function(){
		index--;
		if(index == -1){
			index = imgLength - 1;
		}
		changeImg(  index  );
	});
    //changImg函数如下
	function changeImg(index){
		//$(elem).addClass('selected').siblings().removeClass('selected');//this永远指向当前操纵的对象
		$thumbs.eq(index).addClass('selected').siblings().removeClass('selected');
		$imgs.eq(index).addClass('selected').siblings().removeClass('selected'); //eq=equals

		$text.html(  $imgs.eq(index).attr('title')  );

	}
}






















