
<%-- 
    Document   : kadai8
    Created on : 2016/05/26, 1:04:58
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.txt.*" %>
<%@page import = "java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai8</title>
    </head>
    <body>
        <%
            out.println();
            File txt = new File("/Applications/NetBeans/apache-tomcat-8.0.27/webapps/ROOT/WEB-INF/kadai8.txt");
            FileWriter fw = new FileWriter(txt);
            fw.write("My name is Kashiwagi");
            fw.write("Nice to meet you!");
            fw.close();
        %>
        
    </body>
</html>
