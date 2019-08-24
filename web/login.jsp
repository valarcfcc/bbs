<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><link rel="stylesheet" type="text/css" href="bady.css" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>login</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<br><br><br><br>
<center>
    <h1> 欢迎访问</h1>
    <h1>抽象论坛</h1>

    <br>
    <form method="post" action="logincheck.jsp" id="myform">
        <strong>用户名：</strong><input type="text" name="username" size="25" maxlength="16">
        <br><br>
        <strong>密 码：</strong><input type="password" name="password" size="25" maxlength="16">
        <br><br>
        <a href="regist.jsp"><input type="button" value="注册"></a>
        <input type="button" value="登录" onclick="check()"> <br><br>
        <a href="onlyread.jsp">游客</a></form>
</center>
<script type="text/javascript">
    // 检查表单元素的值是否为空
    function check() {
        var myform = document.getElementById("myform");
        for (var i = 0; i < myform.length; i++) {

            if (myform.elements[i].value == "") {
                alert(myform.elements[i].title + "用户名或密码不能为空");
                myform.elements[i].focus();
                return;
            }
        }
        myform.submit(); // 表单中最后input提交标签用的是button类型，首先不提交表单，在js判断表单项都不为空时 再提交表单。
    }
</script>
</body>
</html>