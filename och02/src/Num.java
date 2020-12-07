

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Num
 */
@WebServlet("/Num")
public class Num extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Num() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int hap,minus;
		double gob,nanugi;
		hap = num1 + num2;
		minus = num1 - num2;
		gob = (double)(num1 * num2);
		nanugi = (double)(num1 / num2);
		
		response.setContentType("text/html; charset=utf-8");
	    PrintWriter out = response.getWriter();
	    
	    out.println("<html><body><h1>연산결과</h1>");
	    out.printf("덧셈 : %s + %s = %d <br>",num1,num2,hap);
	    out.printf("뺄셈 : %s - %s = %d <br>",num1,num2,minus);
	    out.printf("곱셈 : %s * %s = %.2f <br>",num1,num2,gob);
	    out.printf("나눗셈 : %s / %s = %.2f <br>",num1,num2,nanugi);
	    
	    out.println("</body></html>");
	    out.close();
	}

}
