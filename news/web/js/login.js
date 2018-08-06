	var arr=new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","P","q","r","s","t","v","w","x","y","z","u","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","Q","P","R","S","T","V","W","X","Y","Z","U","1","2","3","4","5","6","7","8","9","0");
	var brr=new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","P","q","r","s","t","v","w","x","y","z","u","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","Q","P","R","S","T","V","W","X","Y","Z","U","1","2","3","4","5","6","7","8","9","0");
	var crr=new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","P","q","r","s","t","v","w","x","y","z","u","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","Q","P","R","S","T","V","W","X","Y","Z","U","1","2","3","4","5","6","7","8","9","0");
	var drr=new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","P","q","r","s","t","v","w","x","y","z","u","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","Q","P","R","S","T","V","W","X","Y","Z","U","1","2","3","4","5","6","7","8","9","0");

	var name1=document.getElementById("name1");
	var name2=document.getElementById("name2");
	var password1=document.getElementById("password1");
	var password2=document.getElementById("password2");
	var password3=document.getElementById("password3");
	var phone=document.getElementById("phone");
	var check1=document.getElementById("check1");
	var truecode=document.getElementById("truecode");
	var appearcode=document.getElementById("appearcode");
	var submitLogin=document.getElementById("submitLogin");
	var submitregister=document.getElementById("submitregister");

	//判断输入内容并做出警告
	name1.onblur=function(){
		if ((name1.value=="")||(isNaN(name1.value))) {
			document.getElementById("worn1").style.display="block";
			submitLogin.disabled="disabled";
		}
		else{
			document.getElementById("worn1").style.display="none";
			submitLogin.disabled="";		
		}
	}

	name2.onblur=function(){
		if ((name2.value=="")||(isNaN(name2.value))) {
			document.getElementById("worn3").style.display="block";
			submitregister.disabled="disabled";
		}
		else{
			document.getElementById("worn3").style.display="none";
			submitregister.disabled="";		
		}
	}

	password1.onblur=function(){
		if (password1.value=="") {
			document.getElementById("worn2").style.display="block";
			submitLogin.disabled="disabled";
		}
		else{
			document.getElementById("worn2").style.display="none";
			submitLogin.disabled="";
		}
	}

	password2.onblur=function(){
		if (password2.value=="") {
			document.getElementById("worn4").style.display="block";
			submitregister.disabled="disabled";
		}
		else{
			document.getElementById("worn4").style.display="none";
			submitregister.disabled="";
		}
	}

	password3.onblur=function(){
		if ((password3.value!=password2.value)||(password3.value=="")) {
			document.getElementById("worn5").style.display="block";
			submitregister.disabled="disabled";
		}
		else{
			document.getElementById("worn5").style.display="none";
			submitregister.disabled="";
		}
	}

	phone.onblur=function(){
		if ((phone.value=="")||(isNaN(phone.value))) {
			document.getElementById("worn6").style.display="block";
			submitregister.disabled="disabled";
		}
		else{
			document.getElementById("worn6").style.display="none";
			submitregister.disabled="";		
		}
	}
	truecode.onblur=function(){
		if ((truecode.value!=appearcode.innerText)||(truecode.value=="")) {
			document.getElementById("worn7").style.display="block";
			submitregister.disabled="disabled";
		}
		else{
			document.getElementById("worn7").style.display="none";
			submitregister.disabled="";		
		}
	}

	//获取随机验证码
	function appearvalue(){
		var a = Math.floor(Math.random()*62);
    	var br = Math.floor(Math.random()*62);
    	var c = Math.floor(Math.random()*62);
    	var d = Math.floor(Math.random()*62);
		appearcode.innerHTML=arr[a]+brr[br]+crr[c]+drr[d];
	}

	//随机获取颜色
	function valuecolor(){             
        var r = Math.floor(Math.random()*256);
        var g = Math.floor(Math.random()*256);
        var b = Math.floor(Math.random()*256);
        appearcode.style.color = 'rgb('+r+','+g+','+b+')';
        
	}
	appearcode.onclick=function(){
		appearvalue();
		valuecolor();
	}

	//表单验证
	function loginForm(){
		var x=document.getElementById("name1").value;
		if (x==null || x==""){
  			alert("账号必须填写");
  			return false;
  		}
  		var y=document.getElementById("password1").value;
		if (y==null || y==""){
  			alert("密码必须填写");
  			return false;
  		}
	}

	function registerForm(){
		var z=document.getElementById("name2").value;
		if (z==null || z==""){
  			alert("账号必须填写");
  			return false;
  		}
  		var n=document.getElementById("password2").value;
		if (n==null || n==""){
  			alert("密码必须填写");
  			return false;
  		}
  		var m=document.getElementById("password3").value;
		if (m==null || m==""){
  			alert("确认密码必须填写");
  			return false;
  		}
  		var l=document.getElementById("phone").value;
		if (l==null || l==""){
  			alert("手机号必须填写");
  			return false;
  		}
  		var p=document.getElementById("truecode").value;
		if (p==null || p==""){
  			alert("验证码必须填写");
  			return false;
  		}
	}
	//判断是否注册成功
