<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="gugu.jsp">
       <select name="num">
             <%
                 for(int i = 2; i<=9; i++){
                	 out.println("<option value='"+i+"'>"+i+ "단</option>");
                 }
              
             %>
       </select><p>
          <input type="submit" value="선택완료">
     </form>
</body>
</html>