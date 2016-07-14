function openNew(){
	//获取页面的高度和宽度
	var sWidth=document.body.scrollWidth;
	var sHeight=document.body.scrollHeight;
	
	//获取页面的可视区域高度和宽度
	var wHeight=document.documentElement.clientHeight;
	
	var oMask=document.createElement("div");
		oMask.id="mask";
		oMask.style.height=sHeight+"px";
		oMask.style.width=sWidth+"px";
		document.body.appendChild(oMask);
	var oLogin=document.createElement("div");
		oLogin.id="login";
		oLogin.innerHTML="<div class='loginCon'> <div class='log_txt'><ul><li class='no'>账号：<input type='text' required></li><li class='pass'>密码：<input type='password' required></li></ul></div><div class='btn_log'><a href='../Html/success.html'><input type='submit' value='登录'></a></div><div class='btn_reg'><button type='button'><a href='reg.html' target='_blank'>注册</a></button></div><div id='close'>点击关闭</div></div>";
		document.body.appendChild(oLogin);

	
	//获取登陆框的宽和高
	var dHeight=oLogin.offsetHeight;
	var dWidth=oLogin.offsetWidth;
		//设置登陆框的left和top
		oLogin.style.left=sWidth/2-dWidth/2+"px";
		oLogin.style.top=wHeight/2-dHeight/2+"px";
		//点击关闭按钮
	var oClose=document.getElementById("close");
	
		//点击登陆框以外的区域也可以关闭登陆框
		oClose.onclick=oMask.onclick=function(){
					document.body.removeChild(oLogin);
					document.body.removeChild(oMask);
					};
					};
					
	window.onload=function(){
			var oBtn=document.getElementById("btnLogin");
				//点击登录按钮
				oBtn.onclick=function(){
					openNew();
					return false;
					}
				
		}