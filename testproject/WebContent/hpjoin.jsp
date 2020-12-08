<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <%
          int birthYearPage,birthMonPage,birthDayPage;
      %>
</head>
<body>
      <h1>회원가입</h1>
     <form action="Join" name="frm" method="post" onsubmit="return chk()" autocomplete="off">
      <table border="1">
          <thead>  
                <tr><td colspan="2" align="center">회원가입</td></tr>
          </thead>
            <tbody>
                <tr><td>ID</td><td><input type="text" name="userID"></td></tr>
                <tr><td>Password</td><td><input type="password" name="userPassword"></td></tr>
                <tr><td>Name</td><td><input type="text" name="name"></td></tr>
                <tr><td>NickName</td><td><input type="text" name="nkName"></td></tr>
                <tr><td rowspan="2">Gender</td>
                <td>남자<input type="radio" name="gender" value="남자" checked="checked"></td></tr>
                <tr><td>여자<input type="radio" name="gender" value="여자"></td></tr>
                <tr><td>Birthday</td><td><select name="userBirthYear">
                           <%
                             for(birthYearPage=1960; birthYearPage<=2010; birthYearPage++){
                            %>
                              <option value= "<%=birthYearPage%>"><%=birthYearPage%></option>
                            <%
                                   }
                            %>
                </select> <select name="userBirthMon">
                          <%
                            for(birthMonPage=1; birthMonPage<=12; birthMonPage++){
                          %>
                            <option value= "<%=birthMonPage%>"><%=birthMonPage%></option>
                          <%
                              }
                          %>
                </select> <select name="userBirthdays">
                          <%
                              for(birthDayPage=1; birthDayPage<=31; birthDayPage++){
                           %>
                            <option value= "<%=birthDayPage%>"><%=birthDayPage%></option>
                           <%
                                   }
                           %>
                </select>
                
                </td></tr>
                <tr><td>Email</td><td><input type="text" name="userEmail"></td></tr>
            </tbody>
      </table>
      <p>
         <input type="submit" value="확인"><p>
         <input type="reset" value="초기화">
      </form>
</body>
</html>