package hp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPassword");
		String userName = request.getParameter("name");
		String userNkName = request.getParameter("nkName");
		String userBirthday;
		String userGender = request.getParameter("gender");
		  
		
		  if(request.getParameter("userBirthMon").length()==1) {
			  if(request.getParameter("userBirthdays").length()==1) {
				  userBirthday = request.getParameter("userBirthYear")+"-"+"0"
					      +request.getParameter("userBirthMon")+"-"+"0"+request.getParameter("userBirthdays");
			  }else {
				  userBirthday = request.getParameter("userBirthYear")+"-"+"0"
					      +request.getParameter("userBirthMon")+"-"+request.getParameter("userBirthdays");
			  }
		  }else {
			  if(request.getParameter("userBirthdays").length()==1) {
				  userBirthday = request.getParameter("userBirthYear")+"-"
					      +request.getParameter("userBirthMon")+"-"+"0"+request.getParameter("userBirthdays");
			  }else {
				  userBirthday = request.getParameter("userBirthYear")+"-"
					      +request.getParameter("userBirthMon")+"-"+request.getParameter("userBirthdays");
			  }
		  }
		 
		
		
		String userEmail = request.getParameter("userEmail");
		
		String driver="oracle.jdbc.driver.OracleDriver";
		 String dbURL="jdbc:oracle:thin:@localhost:1521:xe";
		 String dbID="user_g";
		 String dbPassword="woojae";
		 String SQL = "INSERT INTO PETUSER VALUES(?,?,?,?,?,?,?)";
		  Connection conn = null;
		  PreparedStatement pstmt = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			pstmt.setString(4, userNkName);
			pstmt.setString(5, userGender);
			pstmt.setString(6, userBirthday);
			pstmt.setString(7, userEmail);
			pstmt.executeUpdate();
		}catch(Exception e) {
		   e.printStackTrace();
		}
		
		 
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		try {
			 out.println("유저 이름    : " +userID + "<p>");
			 out.println("유저 비밀번호 : " +userPassword + "<p>");
			 out.println("유저 이름    : " +userName + "<p>");
			 out.println("유저 닉네임  : " +userNkName + "<p>");
			 out.println("유저 성별    : " +userGender + "<p>");
			 out.println("유저 생년월일 : " +userBirthday + "<p>");
			 out.println("유저 이메일  : " +userEmail + "<p>");
		}catch(Exception e) {
		    out.println(e.getMessage());	
		}finally {
		out.println("</body></html>");
		}
	}

}
