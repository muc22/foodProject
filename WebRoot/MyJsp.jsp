<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang=zh-cn>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
     <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <link href="<%=basePath %>resource/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="<%=basePath %>resource/main.js"></script>
	<link media="all" type="text/css" rel="stylesheet" href="<%=basePath %>resource/app.css">
	<script type="text/javascript" src="<%=basePath %>js/myfocus-2.0.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/mf-pattern/mF_tbhuabao.js"></script>
	<link href="<%=basePath %>js/mf-pattern/mF_tbhuabao.css" type="mF_tbhuabao.css" />
    <link href="<%=basePath %>resource/touming.css" rel="stylesheet" type="text/css" />
    
    
    
    
	<script type="text/javascript">
		myFocus.set({id:'picBox',width:1330,height:520});
	</script>
	
	<style type="text/css">
		body { background:#fff; padding:15px;}
		#2{ width:560px; height:300px;}
    </style>

    
	<title>小饼干资源网</title>
</head>

<body>
	<div class="home">

	    <header class="header">
	    <nav class="navbar navbar-default navbar-fixed-top">
    	    <div class="container">
        	    <div class="row">
            	    <div class="hidden-xs hidden-sm col-md-3 col-lg-3">
                	    <div class="navbar-header navbar-left">
                    	    <a class="navbar-brand-mc" href="http://micourse.net/">
                        	<img src="./resource/logo.png" alt="logo" width="100" height="50">
                        	</a>	
                    	</div>
                	</div>
                    
                <div class="hidden-xs col-sm-5 col-md-5 col-lg-4">
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li id="nav-index" class="active"><a href="MyJsp.jsp">首页</a></li>
                            <li id="nav-course"><a href="">资源</a>
                            	<ul class ="nav erji_ul" style="height:90px;">
                                
                                	<li ><a href="like/like_showLike">我的收藏</a></li>
                                    <li class="divider"><a href="addres.jsp">我要上传</a></li> 
                                  
                              </ul>
                           </li>
                        </ul>
                    </div>
                </div>
                

 				<div class=" col-sm-3 col-md-2 col-lg-3">
              	    <div class="nav pull-right">
                         <ul class="nav navbar-nav" >
                         
	                         <c:choose>
			      				 <c:when test="${user.username ==null}">
		                            <li ><a onclick="fToggle('one')">登录</a></li>
		                            <li ><a onclick="fToggle('two')">注册</a></li>
	                             </c:when>
			       			 	 <c:otherwise>
						            <li><a><c:out value="${user.username}"></c:out>, 欢迎您!</a></li>
						         </c:otherwise>
						    </c:choose>
                         </ul>
                    </div>
                </div>

<div id="one">
	
	  <s:form action="user/user_login" method="post"  cssClass="login">
      	<div class="login">
           <a style="color:white;">用户登录<br/></a>
            <div class="log_input">
                       <div class="form-group">
                           <input name="user.username" type="text"  placeholder="请输入用户名" required><br/>
                         <s:fielderror fieldName="user.username" cssClass="fielderror"/>
                           <input name="user.password" type="password"  placeholder="请输入密码" required>
                         <s:fielderror fieldName="user.password" cssClass="fielderror"/>
                       </div>
 		    </div>
            <div class="butt1">
                 <button type="submit" style="color:white;">登陆</button>
            </div>
           
               <div class="butt2" >
                 <a onclick="fToggle('two')" style="color:white;">注册</a>
               </div>
                
            </div>
            </s:form>
    
</div>
<div id="two">
	<form>
	  <s:form action="user/user_reg" method="post" cssClass="login">
      	<div class="login">
           <a style="color:white;">用户注册<br/></a>
            <div class="log_input">
                       <div class="form-group">
                           <input name="user.username"  type="text"  placeholder="请输入用户名"><br/>
                           <s:fielderror fieldName="user.username" cssClass="fielderror"/>
                           <input name="user.password" type="text"  placeholder="请输入密码">
                           <s:fielderror fieldName="user.password" cssClass="fielderror"/>
                       </div>
 		    </div>
            
               <div class="butt2">
                      <button type="submit" style="color:white;">注册</button>
               </div>
        </div>
        </s:form>
     </form>
</div>      
                
            </div>
      </div>
      </nav>
    </header>
            
         
     <div id="picBox" style="width:1314px;height:500px;"><!--焦点图盒子-->
	  <div class="loading"><img src="./myFocus Demo v2.0.1/img/loading.gif" alt="请稍候..." /></div>
	  <div class="pic"><!--内容列表(li数目可随意增减)-->
	  	<ul>
            <li><a href="#"><img src="./myFocus Demo v2.0.1/img/1.jpg" thumb="" width="1330px" height="520px"/></a></li>
            <li><a href="#"><img src="./myFocus Demo v2.0.1/img/7.jpg" thumb="" width="1330px" height="520px" /></a></li>
            <li><a href="#"><img src="./myFocus Demo v2.0.1/img/8.jpg" thumb="" width="1330px" height="520px"/></a></li>
            <li><a href="#"><img src="./myFocus Demo v2.0.1/img/4.jpg" thumb="" width="1330px" height="520px" /></a></li>
            <li><a href="#"><img src="./myFocus Demo v2.0.1/img/2.jpg" thumb="" width="1330px" height="520px" /></a></li>
        
           	 </ul>
          </div>
        </div>

 <div>
   
 </div>

<div class="photo" style="width:800px; height:1000px;">
	<aaa>
        <div class="pho"  >
       
           <li>
               <a href="res/res_showDetail?res.resname=c "><img src="./img/1.jpg" /></a>
                        &nbsp资源名称：  <a href="res/res_showDetail?res.resname=c " >c
                           <s:property value="resname"/>
	                </a>
             <a href="like/like_addLike?like.res.resname=c &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
           <li>
               <a href="res/res_showDetail?res.resname=angry bird "><img src="./img/7.jpg" style="height:160px"/></a>
                     &nbsp资源名称：  <a href="res/res_showDetail?res.resname=angry bird " >angry bird 
                           <s:property value="resname"/>
	                </a>
          <a href="like/like_addLike?like.res.resname=angry bird &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br>&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
           <li>
               <a href="res/res_showDetail?res.resname=blue "><img src="./img/10.jpg" /></a>
                  &nbsp资源名称：  <a href="res/res_showDetail?res.resname=blue " >blue 
                           <s:property value="resname"/>
	                </a>
           <a href="like/like_addLike?like.res.resname=blue &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
            
          
        </div>
    </aaa>
   
    <aaa>
        <div class="pho"  >
            <li>
               <a href="res/res_showDetail?res.resname=hero "><img src="./img/3.jpg" style="height:160px"/></a>
                    &nbsp  资源名称：  <a href="res/res_showDetail?res.resname=hero " >hero 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=hero &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
           <li>
               <a href="res/res_showDetail?res.resname=computer "><img src="./img/9.jpg "/></a>
                   &nbsp  资源名称：  <a href="res/res_showDetail?res.resname=computer " >computer 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=computer &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br>&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
            <li>
               <a href="res/res_showDetail?res.resname=If You "><img src=./img/11.jpg /></a>
                   &nbsp      资源名称：  <a href="res/res_showDetail?res.resname=If You " >If You 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=If You &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
        </div>
    </aaa>
    <aaa>
        <div class="pho"  >
            <li>
               <a href="res/res_showDetail?res.resname=java "><img src="./img/2.jpg" /></a>
                 &nbsp      资源名称：  <a href="res/res_showDetail?res.resname=java " >java 
                           <s:property value="resname"/>
	                </a>
           <a href="like/like_addLike?like.res.resname=java &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
            <li>
               <a href="res/res_showDetail?res.resname=moon "><img src="./img/5.jpg" /></a>
                &nbsp    资源名称：  <a href="res/res_showDetail?res.resname=moon " >moon
                           <s:property value="moon"/>
	                </a>
           <a href="like/like_addLike?like.res.resname=moon &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
           <li>
               <a href="res/res_showDetail?res.resname=NowYouSeeMe "><img src="./img/12.jpg" style="height:140px"/></a>
                  &nbsp      资源名称：  <a href="res/res_showDetail?res.resname=NowYouSeeMe " >Now You See Me 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=Now You See Me &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
        </div>
    </aaa>
    <aaa>
        <div class="pho"  >
            <li>
               <a href="res/res_showDetail?res.resname=Rose "><img src="./img/6.jpg" /></a>
                  &nbsp      资源名称：  <a href="res/res_showDetail?res.resname=Rose " >Rose 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=Rose &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
            <li>
               <a href="res/res_showDetail?res.resname=ZOOTOPIA "><img src="./img/8.jpg" /></a>
                  资源名称：  <a href="res/res_showDetail?res.resname=ZOOTOPIA " >ZOOTOPIA 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=ZOOTOPIA &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
            <li>
               <a href="res/res_showDetail?res.resname=luncy "><img src="./img/4.jpg" /></a>
               &nbsp     资源名称：  <a href="res/res_showDetail?res.resname=luncy " >luncy 
                           <s:property value="resname"/>
	                </a>
            <a href="like/like_addLike?like.res.resname=luncy &like.user.username=<s:property value='#session.user.username'/>" class="add-like">   <br><br> &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp&nbsp 添加收藏</a>
            </li>
        </div>
    </aaa>
</div>



                


<div class="bbottom">
	<div class="words" >
    	 J2EE学习小组资源网站 | 联系我们
        
    </div>
    <div class="words" >
    	 By Zhao | Wang | Li | Tao
        
    </div>
</div>


</div>
</body>
</html>
