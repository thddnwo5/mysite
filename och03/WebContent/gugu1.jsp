<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <!-- getAttribute를 쓸떄는 .toString을 쓴다 -->
    <%
      // request.setAttribute 변수로 저장되어서 보냇을때 getAttribute로 받는다 (중요 .toString으로 받아줘야한다.)
        int num = Integer.parseInt(request.getAttribute("num").toString());
    
        out.println("<h1>구구단 "+num+ "단</h1>");
        
        for(int i=1; i<=9; i++){
        	
        	out.println(num + " * " + i + " = " + (num*i) + "<br>");
        }
    %>
</body>
</html>