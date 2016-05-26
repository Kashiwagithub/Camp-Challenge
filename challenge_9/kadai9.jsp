<%-- 
    Document   : kadai9
    Created on : 2016/05/26, 14:56:59
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.txt.*"%>
<%@page import = "java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai9</title>
    </head>
    <body><%
            File txt = new File("/Applications/NetBeans/apache-tomcat-8.0.27/webapps/ROOT/WEB-INF/kadai8.txt");
            FileReader fr = new FileReader(txt);
            BufferedReader br = new BufferedReader(fr);
            out.print(br.readLine());
            br.close();
          %>
    </body>
</html>
