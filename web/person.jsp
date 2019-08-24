<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>personpage</title>
 </head>
<body>
<br>
<center><h1>抽象论坛</h1></center>
<br >
<center><h2>个人资料查询</h2></center>
<br />
<center>
    <table width="500" height="300" border="5" cellspacing="5" cellpadding="5">
        <tr><td width="129"><font size="5" color="#FFFFFF">用户名</font></td>
            <td width="322"><font size="5" color="#FFFFFF"><%=session.getAttribute("username")%></font></td>
        </tr>
        <tr>
            <td><font size="5" color="#FFFFFF">性 别</font></td>
            <td><font size="5" color="#FFFFFF"><%=session.getAttribute("sex")%></font></td>
        </tr>
        <tr>
            <td><font size="5" color="#FFFFFF">年 龄</font></td>
            <td><font size="5" color="#FFFFFF"><%=session.getAttribute("age")%></font></td>
        </tr>
        <tr>
            <td><font size="5" color="#FFFFFF">电 话</font></td>
            <td><font size="5" color="#FFFFFF"><%=session.getAttribute("tel")%></font></td>
        </tr>
        <tr>
            <td><font size="5" color="#FFFFFF">邮 箱</font></td>
            <td><font size="5" color="#FFFFFF"><%=session.getAttribute("email")%></font></td>
        </tr>
    </table>
</center>
<center><a href="changePerson.jsp">修改资料</a><a href="mainForm.jsp">返回</a></center>
</body>
</html>

