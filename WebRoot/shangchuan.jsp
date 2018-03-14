<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>没有用的主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
  </head>
  
  <body>
  	<!-- <s:form action ="song/song_addSong" method="post">
  	<s:textfield name="song.songname" label="名称"></s:textfield>
  	<s:textfield name="song.price" label="价格"></s:textfield>
  	<s:submit value="提交"></s:submit> 	
  	</s:form> -->
  	<header>
  		<div class="logo"></div>	    
  </header>
  	
  	<main class="bg">
 <s:form action="song/song_addSong" method="post" cssclass="login">
 <div class="form-group">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="text" name="song.songname" class="form-control" placeholder="名称" required>
 </div>
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="varchar" name="song.price" class="form-control" placeholder="价格" required>
      </div>
      </div>
      <button type="submit" class="btn btn-success">提交</button>
    </s:form>
    </main>
  </body>
</html>
