<%-- 
    Document   : kadai3
    Created on : 2016/05/25, 14:53:42
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai3</title>
    </head>
    <body>
        <%
            Calendar cal = Calendar.getInstance();
            cal.set(2016,11,4,10,0,0);
            Date date = cal.getTime();
            out.println(date.getTime()+"<br>");
            //Date past = new Date(date.getTime());
            int yy = cal.get(Calendar.YEAR);
            int MM = cal.get(Calendar.MONTH);
            int dd = cal.get(Calendar.DAY_OF_MONTH);
            int HH = cal.get(Calendar.HOUR);
            int mm = cal.get(Calendar.MINUTE);
            int ss = cal.get(Calendar.SECOND);
            out.print(yy+"年-"+MM+"月-"+dd+"日 "+HH+"時:"+mm+"分:"+ss+"秒");
        %>
    </body>
</html>
