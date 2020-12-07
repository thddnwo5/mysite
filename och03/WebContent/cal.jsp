<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      요기는 연산만 하고 결과는 다음 페이지
      <%
         request.setCharacterEncoding("utf-8");
         int num1 = Integer.parseInt(request.getParameter("num1"));
         int num2 = Integer.parseInt(request.getParameter("num2"));
         
         int add = num1 + num2;
         int min = num1 - num2;
         int mul = num1 * num2;
         int div = num1 / num2;
         
         // parameter를 담아주는방법
         request.setAttribute("add", add);
         request.setAttribute("min", min);
         request.setAttribute("mul", mul);
         request.setAttribute("div", div);
         
         // 다음페이지로 이동 하는 방법중 한가지가 밑 코드 방식
         // 내부적인 구조가 get방식으로 되있는것같다.
         RequestDispatcher rd = request.getRequestDispatcher("calResult.jsp");
         // rd.forward(request, response);
         // 결과값이 calResult.jsp 페이지 로 간다.
         rd.include(request, response);
         // 결과값이 cal.jsp 페이지 안으로 들어온다.
      %>
</body>
</html>