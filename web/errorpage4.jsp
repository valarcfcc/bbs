<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/1
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="bady.css" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!-- 20. <link rel="stylesheet" type="text/css" href="styles.css"> 21. -->
</head>
<body >
<br><br>
<center><h2>修改失败，请按照以下格式填写！</h2>
    <table width="200" border="1" cellspacing="1" cellpadding="1">
        <tr>
            <td><font color="white">性别：</font></td>
            <td><font color="white">1个中文字符</font></td>
        </tr>
        <tr>
            <td><font color="white">年龄：</font></td>
            <td><font color="white">0-3位数字</font></td>
        </tr>
        <tr>
            <td><font color="white">电话：</font></td>
            <td><font color="white">11位数字</font></td>
        </tr>
        <tr>
            <td><font color="white">邮箱：</font></td>
            <td><font color="white">0-40个字符</font></td>
        </tr>
    </table>
    <!-- 保留原页面信息的脚本回退方式 -->
    <h3> <a href="javascript:history.back()">返回</a>
    </h3>
</center>
</body>
</html>
