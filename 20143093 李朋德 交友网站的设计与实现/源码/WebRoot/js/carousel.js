function carousel(selector, imgData){
	//������Ϊ�˽�����ҳ��Ԥ���غ�������������Щ������js���д���
	var $containerDom = $('<div class="container"></div>');
	var $imgsDom = $('<div class="imgs"></div>');
	var $thumbsDom = $('<ul class="thumbs"></ul>');
	var $text = $('<div class="text">');
	//���ò���
	$containerDom.append($imgsDom).append($thumbsDom).append($text);
	$(selector).append($containerDom);
	//Ϊ����ͼthubs���в���
	var $imgsObj = $(".imgs");
	var $thumbsObj = $(".thumbs");
	for(var i=0; i<imgData.length; i++){
		$imgsObj.append("<img src='"+imgData[i].src+"'/>");
		$thumbsObj.append("<li> <div class='circle'></div> </li>");
	}
	//���ó�ʼ������ҳʱ���ֵ�ͼƬ
	$(".imgs img").first().addClass("selected");
	$(".thumbs li div").first().addClass("selected");
	//����ȫ�ֱ���
	var index = 0;//����ǰѡ�е�ͼƬ������
	var imgLength = $('.imgs img').length;
	//
	var $thumbs = $('.thumbs li');
	var $imgs = $('.imgs img');
	var $text = $('.text');
	//���õ�һ�μ�����ҳͼƬ�ϳ��ֵı���
	$text.html(  $imgs.eq(0).attr('title')  );/*eq������������ƥ���Ԫ�أ����еĲ�����ʾ�ڼ���ƥ���Ԫ�أ�����attr��attribute����д���������ĳһ�����Ե�ֵ*/
	window.setInterval(function(){
		if(index<4){
			index++;
		}else{
			index=0;
		}
		changeImg(index);
	}, 3000);
	
	//�����ͼƬ��Ӧ��ִ��changmg����
    //changImg��������
	function changeImg(index){
		//$(elem).addClass('selected').siblings().removeClass('selected');//this��Զָ��ǰ���ݵĶ���
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






















