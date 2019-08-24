<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" type="text/css" href="bady.css" />
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%@page import="servlet.DB" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 01 Transitional//EN">
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
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>
<body>
<%
    Connection con;
    con = DB.getCon();
    Statement sql;
    ResultSet rs;
    ResultSet rs2;
    int id = Integer.parseInt(request.getParameter("id"));
    String condition = "select * from discuss where id = '" + id + "'";
    sql = con.createStatement();
    rs = sql.executeQuery(condition);
    out.print("<br><br><br><br><center><h2>浏览帖子</h2></center></br>");
    while (rs.next()){
        out.print("<table  align=center width=800 border=5 cellspaci ng=5 cellpadding=5>" +
                "<tr><td width=161><font size=5>主题 </font></td><td width=590>"
                +rs.getString(3)+"</td></tr></table><table  align= center width=800 border=4 cellspacing=4 cellpadding=4>" +
                "<tr><td>发表者 </td><td>"+rs.getString(1)+"</td><td>发表时间 " +
                "</td><td>"+rs.getString(5)+"</td></tr></table>");
        out.print( "<table align=center height=300 width=800 border=4 cellspacing=4 cellpadding=4>" +
                "<tr><td>"+rs.getString(4)+"</td></tr></table>"
        );
    }
//回复
    String condition2="select * from reply where reply = '"+ id +"'";
    rs2=sql.executeQuery(condition2);
    while(rs2.next()){
        out.print("<hr>");
        out.print("<table align=center width=800 border=4 cellspacing=4 cellpadding=4><tr><td width=200>用户  " + rs2.getString(1) + "的回复 </td><td rowspan=2 width=560>" + rs2.getString(2) + "</td></tr><tr><td>回复时间： " + rs2.getString(3) + "</td></tr></table>");
    }
%>
<%
    java.text.SimpleDateFormat simpleDateFormat = new  java.text.SimpleDateFormat("yy-MM-dd HH:mm:ss");
    java.util.Date currentTime = new  java.util.Date();
    String time =  simpleDateFormat.format(currentTime).toString();
%>

<center><a href="onlyreaddissess.jsp">返回</a></center>
<br>

</body>
</html>
