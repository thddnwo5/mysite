<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <%! //선언부 변수선언하는것처럼 작성하면된다.
        private PrintWriter pw;
        String date;
        
        public void jspInit(){
        	GregorianCalendar gc = new GregorianCalendar();
        	date = String.format("%TF %TT",gc,gc);
        	String fileName = "c:/log/" + date.replaceAll(":", "") + ".txt";
        	// 파일명에 : 이 들어가면 안만들어진다.
        try{
        	pw = new PrintWriter(new FileWriter(fileName,true));
        }catch(IOException e){
        	e.printStackTrace();
        }
       }
   %>
   
   
   
   <%
      //doGet/ doPost 역할
      
      request.setCharacterEncoding("utf-8");
      String name = request.getParameter("name");
      String msg  = name + "님 방가워 ";
      out.println(msg + "<p> 현재시간 : " + date);
      pw.print(msg + "\r\n 현재시간 : " + date + "\r\n");
      
   %>
   
   <%!
      public void jspDestory(){
	     pw.flush();
	    //flush는 Buffer 강제 출력기능
	    if(pw != null) pw.close();
   }
       
   %>
</body>
</html>