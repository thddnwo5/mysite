<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
      // 파일로 저장하는 과정
      String msg = "제목 : " + title + "\r\n";
      msg += "작성자 : " + writer + "\r\n";
      msg += "내용 : " + content + "\r\n";
      
      Date date = new Date();
      long fileName = date.getTime();
      
      String real = application.getRealPath("/WEB-INF/out/" + fileName + ".txt");
      System.out.println(real); // 됬나 안됫나 확인용
      FileWriter fw = new FileWriter(real);
      fw.write(msg);
      fw.close();
      //realpath는 metadata로 저장되기때문에 경로를 확인용으로 먼저 경로확인을 해주면 찾기쉽다.
      //Browser Display
      out.println("제목 : " + title + "<br>");
      out.println("작성자 : " + writer + "<br>");
      out.println("내용 : " + content + "<br>");
      %>
</body>
</html>