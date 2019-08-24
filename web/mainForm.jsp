<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>

<link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path =  request.getContextPath();
    String basePath =  request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML  01 Transitional//EN">

<html>

<head>
    <base href="<%=basePath%>">
    <title>mainpage</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>
<body>
<%
    java.text.SimpleDateFormat simpleDateFormat = new  java.text.SimpleDateFormat("yy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new  java.util.Date();
    String time =  simpleDateFormat.format(currentTime).toString();
%>
<div style="float:right"><a href="login2.jsp">管理员账户</a></div>
<br>
<div style="float:right"><a href="login.jsp">退出登录</a></div>
<br>
<br>
<br>
<center>
    <h1>欢迎登陆</h1>
</center>

<center>
    <table width="1000" height="5" border="5" cellspacing="5" cellpadding="5">

        <tr>
            <td>
                用户：<%=session.getAttribute("username") %>
                登录时间：<%  out.println(time); %></td>
        </tr>
    </table>
    <table width="1000" height="400" border="5" cellspacing="5" cellpadding="5">

        <tr>
            <td>
                <center>
                    <div style="float:left"><a href="dissess.jsp">
                        <img src="image/sungou2.1.jpg" width="230" height="230"  /></a></div>
                    <a href="newtitle.jsp">
                        <img src="image/sungou2.4.jpg" width="230" height="230"  /></a>
                    <div style="float:right"><a href="person.jsp">
                        <img src="image/sungou2.3.jpg" width="230" height="230"  /></a></div>
                    <br><br>
                    <div style="float:left"> <a href="dissess.jsp">  <font size="5">浏览帖子</font></a></div>
                    <a href="newtitle.jsp">  <font size="5">发表帖子</font></a>
                    <div style="float:right"><a href="person.jsp">  <font size="5">个人资料</font></a></div>
                </center>
            </td>
        </tr>
    </table>
</center>
</body>
</html>

