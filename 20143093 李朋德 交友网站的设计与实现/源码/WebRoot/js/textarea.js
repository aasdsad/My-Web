$(document).ready(function(){
			var $tex = $("#tex"); 
			var ie = jQuery.support.htmlSerialize; 
			var str = 0; 
			var abcnum = 0; 
			var maxNum = 600; 
			var texts= 0; 
			var num = 0; 
			var sets = null; 
			$tex.val(""); 
			//��������ʾ���� 
			$tex.focus(function(){ 
				if($tex.val()==""){ 
					$("p").html("�����������������<span>300</span>"); 
				} 
			});
			$tex.blur(function(){ 
				if($tex.val() == ""){ 
					$("p").html("�������������������֣�"); 
				} 
			}); 
			//�ı��������������ʾ�ı� 
			if(ie){ 
				$tex[0].oninput = changeNum; 
			}else{ 
				$tex[0].onpropertychange = changeNum; 
			} 
			function changeNum(){ 
				//���ֵĸ��� 
				str = ($tex.val().replace(/\w/g,"")).length; 
				//�Ǻ��ֵĸ��� 
				abcnum = $tex.val().length-str; 
				total = str*2+abcnum; 
				if(str*2+abcnum<maxNum || str*2+abcnum == maxNum){ 
					texts =Math.ceil((maxNum - (str*2+abcnum))/2); 
					$("p").html("�����������������<span>"+texts+"</span>").children().css({"color":"blue"}); 
				}else if(str*2+abcnum>maxNum){ 
					texts =Math.ceil(((str*2+abcnum)-maxNum)/2); 
					$("p").html("������������ѳ���<span>"+texts+"</span>").children("span").css({"color":"red"});
					$tex.css({"color":"red"});
				} 
			} 
})