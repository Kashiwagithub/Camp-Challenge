<%-- 
    Document   : kadai2
    Created on : 2016/05/25, 10:49:36
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai2</title>
    </head>
    <body>
        <%
            Date date = new Date();
            SimpleDateFormat sdf = new
            SimpleDateFormat("yyyy年-MM月-dd日 HH時:mm分:ss秒");
            String sdate = sdf.format(date);
            out.print(sdate);
        %>
    </body>
</html>
