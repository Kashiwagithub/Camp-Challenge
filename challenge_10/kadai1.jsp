<%-- 
    Document   : kadai1
    Created on : 2016/05/26, 15:24:42
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  <head>
 <html>
  <head>
    <title>データ操作</title>
  </head>
  <body>
    <form method="get" action="kadai2.jsp">
      名前:<INPUT type="text" name="name">
      <br>
      <br>
      性別
      <input type="radio" name="sex" value="男">男
      <input type="radio" name="sex" value="女">女
      <br>
      <br>
      趣味
      <br>
      <textarea name="hobby" cols="50" rows="10"></textarea>
      <br>
      <input type="submit" value="送信">

    </form>
  </body>
</html>
