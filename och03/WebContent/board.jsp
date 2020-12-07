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
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("title");
        String writer = request.getParameter("writer");
        String content = request.getParameter("content");
        
        out.println("제목 : " + title + "<br>");
        out.println("작성자 : " + writer + "<br>");
        out.println("내용 : " + content + "<br>");
    %>
</body>
</html>