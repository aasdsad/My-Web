<template>
	<ul>
		<li>{{key1}}</li>
		<li>{{key2}}</li>
		<li>{{setkey3()}}</li>
	</ul>
</template>
<script>
	export default{
		name:"keyWord",
		data(){
			return {
				key1:"nice",
				key2:"ok",
				key3:"666"
			}
		},
		methods:{
			setkey3:function(){
				return this.key3+"啊";
			}
		}
	}
</script>