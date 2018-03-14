<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>歌曲添加成功</title>
    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="Refresh" content="2;url=song/song_showSong">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">

  </head>
  
  <body>
  <header>
  		<div class="logo"></div>	    
  </header>
  <main>
    成功添加一首歌曲。
    </main>
  </body>
</html>
