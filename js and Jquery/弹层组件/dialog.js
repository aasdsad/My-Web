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
	oBody.innerHTML = content;
	oWrapper.appendChild(oBody);
	var oFooter = document.createElement('div');
	oFooter.className = 'footer';
	oWrapper.appendChild(oFooter);

	var oBtnOk = document.createElement('button');
	oBtnOk.innerHTML = '确定';
	oBtnOk.onclick = function(){
		okHandler();
	};
	oFooter.appendChild(oBtnOk);

	if(showBtnCancel){//相当于判断showBtnCancel==true
		var oBtnCancel = document.createElement('button');
		oBtnCancel.innerHTML = '取消';
		oBtnCancel.onclick = oBtnClose.onclick;
		oFooter.appendChild(oBtnCancel);
	}
	$("div #find").on("click",function(){
				alert("123");
			})

}
