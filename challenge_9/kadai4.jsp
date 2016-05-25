<%-- 
    Document   : kadai4
    Created on : 2016/05/25, 15:36:49
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Calendar cal1 = Calendar.getInstance();
            cal1.set(2016,1,1,0,0,0);
            Date date1 = cal1.getTime();
            out.println(date1.getTime()+"<br>");
            
            Calendar cal2 = Calendar.getInstance();
            cal2.set(2015,12,31,23,59,59);
            Date date2 = cal2.getTime();
            out.println(date2.getTime()+"<br>");
            
            long sa=date1.getTime()-date2.getTime();
            out.println("2016年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差は"+sa+"[ms]です。");
        %>
    </body>
</html>
