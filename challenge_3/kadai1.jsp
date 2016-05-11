<%-- 
    Document   : kadai1
    Created on : 2016/05/09, 15:36:29
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
          int value = 3; String message = " ";
          switch(value){
              case 1:
                  message = "one";
                  break;
              case 2:
                  message = "two";
                  break;
              default:
                  message = "想定外";
                  break;
          }
          out.println(message);
        %>
    </body>
</html>
