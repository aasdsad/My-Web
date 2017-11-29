function showDialog(title, content, showBtnCancel, okHandler){
	var oOverlay = document.createElement('div');
	oOverlay.className = 'overlay';
	document.body.appendChild(oOverlay);	
	var oWrapper = 	document.createElement('div');
	oWrapper.className = 'wrapper';
	document.body.appendChild(oWrapper);
	var oHeader = document.createElement('div');
	oHeader.className = 'header';
	oWrapper.appendChild(oHeader);
	var oTitle = document.createElement('span');
	oTitle.className = 'title';
	oTitle.innerHTML = title;
	oHeader.appendChild(oTitle);
	var oBtnClose = document.createElement('span');
	oBtnClose.className = 'close-btn';
	oBtnClose.innerHTML = '[ X ]';
	oBtnClose.onclick = function(){
		document.body.removeChild(oOverlay);
		document.body.removeChild(oWrapper);
	};
	oHeader.appendChild(oBtnClose);
	var oBody = document.createElement('div');
	oBody.className = 'body';
	//oBody.innerHTML = content;
	// oBody.setAttribute("background","blue");
	var $oBody=$('<div class="body"></div>');
	$oBody.attr("background-color","blue");
	oWrapper.appendChild(oBody);

	var oBlank=document.createElement("div");
	oBlank.className="blank";
	oBody.appendChild(oBlank);

	var oLine1=document.createElement("div");
	oLine1.className="line";
	oBody.appendChild(oLine1);

	var otextName1=document.createElement("div");
	otextName1.className="textname";
	otextName1.innerHTML='账号';
	oLine1.appendChild(otextName1);

	var otextInput1=document.createElement("input");
	otextInput1.className="textinput";
	otextInput1.setAttribute("type","text");
	oLine1.appendChild(otextInput1);

	var oLine2=document.createElement("div");
	oLine2.className="line";
	oBody.appendChild(oLine2);

	var otextName2=document.createElement("div");
	otextName2.className="textname";
	otextName2.innerHTML='密码';
	oLine2.appendChild(otextName2);

	var otextInput2=document.createElement("input");
	otextInput2.className="textinput";
	otextInput2.setAttribute("type","text");
	oLine2.appendChild(otextInput2);
	// var $oBody=$('<div class="body"></div>');
	// var $oLine=$('<div class="line"> </div>');
	// var $oTextInput=$('<div class="textinput"></div>');
	// var $oTextName=$('<div class="textname"></div>');
	// for(var i=0;i<2;i++){
	// 	$obBody.append($oLine);
	// 	$oLine.append($oTextName);
	// 	$oLine.append($oTextInput);
	// }

	var oFooter = document.createElement('div');
	oFooter.className = 'footer';
	oWrapper.appendChild(oFooter);

	var oBtnOk = document.createElement('button');
	oBtnOk.innerHTML = '确定';
	oBtnOk.onclick = function(){
		var userName="abc";
		var inputUser=otextInput1.value;
		var passName="123";
		var inputPass=otextInput2.value;
		if (userName===inputUser&&passName===inputPass) {
			window.location.href="index.html";
		}
	};

	oFooter.appendChild(oBtnOk);

	if(showBtnCancel){//相当于判断showBtnCancel==true
		var oBtnCancel = document.createElement('button');
		oBtnCancel.innerHTML = '取消';
		oBtnCancel.onclick = oBtnClose.onclick;
		oFooter.appendChild(oBtnCancel);
	}
	

}
