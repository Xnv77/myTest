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
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
  </head>
  
  <body>
     <header>
  		<div class="logo"></div>	    
     </header>
     <!--
     <s:form action="song/song_editSong">
       <h1>编辑歌曲</h1>
       <s:hidden name="song.songid"></s:hidden>
       <s:textfield name="song.songname" label="歌曲名称"></s:textfield>
       <s:textfield name="song.price" label="单价"></s:textfield>
       <s:submit value="提交"></s:submit>
     </s:form>-->
 <main class="bg">
 <s:form action="song/song_editSong" method="post" cssclass="login">
  <s:hidden name="song.songid"></s:hidden>
  <h3>编辑歌曲</h3>
 <div class="form-group">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="text" name="song.songname" class="form-control" placeholder="歌曲名称" required>
 </div>
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="varchar" name="song.price" class="form-control" placeholder="单价" required>
      </div>
      </div>
      <button type="submit" class="btn btn-success">提交</button>
    </s:form>
    </main>
  </body>
</html>
