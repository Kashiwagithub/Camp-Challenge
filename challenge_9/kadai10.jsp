<%-- 
    Document   : kadai10
    Created on : 2016/05/31, 11:42:31
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>kadai10</title>
    </head>
    <body>
        <%
            //ログ出力定義
            File log = new File("/Applications/NetBeans/apache-tomcat-8.0.27/webapps/ROOT/WEB-INF/kadai10.log");
            
            //開始時刻書き込み
            FileWriter fw = new FileWriter(log);
            Date datestart = new Date();
            SimpleDateFormat sdfs = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss:SSS");
            String sdate = sdfs.format(datestart);
            fw.write("プログラム開始時刻:"+sdate+"\r\n");
            fw.close();
            
            //地球のの体積を求めるプログラム
            double x,r;
            x = Math.PI;
            r = 6378.0; //赤道半径[km]
            out.println("地球の体積="+((4/3)*x)*(r*r*r)+"[km3]<br>");
            
            //終了時刻書き込み
            FileWriter fwa = new FileWriter(log,true);
            Date dateend = new Date();
            SimpleDateFormat sdfe = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss:SSS");
            String edate = sdfe.format(dateend);
            fwa.write("プログラム終了時刻:"+edate);
            fwa.close();
            
            //ログファイル読み込み
            FileReader fr = new FileReader(log);
            BufferedReader br = new BufferedReader(fr);
            out.print(br.readLine()+"<br>");
            out.print(br.readLine()+"<br>");
            br.close();
        %>
        
    </body>
</html>
