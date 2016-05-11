<%-- 
    Document   : kadai2
    Created on : 2016/05/10, 15:59:09
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
          String value = "A";
          String message = " ";
          switch(value){
              case "A":
                  message = "英語";
                  break;
              case "あ":
                  message = "日本語";
                  break;
              default:
                  break;
          }
          out.println(message);
        %>
    </body>
</html>
