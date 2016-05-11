<%-- 
    Document   : kadai5
    Created on : 2016/05/09, 11:48:59
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
            int value =0;
            
                if(value == 1)
                {
                    out.println("1です!<br>");
                }
                
                else if(value == 2)
                {
                    out.println("2です!<br>");
                }
                
                else
                {
                    out.println("その他です!<br>");
                }
        %>
        
    </body>
</html>
