<%-- 
    Document   : kadai5
    Created on : 2016/05/09, 14:46:27
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
        double a = 8 , b = 0;
        out.print("a="+a+",");
        out.println("b="+b+"のとき"+"<br>");
        out.println("a+b="+(a+b)+"です"+"<br>"); //和
        out.println("a-b="+(a-b)+"です"+"<br>"); //差
        out.println("a×b="+(a*b)+"です"+"<br>"); //乗
        out.println("a÷b="+(a/b)+"です"+"<br>"); //商
        %>
    </body>
</html>
