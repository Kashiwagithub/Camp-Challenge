<%-- 
    Document   : kadai3
    Created on : 2016/05/10, 16:10:47
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
            double num = 8.0;
            double count = 20.0;
            for(double i = 0.0; i<count; i++){
                num = num * 8.0;
                out.println(num);   
            }
        %>
    </body>
</html>
