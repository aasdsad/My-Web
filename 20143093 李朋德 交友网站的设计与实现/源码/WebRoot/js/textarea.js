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
			//顶部的提示文字 
			$tex.focus(function(){ 
				if($tex.val()==""){ 
					$("p").html("您还可以输入的字数<span>300</span>"); 
				} 
			});
			$tex.blur(function(){ 
				if($tex.val() == ""){ 
					$("p").html("请在上面输入您的文字："); 
				} 
			}); 
			//文本框字数计算和提示改变 
			if(ie){ 
				$tex[0].oninput = changeNum; 
			}else{ 
				$tex[0].onpropertychange = changeNum; 
			} 
			function changeNum(){ 
				//汉字的个数 
				str = ($tex.val().replace(/\w/g,"")).length; 
				//非汉字的个数 
				abcnum = $tex.val().length-str; 
				total = str*2+abcnum; 
				if(str*2+abcnum<maxNum || str*2+abcnum == maxNum){ 
					texts =Math.ceil((maxNum - (str*2+abcnum))/2); 
					$("p").html("您还可以输入的字数<span>"+texts+"</span>").children().css({"color":"blue"}); 
				}else if(str*2+abcnum>maxNum){ 
					texts =Math.ceil(((str*2+abcnum)-maxNum)/2); 
					$("p").html("您输入的字数已超过<span>"+texts+"</span>").children("span").css({"color":"red"});
					$tex.css({"color":"red"});
				} 
			} 
})