

	var http=require("http");
	http.createServer(function (request,response){
		response.writeHead(200,{'Conten-Type':'text/plain'});
		response.end('ni hao\n');

	}).listen(8888);
	console.log('Server running  at http://127.0.0.1:8888');

