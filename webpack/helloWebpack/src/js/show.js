function show(content){
	/*document.getElementById("app").innerText="hello,"+content;*/
	let div=document.createElement("div");
	div.id='app';
	div.innerText="hello,world.";
	document.body.appendChild(div);
}
module.exports=show;
