<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간 : 분</title>
</head>
<body>
     <h2>Scriptlet 예제 - 활용 </h2>
     <%
        Calendar getDate = Calendar.getInstance();
        Date     nowTime = getDate.getTime();
        
     %>
      현재 시간은 <%= nowTime.getHours() %>시 <%= nowTime.getMinutes() %>분 입니다.
</body>
</html>