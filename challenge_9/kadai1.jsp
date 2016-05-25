<%-- 
    Document   : kadai1
    Created on : 2016/05/24, 18:18:44
    Author     : Wataru
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai1</title>
    </head>
    <body>
        <%
            Calendar cal = Calendar.getInstance();
            cal.set(2016,1,1,0,0,0);
            Date date = cal.getTime();
            out.println(date.getTime());
        %>
    </body>
</html>
