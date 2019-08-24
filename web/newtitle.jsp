<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 13:09
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
    <title>titlepage</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<%
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new java.util.Date();
    String time = simpleDateFormat.format(currentTime).toString();
    request.getSession(true);
    session.setAttribute("time", time);
    %>
<br>
<center><h1></h1></center>
</br>
<center><h2>发表帖子</h2></center>
<br />
<center>
    <form id="myform" action="welcome" method="post" >
        <table width="700" height="400" border="5" cellspacing="5" cellpadding="5">
            <tr >
                <td>姓名 </td><td><input type="text" size=60 name="name" value="<%=session.getAttribute("username")%>" readonly></td>
            </tr>
            <tr >
                <td>E-mail</td><td><input type=text size="60" name="email" value="<%=session.getAttribute("email")%>" readonly></td>
            </tr>
            <tr >
                <td>主题 </td><td><input type="text" size="60" name="subject"></td>
            </tr>
            <tr valign=top >
                <td><p><p>内<p><p>容 </td><td> <textarea rows="10" cols="50" name="content"></textarea></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="button" value= "发表" name="send"onclick="check()">
                    <input type="reset" value="重置 ">
                </td>
            </tr>
        </table>
        <br><br><a href="mainForm.jsp">返回 </a>
    </form>
</center>
<script type="text/javascript">
    // 检查表单元素的值是否为空
    function check(){
        var myform = document.getElementById("myform");
        for(var i=0; i<myform.length; i++ ){
            if(myform.elements[i].value == ""){
                alert(myform.elements[i].title + "发表信息不能为空！");
                myform.elements[i].focus();
                return;
            }
        }
        myform.submit(); // 表单中最后input提交标签用的是button类型，首先不提交表单，在js判断表单项都不为空时 再提交表单。
    }
    </script>
</body>
</html>
