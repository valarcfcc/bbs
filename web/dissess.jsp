<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/2
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>

<%@page import="servlet.DB" %>
<%@page import="java.sql.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link rel="stylesheet" type="text/css" href="bady.css" />
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
    Connection con = null;
    con = DB.getCon();//连接数据库
    Statement sql;
    ResultSet rs;
    int MaxNum = 5; //每页容纳的主题论文的最大数目
    int count = 0, firstPage = 1, lastPage = 1, firstNum = 1, lastNum = 1, prePage = 1, nextPage = 2, pageNO = 1;
    /*lastPage是最后一页，firstNum是该页显示的第1条帖子，
    lastNum是该页显示的最后一条帖子，pageNo是请求的页码
    prePage表示前一页，  nextPage表示后一页
*/
    if (request.getParameter("pageNO") == null || request.getParameter(
            "pageNO").equals("")) {
        pageNO = 1;
    } else pageNO = Integer.parseInt(request.getParameter("pageNO"));
    try {
        String condition = "select * from discuss";
        sql = con.createStatement();
        rs = sql.executeQuery(condition);
        while (rs.next()) {
            count++; //计算数据库里一共有多少帖子；
        }
        lastPage = (count / MaxNum + 1);//向下取整
        if (pageNO <= 0) {
            pageNO = 1;
        }
        if (pageNO > lastPage) {
        }
        firstNum = (pageNO - 1) * MaxNum + 1;   //firstNum是该页显示的第1条帖子的ID
        if (pageNO == 1) {
            prePage = 1;
        } else {
            prePage = pageNO - 1;
        }
        if (pageNO >= lastPage) {
            nextPage = pageNO;
        } else {
            nextPage = pageNO + 1;
        }
        String condition2 = "select * from discuss LIMIT " + (firstNum-1) +
                "," + 5;
        ResultSet rs2 = sql.executeQuery(condition2);
        String name, subject,time;
        int id;
        out.print("<table align=center width=800 border=4 cellspacing=4 cellpadding=4>" +
                " <tr><td width = 150 height = 60 ><font size = 5 > 帖子主题"+
                "</font ></td ><td width = 150 ><font size = 5 > 发表者" +
                "</font ></td ><td width = 150 ><font size = 5 > 发表时间 </font></td></tr> ");
        out.print("<br><br><br><br><center><h2>浏览帖子</h2 ></center><br>");
        while (rs2.next()){
            name = rs2.getString(1);
            subject = rs2.getString(3);
            time = rs2.getString(5);
            id = rs2.getInt(7);
            out.print("<table align=center width=800 border=4 cellspacing=4 cellpadding = 4><tr><td width = 150 height = 40><font size = 5 ><a href=detail.jsp?id="+id+">" + subject + "</a></font></td><td width=150><font size=5>" + name + " </font></td><td width = 150 ><font size = 5 > "+time+" </font></td></tr>" );
        }
    } catch (Exception e) {
        System.out.println("捕捉的错误  2");
    }
%>
<table align="center" width="800" border="5" cellspacing="5" cellpadding="5">
    <tr>
        <td>
            <form action="dissess.jsp" method="post">
                <table border="0">
                    <tr>
                        <td>
                            目前页数：<font color="red"><%=pageNO %>
                        </font>
                        </td>
                        <td>
                            总页数：<font color="red"><%=lastPage%>
                        </font>
                        </td>
                        <td>
                            <a href=dissess.jsp?pageNO=<%=firstPage%>>【第一页】</a>
                        </td>
                        <td>
                            <a href=dissess.jsp?pageNO=<%=prePage%>>【上一页】 </a>
                        </td>
                        <td>
                            <a href=dissess.jsp?pageNO=<%=nextPage%>>【下一页】 </a>
                        </td>
                        <td>
                            <a href=dissess.jsp?pageNO=<%=lastPage%>>【最后一页】 </a>
                        </td>
                        <td>
                            输入页次：
                            <input type=text size=3 name=pageNO value=  <%=pageNO %>>

                        </td>
                        <td>
                            <input type=submit name=send value="送出  ">
                        </td>
                    </tr>
                </table>
            </form>
    </tr>
</table>
<center><a href="mainForm.jsp">返回</a></center>

</body>
</html>

