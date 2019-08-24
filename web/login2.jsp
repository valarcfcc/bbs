<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/15
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%><link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br><br><br><br>
<center>
    <h1>管理员登陆</h1>
    <h1>抽象论坛</h1>

    <br>
    <form method="post" action="login2check.jsp" id="myform">
        <strong>用户名：</strong><input type="text" name="username" size="25" maxlength="16">
        <br><br>
        <strong>密 码：</strong><input type="password" name="password" size="25" maxlength="16">
        <br><br>
        <input type="button" value="登录" onclick="check()">
        <input type="reset" value="清空">
    </form>
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
