<%-- 
    Document   : kadai5
    Created on : 2016/05/31, 19:00:31
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession hs = request.getSession(true); //session取得
    
    //初期値session
    boolean shin1 = false;
    boolean shin2 = false;
    boolean shin3 = false;
    String a = "";
    String b = "";
    String c = "";
    
    //sessionの有無を判別
        if(hs.getAttribute("a") != null){
            a = (String)hs.getAttribute("a");
            shin1 = true;
        }
        if(hs.getAttribute("b") != null){
            b = (String)hs.getAttribute("b");
            shin2 = true;
        }
        if(hs.getAttribute("c") != null){
            c = (String)hs.getAttribute("c");
            shin3 = true;
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <head>
<html>        
    <head>        
        <title>kadai5</title>
    </head>
    <body>
        <form method="get" action="/Java_Data_Action/kadai5">
    </body>
    名前:<INPUT type="text" name="name" value="<%if(shin1){out.print(a);}%>">
    <br>
    性別:<INPUT type="text" name="sex" value="<%if(shin2){out.print(b);}%>">
    <br>
    趣味:<INPUT type="text" name="hobby" value="<%if(shin3){out.print(c);}%>">
    <br>
    <input type="submit" value="送信">
        </form>
        
</html>