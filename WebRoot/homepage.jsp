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
<style>li{liststyle:none;}</style>
  </head>
  
 <body>
    <header>
        <div class="wrap">
            <ul class="fr">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	        <li><span>您还未登录,</span><a href="login.jsp">马上登录</a><span></span></li> 
	       </c:when>
	        <c:otherwise>
	         <c:out value="${customer.name}"></c:out>, 欢迎您!
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
      </div>	
    <div class="logo"></div>
    </header>    
    <!-- 导航栏以及搜索框 -->
        <div id="top">
            
                <!-- 导航栏 -->
                <div id="nav" class="fl">
                    <ul class="nav">
                         <li>
                            <a href="homepage.jsp" class="btn btn-default" role="button">  首页   </a>
 
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
                             <a href="main1.jsp" class="btn btn-default" role="button"> 音乐馆  </a>
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
                             <a href="mymusic.jsp" class="btn btn-default" role="button">我的音乐</a>
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
    <lunbo>
                <!-- 轮播图 -->
                <div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" ></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/yiyangqianxi1.jpg" alt="First slide" style="width:100%;height:100%">
            <div class="carousel-caption">易烊千玺全新专辑</div>
        </div>
        <div class="item">
            <img src="images/wuyuetian.jpg" alt="Second slide" style="width:100%;height:100%">
            <div class="carousel-caption">五月天第二人生</div>
        </div>
        <div class="item">
            <img src="images/Tylor.jpg" alt="Third slide" style="width:100%;height:100%">
            <div class="carousel-caption">Reputation</div>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
    </div>
    </lunbo>
     <div id="main" class="wrap">
                <!-- 原创新歌首发 -->
                <div id="online_first">
                    <div class="section_top red_border">
                        <h1>原创新歌首发</h1><a href="main1.jsp">/更多</a>
                        <div class="fr">
                            <a href="#" class="pre"></a>
                            <a href="#" class="next"></a>
                        </div>
                    </div>
                    <ul>
                        <li class="1"><a href="song/song_showDetail?song.songid=1"><img src="images/yiyangqianxi4.jpg" alt="" /><h3>nothing to lose</h3></a></li>
                        <li class="2"><a href="song/song_showDetail?song.songid=2"><img src="images/chengli1.png" alt="" /><h3>如也</h3></a></li>
                        <li class="3"><a href="song/song_showDetail?song.songid=3"><img src="images/xujun.jpg" alt="" /><h3>九儿</h3></a></li>
                        <li class="4"><a href="song/song_showDetail?song.songid=4"><img src="images/zhangxueyou.jpg" alt="" /><h3>命运</h3></a></li>
                       
                      
                      <li class="5"><a href="song/song_showDetail?song.songid=5"><img src="images/Hebe.jpg" alt="" /><h3>三千里</h3></a></li>
                        <li class="6"><a href="song/song_showDetail?song.songid=6"><img src="images/jiushiguang.jpg" alt="" /><h3>Yalasuo</h3></a></li>
                        <li class="7"><a href="song/song_showDetail?song.songid=7"><img src="images/rensuxi.jpg" alt="" /><h3>阿萨辛摇篮曲</h3></a></li>
                        <li class="8"><a href="song/song_showDetail?song.songid=8"><img src="images/Taylor2.jpg" alt="" /><h3>lemon tree</h3></a></li>
                    
                       </ul>
                       
                     
                </div>
                <div class="cl"></div>
                <!-- 最新推荐 -->
                <div id="recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最新推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                            <div class="language fr">
                                <a href="#" class="select">华语</a>
                                <a href="#">英语</a>
                                <a href="#">其他</a>
                            </div>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>
                                <li><a class="9" href="song/song_showDetail?song.songid=9">藏族小伙达哇原创rap————44.43</a></li>
                                <li><a class="10" href="song/song_showDetail?song.songid=10">中国有嘻哈原创rap————hug me</a></li>
                                <li><a class="11" href="song/song_showDetail?song.songid=11">伤心就要听情歌————80000</a></li>
                                <li><a class="12" href="song/song_showDetail?song.songid=12">gai爷，c—block倾情巨献————鹳雀楼</a></li>
                                

                            </ul>
                        
                        </div>
                    </div>
                    <!-- 最热推荐 -->
                    <div id="hot_recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最热推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>
                                <li><a class="13" href="song/song_showDetail?song.songid=13">满舒克对亲爱的女孩————做我的猫</a></li>
                                <li><a class="14" href="song/song_showDetail?song.songid=14">失恋没什么大不了————骗自己</a></li>
                                <li><a class="15" href="song/song_showDetail?song.songid=15">致我们单纯的小暗恋————就像你在回应我</a></li>
                                <li><a class="16" href="song/song_showDetail?song.songid=16">防弹少年团帅气爆表————DNA</a></li>
                                
                        </div>
                    </div>
                    <div class="cl"></div> 
    </body>
</html>