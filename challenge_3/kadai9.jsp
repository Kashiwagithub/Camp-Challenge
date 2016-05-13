<%-- 
    Document   : kadai9
    Created on : 2016/05/13, 11:21:03
    Author     : Wataru
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HashMap<String,String> hmap = new HashMap<String,String>();
            hmap.put("1","AAA");
            hmap.put("hello","world");
            hmap.put("soeda","33");
            hmap.put("20","20");
                for(Map.Entry<String,String> val:hmap.entrySet()){
                    out.println(val.getKey()+"/"+val.getValue());
            }
        %>
    </body>
</html>
