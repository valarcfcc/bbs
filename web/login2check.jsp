<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/1
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%><link rel="stylesheet" type="text/css" href="bady.css" />
<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD H TML 4.01 Transitional//EN">
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
<body >
<% request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8"); %>
<%
    try{
        String name = "admin";
        String pw = "admin";
        String username=request.getParameter("username");
        String password=request.getParameter("password");
            if(username.equals(name)&&password.equals(pw)){//对比获取参数equals和获取参数getString是否一致
                response.sendRedirect("delete.jsp" ); // 登录成功
            }

        else{
            response.getWriter().print("登录失败！账号或密码不正确");
            response.setHeader("refresh","2; URL=login2.jsp");
        }
    }catch(Exception e)
    {
        e.printStackTrace();
        response.getWriter().print("错误"+e);
        response.setHeader("refresh","3; URL=login2.jsp");
    }
%>
</body>
</html>