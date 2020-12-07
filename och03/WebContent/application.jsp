<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%     //파일은 상대경로 와 절대경로가 있다.
          // C:\ 로 시작되는건 절대경로
          // 그냥 \로 시작되는건 상대경로
         // 웹 애플리케이션의 내에서의 파일의 경로명 (실제로는 여기에 저장된다.)
         String realPath = application.getRealPath("/");
         // 웹 애플리케이션의 URL 경로명을 리턴하는 메서드
         String conPath  = application.getContextPath();
   
   %>
   
   realPath : <%=realPath %><p>
   conPath  : <%=conPath %><p>
</body>
</html>