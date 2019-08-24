<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/1
  Time: 19:07
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
     <title>page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css"> 21. -->
</head>
<body>
<br><br>
<center> <h2>恭喜您，注册成功！</h2>
    <br><br>
    <table border="1">
        <tr>
            <th><font size="3">用户名：</font></th>
            <th><font size="3"><%=session.getAttribute("username")%></font></th>
        </tr>
        <tr>
            <th><font size="3">密 码：</font></th>
            <th><font size="3"><%=session.getAttribute("password") %></font></th>
        </tr>
    </table>
    <br><br>
    <h3><a href="login.jsp">现在去登录</a></h3>
</center>
</body>
</html>