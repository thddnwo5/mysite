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
    int num = Integer.parseInt(request.getParameter("num"));
    int sum = 0;
    int cnt;
    for(cnt = 1; cnt <= num; cnt++){
    	sum += cnt;
    	
    }
    /* out.println("%d 일때 합계는 %d <br>",cnt,sum); */
    // 윗방식은 out객체 안에 있는 싱글톤 객체 이므로 println밖에 없기때문에 printf를 쓸수없는것같다.
    out.println(cnt + "일떄 합계는 " +sum);
  %>
</body>
</html>