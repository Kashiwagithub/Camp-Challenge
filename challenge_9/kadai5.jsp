<%-- 
    Document   : kadai5
    Created on : 2016/05/25, 16:37:45
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai5</title>
    </head>
    <body>
        <%
            String name = "Kashwiagi";
            out.println("Kashiwagiは"+name.length()+"文字です<br>");
            out.println("文字列Kashiwagiは"+"Kashiwagi".getBytes("UTF-8").length+"byteです。");
        %>    
    </body>
</html>
