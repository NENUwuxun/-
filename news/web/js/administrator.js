
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