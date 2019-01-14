var http = require('http');
var fs=require('fs');
var events=require('events');
var eventEmitter=new events.EventEmitter();
var data={
    remark:"hello,world"
};
http.createServer(function (request, response) {
    // 发送 HTTP 头部 
    // HTTP 状态值: 200 : OK
    // 内容类型: text/plain
    response.writeHead(200, {'Content-Type': 'text/plain'});
    // 发送响应数据 "Hello World"
    if(data.hasOwnProperty("remark")){
        response.end(data.remark);
        //绑定replace事件的监听器replaceHandle
        eventEmitter.on('replace',replaceHandle);
        //我们定义一个定时器，让他在一秒之后触发，replace事件，替换掉hello，world中world
        setTimeout(() => {
            eventEmitter.emit('replace',response);
        }, 3000);
    }
}).listen(8888);
// 终端打印如下信息
console.log('Server running at http://127.0.0.1:8888/');
//定义监听器行为
function replaceHandle(response){
    //var name = fs.readFileSync('name/name.txt').toString();
    fs.readFile("name/name.txt",(err,dataT)=>{
        if(err) return console.error(err);
        data.remark=data.remark.replace('world',dataT.toString())
        response.end(data.remark);
    })
}