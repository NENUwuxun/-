	//关闭广告
	var closebut1=document.getElementById("closebut1");
	var left1=document.getElementById("adv-left1");

	var closebut3=document.getElementById("closebut3");
	var right1=document.getElementById("adv-right1");


	closebut1.onclick=function(){
		left1.style.display="none";
	}

	closebut3.onclick=function(){
		right1.style.display="none";
	}

	//开、关灯 护眼模式
	var light=document.getElementById("light");
	var eyes=document.getElementById("eyes");
	var body=document.getElementById("body");

	light.onclick=function(){
		if (light.value=="关灯") {
			light.value="开灯";
			body.style.backgroundColor="#222222";
		}
		else{
			if (light.value=="开灯") {
				light.value="关灯";
				eyes.value="护眼模式";
				body.style.backgroundColor="#ffffff";
			}
		}	
	}
	eyes.onclick=function(){
		if ((eyes.value=="护眼模式")&&(light.value=="关灯")) {
			eyes.value="默认模式";
			body.style.backgroundColor="#8fbc8f";
		}
		else{
			if (eyes.value=="默认模式") {
				eyes.value="护眼模式";
				body.style.backgroundColor="#ffffff";
			}
		}	
	}

	//返回页面顶部
	var gotop=document.getElementById("gotop");
	gotop.onclick=function(){
		scrollTo(0,0);
	}

	//导航栏样式
	var li1=document.getElementById("nav-li1");
	var li2=document.getElementById("nav-li2");
	var li3=document.getElementById("nav-li3");
	var li4=document.getElementById("nav-li4");
	var li5=document.getElementById("nav-li5");
	var li6=document.getElementById("nav-li6");
	var li7=document.getElementById("nav-li7");
	var li8=document.getElementById("nav-li8");
	var li9=document.getElementById("nav-li9");
	var li10=document.getElementById("nav-li10");
	var li11=document.getElementById("nav-li11");
	var li12=document.getElementById("nav-li12");
	var li13=document.getElementById("nav-li13");
	var li14=document.getElementById("nav-li14");

	function clearall(){
		li1.style.backgroundColor="#0b6cb8";
		li1.style.borderColor="#0b6cb8";
		li2.style.backgroundColor="#0b6cb8";
		li2.style.borderColor="#0b6cb8";
		li3.style.backgroundColor="#0b6cb8";
		li3.style.borderColor="#0b6cb8";
		li4.style.backgroundColor="#0b6cb8";
		li4.style.borderColor="#0b6cb8";
		li5.style.backgroundColor="#0b6cb8";
		li5.style.borderColor="#0b6cb8";
		li6.style.backgroundColor="#0b6cb8";
		li6.style.borderColor="#0b6cb8";
		li7.style.backgroundColor="#0b6cb8";
		li7.style.borderColor="#0b6cb8";
		li8.style.backgroundColor="#0b6cb8";
		li8.style.borderColor="#0b6cb8";
		li9.style.backgroundColor="#0b6cb8";
		li9.style.borderColor="#0b6cb8";
		li10.style.backgroundColor="#0b6cb8";
		li10.style.borderColor="#0b6cb8";
		li11.style.backgroundColor="#0b6cb8";
		li11.style.borderColor="#0b6cb8";
		li12.style.backgroundColor="#0b6cb8";
		li12.style.borderColor="#0b6cb8";
		li13.style.backgroundColor="#0b6cb8";
		li13.style.borderColor="#0b6cb8";
		li14.style.backgroundColor="#0b6cb8";
		li14.style.borderColor="#0b6cb8";
	}

	li1.onclick=function(){
		clearall();
		li1.style.backgroundColor="#4155bb";
		li1.style.borderColor="#b82222";
	}
	li2.onclick=function(){
		clearall();
		li2.style.backgroundColor="#4155bb";
		li2.style.borderColor="#b82222";
	}
	li3.onclick=function(){
		clearall();
		li3.style.backgroundColor="#4155bb";
		li3.style.borderColor="#b82222";
	}
	li4.onclick=function(){
		clearall();
		li4.style.backgroundColor="#4155bb";
		li4.style.borderColor="#b82222";
	}
	li5.onclick=function(){
		clearall();
		li5.style.backgroundColor="#4155bb";
		li5.style.borderColor="#b82222";
	}
	li6.onclick=function(){
		clearall();
		li6.style.backgroundColor="#4155bb";
		li6.style.borderColor="#b82222";
	}
	li7.onclick=function(){
		clearall();
		li7.style.backgroundColor="#4155bb";
		li7.style.borderColor="#b82222";
	}
	li8.onclick=function(){
		clearall();
		li8.style.backgroundColor="#4155bb";
		li8.style.borderColor="#b82222";
	}
	li9.onclick=function(){
		clearall();
		li9.style.backgroundColor="#4155bb";
		li9.style.borderColor="#b82222";
	}
	li10.onclick=function(){
		clearall();
		li10.style.backgroundColor="#4155bb";
		li10.style.borderColor="#b82222";
	}
	li11.onclick=function(){
		clearall();
		li11.style.backgroundColor="#4155bb";
		li11.style.borderColor="#b82222";
	}
	li12.onclick=function(){
		clearall();
		li12.style.backgroundColor="#4155bb";
		li12.style.borderColor="#b82222";
	}
	li13.onclick=function(){
		clearall();
		li13.style.backgroundColor="#4155bb";
		li13.style.borderColor="#b82222";
	}
	li14.onclick=function(){
		clearall();
		li14.style.backgroundColor="#4155bb";
		li14.style.borderColor="#b82222";
	}
