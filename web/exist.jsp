<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/1
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%><link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>exist</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- 20. <link rel="stylesheet" type="text/css" href="styles.css"> 21. -->
</head>
<body >
<br><br>
<center> <h2>您所注册的用户名已存在，请重新注册！</h2>
    <br><br>
    <h3><input type="button" value="返回" onclick=history.back();></h3>
</center>
</body>
</body>
</html>