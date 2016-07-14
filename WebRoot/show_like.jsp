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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
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
                            <li id="nav-index" class="active"><a href="MyJsp.jsp">首页</a></li>
                            <li id="nav-course"><a href="">资源</a>
                            	<ul class ="nav erji_ul" style="height:90px;">
                                
                                	<li ><a href="like/like_showLike">我的收藏</a></li>
                                    <li class="divider"><a href="addres.jsp">我要上传</a></li> 
                                  
                              </ul>
                           </li>
                           <li id="nav-index"><a href="">我的收藏</a></li>
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
	      <s:iterator value="likeList" status="status">
      <div class="lefta"  >
        <div>
             <show_a>
             	<bb>
                    <div class="phoo"  >
                       <li><img src="${res.filepath}"   style="border-radius:700px;" thumb=""/> </li>
                    </div>
                </bb>
             </show_a>
           <show_b>
             	<text_2 style="float:left;">
             	 
             	 
                     <div class="text_a" style="color:#AAA7A7">资源名称：<s:property value="res.resname"></s:property></div>
                </text_2>
                 <text_2 style="float:right;margin-top:180px;margin-right:10px;">
                 	
                 	<a href="res/res_showDetail?res.resname=<s:property value="res.resname"></s:property>">
                    <sq style="width:90px; height:35px; border-radius:3px;margin-right:1px">
                    	<div class="text_b"  style="color:white">查看详情</div>
                    </sq>
                    </a>
                   
                    <a href="like/like_deleteLike?like.id=<s:property 
	                  value='id'/>">
                    <sq style="width:90px; height:35px; border-radius:3px;margin-right:50px">
                    	<div class="text_b"  style="color:white">取消收藏</div>
                    </sq>
                     
                    </a>
                 
                 </text_2>  
            </show_b>
		</div>
      </div>
          </s:iterator>
</div>
   </div>
    


</body>
</html>
