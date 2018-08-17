

function dongtaiDiv(data,selector){
		for (var i = 0; i < data.length; i++) {
				if($.isEmptyObject(data[i])==false){
					(function(i){
						createContain(selector,data,i);
					}
					)(i);
				}
		}
}
function createContain(selector,data,i){
				var $leftDom=$("<div class='nameContent'></div>");
				var $spanDom=$("<span></span>");
				var dd="<div id='dongtaiContent"+i+"' class='dongtaiContent'></div>";
				var $rightDom=$(dd);
				var $topDom=$("<div class='topContent'><p></p></div>");
				var $bottomDom=$("<div class='bottomContent'><p></p></div>");
				var $containDom=$("<div class='dongtaiContain'></div>");
				var input="<input id='input"+i+"' type='text' style='display:none;height: 28px;width: 692px;color:#cccccc;font-size:16px' value='回复' onclick='this.value=''' onfocus='this.value=''' onblur='this.value='''></input><button id='button"+i+"' style='display:none;'>确定回复</button>";
				var $huifuTextDom=$(input);
				$leftDom.append($spanDom);
				$rightDom.append($topDom).append($bottomDom).append($huifuTextDom);
				$containDom.append($leftDom).append($rightDom);
				$(selector).append($containDom);
				var $nameObj=$(".nameContent span");
				var $huifu=$(".dontaiContent input");
				var $dongtaiContentObj=$(".topContent p");
				var tt=data[i].text+"<span style='color:#942b2b'>         回复</span>";
				$nameObj.eq(i).html(data[i].name);
				$dongtaiContentObj.eq(i).html(tt);
				if($.isEmptyObject(data[i].huifu)==false){
					var $huifuContentObj=$(".bottomContent p");
					var temp=data[i].huifu.name+" : "+data[i].huifu.text+"<span style='color:#942b2b'>         回复</span>";
					$huifuContentObj.eq(i).html(temp);
				}
				var ddd="#dongtaiContent"+i+" input";
				var ttt="#dongtaiContent"+i+" button";
				var sss="#dongtaiContent"+i+" span";
				$(sss).click(function(){
					var $inputV=$(ddd);
					var $buttonV=$(ttt);
					if($inputV.css("display")=="none"){
						$(".dongtaiContent input").each(function(index, dom){
							$(dom).hide();
						});
						$(".dongtaiContent button").each(function(index, dom){
							$(dom).hide();
						});
						$inputV.show();
						$buttonV.show();
					}else{
						$inputV.hide();
						$buttonV.hide();
					}
				});
}
		