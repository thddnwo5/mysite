<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h2>전통적 표기법 우승자</h2>
     <%
        String[] winner = (String[])request.getAttribute("winner");
     
         for(int i=0; i<winner.length; i++){
        	 
         
     %>
       <%=i+1 %>등 :  <%= winner[i] %> <p>
     <%
         }
     %>
     <h2>EL 표기법 우승자</h2>
    1등 : ${winner[0] }<p>
    2등 : ${winner[1] }<p>
    3등 : ${winner[2] }<p>
   
</body>
</html>