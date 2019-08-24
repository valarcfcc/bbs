<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 15:42
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
    <title>error</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<br><br>
<center><h2>发表失败！</h2>
     <h3> <a href="javascript:history.back()">返回</a>
     </h3>
</center>
</body>
</html>
