<%-- 
    Document   : kadai7
    Created on : 2016/05/25, 17:29:19
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
            String chikan = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅU";
            String ck =chikan.replace("U","う");
            out.println(ck.replace("I","い"));
        %>
    </body>
</html>
