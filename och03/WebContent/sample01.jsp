<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- diractive = 지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터 100까지의 합</title>
</head>
<body>
     <h1>1부터 100까지의 합</h1>
     <%
        int total = 0;
        for(int cnt=1; cnt <= 100; cnt++)
        	total += cnt;
         /* <!-- <%자체가 scriptlet이다 --> */
     %>
     1부터 100까지 더한 값은? <%= total %>
</body>
</html>