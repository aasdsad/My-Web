const path=require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
/*const ExtractTextPlugin=require("extract-text-webpack-plugin");*/
module.exports={
	//js执行文件的入口
	/*entry:"./main.js",*/
	entry: {
		main: './src/js/main.js',
	    show: './src/js/show.js'
	},
	output:{
		//执行完main.js之后，就将main.js中所有的依赖的模块都合并输出到这个文件
		/*filename:"bundle.js",*/
		filename: '[name].bundle.js',
		//将输出的文件(在本项目中这个文件就是bundle.js，因为所有的模块都输出了这个文件里)都放在dist目录下
		path:path.resolve(__dirname,"./dist")
	},
	devtool: 'inline-source-map',//用于在控制台输出错误，不要再生产环境安装它
	plugins: [
		//用于清除每次build之前的重复文件，只保留最新的文件
		new CleanWebpackPlugin(['dist']),
		/*new HtmlWebpackPlugin({
			title: 'hello,webpack'
		})*/
   	],
	module:{//这种方式可以将css文件合并到js文件中，但实际开发中往往需要将css文件作为一个单独的文件存放，所以这种方式并不理想
		rules:[
			{
				//用正则表达式去匹配要用该loader转换的css文件
				test:/\.css$/,
				use:[//从后往前执行,以下方式是通过object的形式实现的，也可以通过querystring的方式实现
					'style-loader',//第三步将css内容注入javascript
					{
						loader:'css-loader',//第一步先用css-loader读取css文件
						options:{//第二步将css文件进行压缩
							minimize:true,
						}
					}
				]
			},
			{
				//处理图片内容
		    	test: /\.(png|svg|jpg|gif)$/,
		        use: [
		           'file-loader'
		        ]
		   	},
		   	{
		   		//处理文字
		        test: /\.(woff|woff2|eot|ttf|otf)$/,
		        use: [
		           'file-loader'
		        ]
		    }
		]
	},
/*	module:{//利用plugins的钩子函数将每一个css文件单独作为一个文件存放
		rules:[
			{
				//用正则表达式去匹配要用该loader转换的css文件
				test:/\.css$/,
				loaders:ExtractTextPlugin.extract({
					use:['css-loader'],
				})
			},
			{
		    	test: /\.(png|svg|jpg|gif)$/,
		        use: [
		           'file-loader'
		        ]
		   	}
		]
	},
	plugins:[
		new ExtractTextPlugin({
			filename:`[name]_[contenthash].css`,
		}),
	]*/
}