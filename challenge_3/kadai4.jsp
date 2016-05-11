<%-- 
    Document   : kadai4
    Created on : 2016/05/10, 16:38:35
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
            String unite = "A";
            for(int i=0; i<30; i++){
                out.print(unite);
            }
        %>
    </body>
</html>
