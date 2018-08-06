	 var myDate = new Date();

	// myDate.getYear(); //获取当前年份(2位)
	// myDate.getFullYear(); //获取完整的年份(4位,1970)
	// myDate.getMonth(); //获取当前月份(0-11,0代表1月)
	// myDate.getDate(); //获取当前日(1-31)
	var time=document.getElementById("time");
	time.innerHTML=myDate.getFullYear()+"年"+(myDate.getMonth()+1)+"月"+myDate.getDate()+"日";