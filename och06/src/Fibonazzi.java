

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Fibonazzi")
public class Fibonazzi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BigInteger[] arr = new BigInteger[100];
    
    public Fibonazzi() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	public void init(ServletConfig config) throws ServletException {
		arr[0] = new BigInteger("1");
		arr[1] = new BigInteger("1");
		
		for(int i=2; i < arr.length; i++) {
			arr[i] = arr[i-2].add(arr[i-1]);
			// 첫번째의 인덱스와 두번째 인덱스를 더해서 arr[i]로 넣는다.
			// 기본적인 파보나치 수열 코딩방식
			// arr[i-2] + arr[i-1] 과 똑같은 코드
		}
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		
		if(num > 100) num = 100;
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>파보나찌 수열</h2>");
		
	     for(int i =0; i < num; i++) {
	    	 out.println(arr[i] + "<br>");
	     }
	     out.println("</body></html>");
	     out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
