<%-- 
    Document   : kadai6
    Created on : 2016/05/10, 16:57:27
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
            int i = 1000, j =100;
            while(i>j){
                i = i / 2;
                out.println(i+"<br>");
            }
        %>
        
    </body>
</html>
