<%--
  Created by IntelliJ IDEA.
  User: valar
  Date: 2018/11/1
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="servlet.DB" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD H TML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
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
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Connection conn = null;
        conn=DB.getCon();
        Statement st=conn.createStatement();
        ResultSet rs= st.executeQuery("select * from UserInfo where username='"+username+"' and password='"+password+"'");
        if(rs.next()){
            if(username.equals(rs.getString("username"))&&password.equals(rs.getString("password"))){//对比获取参数equals和获取参数getString是否一致
              request.getSession(true); // 创建一个 session
                session.setAttribute("username",username);
                session.setAttribute("email",rs.getString("email"));
                session.setAttribute("userIP",request.getRemoteAddr());
                session.setAttribute("enter", "true" ) ;
                session.setAttribute("age",rs.getString("age"));
                session.setAttribute("tel",rs.getString("telephone"));
                session.setAttribute("sex",rs.getString("sex"));
                response.sendRedirect("mainForm.jsp" ); // 登录成功
                 }
        }
        else{
            response.getWriter().print("登录失败！账号或密码不正确");
            response.setHeader("refresh","2; URL=login.jsp");
        }
        rs.close();
        st.close();
        conn.close();
    }catch(Exception e)
    {
        e.printStackTrace();
        response.getWriter().print("错误"+e);
        response.setHeader("refresh","3; URL=login.jsp");
    }
    %>
</body>
</html>