<%-- 
    Document   : kadai2
    Created on : 2016/05/26, 17:22:41
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai2</title>
    </head>
    <body>
        <%
        
        request.setCharacterEncoding("UTF-8");
        String a = request.getParameter("name");
        String b = request.getParameter("sex");
        String c = request.getParameter("hobby");
        out.println("名前:"+a+"<br>");
        out.println("性別:"+b+"<br>");
        out.println("趣味:"+c+"<br>");
        %>
    </body>
</html>
