<%-- 
    Document   : kadai10
    Created on : 2016/05/16, 11:24:17
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
            String prime = request.getParameter("prime");
            int n = Integer.parseInt(prime);
            int i = 2;
            out.println(prime+"は");
                while(n>=i){
                    if(n%i==0){
                        out.println(i);
                        n=n/i;
                    }else{ 
                        i++;
                    }
                }
                if(i>=10){
                    out.println("←その他");
                }
                else{
                }
        %>
        
    </body>
</html>
