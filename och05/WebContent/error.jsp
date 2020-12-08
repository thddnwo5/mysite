<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <!-- 에러페이지 받는쪽은 isErrorPage로 받고 값은 true = 이페이지가 에러페이지처리하는곳이라고 명시해논거 -->
        <!-- setStatus 파라미터 안에있는 값 200은 정상적이라는 뜻이다. 정상 상태 세팅 -->
        <!-- 에러페이지를 처리하는 이유는 가끔 에러가 날수있기때문에 (됬다 안됬다 할수있기때문에)
        오류 코드로 넘어갈수도 있는걸 여기서 200으로 해서 난 정상적이다 라고 명시해두는거다 -->
        <h2>공지</h2>
        나은 서비스를 위해서 준비중입니다.<p>
        메세지 : <%= exception.getMessage() %><br>
        클래스 : <%= exception.getClass() %>
</body>
</html>