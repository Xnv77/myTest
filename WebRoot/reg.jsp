﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html5>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    <meta charset="utf-8">
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
  <header>
  		<div class="logo"></div>
		    
    </header>
     <!--  
    <main>
    <table>
    
    <s:form action="customer/customer_reg" method="post">
    <tr>
    <td> <s:textfield name = "customer.name" label="用户名">用户名</s:textfield></td>
    <td><s:textfield name = "customer.password" label="密码">密码</s:textfield></td>
    <td><s:textfield name = "customer.number" label="账号">账号</s:textfield></td>
    </tr>
    <tr>
    <th><s:submit value="提交"></s:submit></th>
    <th><s:reset value = "重填"></s:reset></th>
    </tr>
    </s:form>
    </table>
    </main>
   -->
  <main class="bg">
 <s:form action="customer/customer_reg" method="post" cssclass="login">
 <h3>注册页面</h3>
 <div class="form-group">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="text" name="customer.name" class="form-control" placeholder="用户名" required>
 </div>
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="password" name="customer.password" class="form-control" placeholder="密码" required>
      </div>
      <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-ul fa-lock"></i></span>
 <input type="varchar" name="customer.number" class="form-control" placeholder="验证密码" required>
      </div>
      </div>
      <button type="submit" class="btn btn-success">注册</button>
    </s:form>
    </main>
  </body>
</html>
