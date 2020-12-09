<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
        HashMap <String, String> map = new HashMap<String,String>();
     
        map.put("Park", "목동");
        map.put("박", "박목동");
        map.put("Jasica", "크라이스 처치");
        map.put("Susan", "시드니");
        request.setAttribute("ADDRESS", map);
        RequestDispatcher dispatcher = 
        		request.getRequestDispatcher("mapView.jsp?NAME=Park");
                //form으로 보내는거랑 똑같이 된다.
        dispatcher.forward(request, response);
     %>
</body>
</html>