<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示music详情</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/music.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  </head>
  
  <body>
  <header>
 <div class="account">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	         <a href="reg.jsp">注册</a>
	         <a href="login.jsp">登录</a>
	       </c:when>
	       <c:otherwise>
	         <c:out value="${customer.name}"></c:out>, 欢迎您!
	       </c:otherwise>
	     </c:choose>
		    
       </div>

  </header>
  <!-- 导航栏以及搜索框 -->
        <div id="top">
            
                <!-- 导航栏 -->
                <div id="nav" class="fl">
                    <ul class="nav">
                         <li>
                            <a href="homepage.jsp">首页</a>
                            <div>
                                <a href="#">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                            <a href="main1.jsp">原创音乐馆</a>
                            <div>
                                <a href="#">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                            <a href="mymusic.jsp">我的音乐</a>
                            <div>
                                <a href="#">主题</a><span>|</span>
                                <a href="#">歌单</a><span>|</span>
                                <a href="#">MV收藏</a><span>|</span>
                                <a href="#">听众</a><span>|</span>
                                <a href="#">收听</a>
                            </div>
                        </li>
                       
                    </ul>
                </div>
                <!-- 搜索 -->
                、
            </div>
		    
    <main>
     <table class="table">
        <tr>  
        <td class="success">歌曲名称</td>
        <td class="warning"><c:out value="${song.songname}"></c:out></td>
          
        </tr> 
        <tr>  
        <td class="warning">单价</td>
       <td class="success"><c:out value="${song.price}"></c:out></td>
          
        </tr> 
        
     </main>
  </body>
</html>
