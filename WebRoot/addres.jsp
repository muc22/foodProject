<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang=zh-cn>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link href="./resource/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="./resource/main.js"></script>
	<link media="all" type="text/css" rel="stylesheet" href="./resource/app.css">
	<script type="text/javascript" src="js/myfocus-2.0.1.min.js"></script>
	<script type="text/javascript" src="js/mf-pattern/mF_tbhuabao.js"></script>
	<link href="js/mf-pattern/mF_tbhuabao.css" type="mF_tbhuabao.css" />
    <link href="./resource/touming.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		myFocus.set({id:'picBox',width:1330,height:520});
	</script>
	
	<style type="text/css">
		body { background:#eeede8; padding:15px;}
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
                            <li id="nav-index" class="active"><a href="">首页</a></li>
                            <li id="nav-course"><a href="">资源</a>
                            	<ul class ="nav erji_ul" style="height:90px;">
                                
                                	<li ><a href="like/like_showLike">我的收藏</a></li>
                                    <li class="divider"><a href="addres.jsp">我要上传</a></li> 
                                  
                              </ul>
                           </li>
                           <li id="nav-index"><a href="">上传资源</a></li>
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
	<form>
      	<div class="login">
           <a style="color:white;">用户登录<br/></a>
            <div class="log_input">
                       <div class="form-group">
                           <input name="query" type="text"  placeholder="请输入用户名"><br/>
                           <input name="query" type="text"  placeholder="请输入密码">
                       </div>
 		    </div>
            <div class="butt1">
                 <a href="#" style="color:white;">登陆</a>
            </div>
               <div class="butt2" >
                 <a onclick="fToggle('two')" style="color:white;">注册</a>
               </div>
               
            </div>
            
     </form>
</div>
<div id="two">
	<form>
      	<div class="login">
           <a style="color:white;">用户注册<br/></a>
            <div class="log_input">
                       <div class="form-group">
                           <input name="query" type="text"  placeholder="请输入用户名"><br/>
                           <input name="query" type="text"  placeholder="请输入密码">
                       </div>
 		    </div>
            
               <div class="butt2">
                      <a href="#" style="color:white;">注册</a>
               </div>
        </div>
     </form>
</div>      
                
            </div>
      </div>
      </nav>
    </header>
    
    <div class="biii" style="width:1000px; height:400px;">
    <s:form action="res/res_addRes" cssClass="form-horizontal" enctype="multipart/form-data">
    
	   <div class="leftt"  >
   		  <div>
             <show_1 style="width:100px; height:400px;">
             	
             </show_1>
             <show_2 style="width:600px; height:400px;">
             	<text_2>
                     <div class="text_2" style="color:#AAA7A7; margin-left:50px;margin-top:30px">资源名称：
<input type="text" name="res.resname" class="form-control input-sm" style="height:25px;" required>
</div>
                     
                     <div class="text_2" style="color:#AAA7A7; margin-left:50px;margin-top:20px">类型：
<input type="text" name="res.keyword" class="form-control input-sm" style="height:25px;" required></div>
                     
                     <div class="text_2" style="color:#AAA7A7; margin-left:50px;margin-top:20px">描述：
<input type="text" name="res.description" class="form-control input-sm" style="height:25px;" required></div>
                     
                    <br> <input type="file" name="resPhoto" style="margin-left:50px;"/><br>
                     
                     <button type="submit" class="btn btn-custom col-lg-3 col-xs-3" style="margin-left:260px;">提交</button>
                 </text_2>
             </show_2>
            
          </div>
          
        </div>  
          
          </s:form>
       
      </div>
   </div>
    

<div class="bbottom">
	<div class="words" >
    	 J2EE学习小组资源网站 | 联系我们
        
    </div>
    <div class="words" >
    	 By Zhao | Wang | Li | Tao
        
    </div>
</div>
</body>
</html>
