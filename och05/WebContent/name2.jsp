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
         String name = request.getParameter("name").toUpperCase();
         int num     = Integer.parseInt(request.getParameter("num").toUpperCase());
      %>

      <!-- toUpperCase는 대문자로 바꿔서 보여줘 -->
     <h1>오류 발생 예제</h1>
      <!-- num에서 오류가 난다 . 왜냐하면 0을 나눈경우 -->
     <h2>이름 : <%=name %></h2>
     <h2>숫자 : <%= num/0 %></h2>
</body>
</html>