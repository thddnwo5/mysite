<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h2>연산</h2>
      덧셈 : ${param.num1} + ${param.num2} = ${param.num1 + param.num2} <p>
      뺄셈 : ${param.num1} - ${param.num2} = ${param.num1 - param.num2} <p>
      곱셈 : ${param.num1} * ${param.num2} = ${param.num1 * param.num2} <p>
      나눗셈 : ${param.num1} / ${param.num2} = ${param.num1 / param.num2} <p>
</body>
</html>