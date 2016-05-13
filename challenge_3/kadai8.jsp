<%-- 
    Document   : kadai8
    Created on : 2016/05/13, 10:59:22
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
            String[] str = {"10","100","soeda","hayashi","-20","118","END"};
                for(int i=0; i<str.length;i++){
                    str[2]="33";
            out.println(str[i]);
        }
        %>
    </body>
</html>
