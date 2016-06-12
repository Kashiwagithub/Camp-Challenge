<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataDTO" %>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%  
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)hs.getAttribute("udd"); //セッションからuddという名前で保存されている値を取ってくる
    Calendar c = Calendar.getInstance(); //誕生日を西暦、月、日に分解
    c.setTime(udd.getBirthday());
    int year = c.get(Calendar.YEAR);
    int month = c.get(Calendar.MONTH)+1;
    int day = c.get(Calendar.DAY_OF_MONTH);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
    </head>
    <body>
    <form action="UpdateResult" method="POST">
        名前:
        <input type="text" name="name" value="<%out.print(udd.getName());%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <%if(i==year){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" <%if(i==month){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>" <%if(i==day){out.print("selected = \"selected\"");}%>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"<%if(udd.getType() == i){out.print("checked = \"checked\"");}%>><%=jh.exTypenum(i)%><br>
            <% } %>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%out.print(udd.getTell());%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%out.print(udd.getComment());%></textarea><br><br>
        <input type ="hidden" name="userid" value="<%= udd.getUserID()%>">
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">　<%--直リンク禁止--%>
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
