<%-- 
    Document   : kadai5
    Created on : 2016/05/10, 16:52:52
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
            for(int i=0; i<=100; i++){
                out.println(i+"<br>");
            }
        %>
    </body>
</html>