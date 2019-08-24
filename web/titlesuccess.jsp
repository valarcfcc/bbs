<link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page language="java" pageEncoding="UTF-8"%>
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
</head>
<body>
<br><br>
<center> <h2>恭喜您，发表成功！</h2>
    <br><br>
    <h3><a href="mainForm.jsp">3秒后自动返回主页</a></h3>
    <% response.setHeader("refresh","3; URL=mainForm.jsp");%>
</center>
</body>
</html>
