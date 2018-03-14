<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5 >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>歌曲展示页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/music.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="<%=basePath%>images/logo.png">
    
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
 <body>
    <header>
        <div class="wrap">
            <ul class="fr">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	        <li><span>您还未登录,</span><a href="login.jsp">马上登录</a><span></span></li>
            <!--   <li><a href="loginadmin。jsp"><span id="adm"></span>管理员通道</a><span></span></li>   -->  
	       </c:when>
	       <c:otherwise>
	       <!-- <c:out value="${customer.name}"></c:out>, 欢迎您!
                <li><a href="loginadmin.jsp"><span id="adm"></span>管理员通道</a><span></span></li>
                 --> 
	       </c:otherwise>
	     </c:choose>
	     <search>
	  <s:form action="song/song_querySongs" method="post">
      <form class="form-inline">
  <div class="form-group mx-sm-3 mb-2">
    <input type="text" class="search" name="keywords" placeholder="歌曲名称">
  <button type="submit" class="btn btn-primary mb-2">查询</button>
  </div>
</form>
      </s:form> 
      </search>
	     </ul>    
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
        <!-- 内容区 -->
  
  <body>
  <main>
     <a href="shangchuan.jsp" class="btn btn-default" role="button">上传我的音乐</a>
     <a href="bought.jsp" class="btn btn-default" role="button">我购买的音乐</a>
      </main>
  </body>
</html>