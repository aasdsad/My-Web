function getArgs(){
	var qs=window.location.search.length>0?window.location.search.substring(1):"",
		args={},
		items=qs.length?qs.split("&"):[],
		item=null,
		name=null,
		value=null;
		for(var i=0;i<items.length;i++){
			item=items[i].split("=");
			name=item[0];
			value=item[1];
			if(name.length){
				args[name]=value;
			}
		}
		return args;
}
function getUserName(){
	var qs=(window.location.search.length>0?window.location.search.substring(1):""),
		items=qs.length?qs.split("&"):[];
		console.log(qs);
	var	item=items[0].split("=");
	return item[1];
}