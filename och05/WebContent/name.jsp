<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
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

     <h1>오류 발생할때 처리 예제</h1>
     <!-- 에러가 생길때 지시자 쪽에 errorpage를 지정해서 에러가 나오면 error.jsp로 보내주면된다. -->
     <h2>이름 : <%=name %></h2>
     <h2>숫자 : <%= num/0 %></h2>
</body>
</html>