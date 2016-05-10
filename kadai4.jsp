<%-- 
    Document   : kadai4
    Created on : 2016/05/06, 17:52:33
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int a = 8;
        int b = 2;
        out.println((a+b)+"<br>"); //和
        out.println((a-b)+"<br>"); //差
        out.println((a*b)+"<br>"); //乗
        out.println((a/b)+"<br>"); //商
        %>
    </body>
</html>
