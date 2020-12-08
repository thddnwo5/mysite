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
     
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        
        try{
        	   out.println(num1 + " + "+ num2 + " = " +(num1+num2));
        	   out.println(num1 + " - "+ num2 + " = " +(num1-num2));
        	   out.println(num1 + " * "+ num2 + " = " +(num1*num2));
        	   out.println(num1 + " / "+ num2 + " = " +(num1/num2));
        	
        }catch(Exception e){
        	  RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
        	  rd.forward(request, response);
        }
     %>
</body>
</html>