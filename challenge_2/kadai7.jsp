<%-- 
    Document   : kadai7
    Created on : 2016/05/09, 13:08:06
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
        String param1 = request.getParameter("param1");
        String param2 = request.getParameter("param2");
        String param3 = request.getParameter("param3");
        
        int i = Integer.parseInt(param2);
        int j = Integer.parseInt(param3);
        
            out.println("商品種別 "+param1+"<br>");
            out.println("総額 "+"¥"+i*j+"<br>");
            out.println("小計 "+"¥"+i+"<br>");
            
                if(i*j>=5000){
                    out.println(i*j*0.05+"ポイント"+" 5%ポイント還元");
                }
                else if(i*j>=3000){
                    out.println(i*j*0.03+"ポイント"+" 3%ポイント還元");
                }
        %>
    </body>
</html>
