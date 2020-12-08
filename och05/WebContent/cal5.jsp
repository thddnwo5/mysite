<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <h2>연산결과(Setting 통한 error 처리)</h2>
     <%
         request.setCharacterEncoding("utf-8");
         int num1 = Integer.parseInt(request.getParameter("num1"));
         int num2 = Integer.parseInt(request.getParameter("num2"));
         out.println(num1 + " + " + num2 +"="+ (num1+num2)+"<p>");
         out.println(num1 + " - " + num2 +"="+ (num1-num2)+"<p>");
         out.println(num1 + " * " + num2 +"="+ (num1*num2)+"<p>");
         out.println(num1 + " / " + num2 +"="+ (num1/num2)+"<p>");
         
         // Web.xml Setting을 이용한 error 처리를 할수있다.
         // 자세한건 /WEB-INF/web.xml 파일을 보면 알수있다.
     %>
</body>
</html>