

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Greet")
public class Greet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    PrintWriter    log;
    
    public Greet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	public void init(ServletConfig config) throws ServletException {
		try {
			log = new PrintWriter(new FileWriter("C:/log/logtest.txt",true));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

	
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String msg = name + "님 반가워\r\n";
		GregorianCalendar gc = new GregorianCalendar();
		// TF => 날짜 , TT => 시간
		String date = String.format("%TF %TT\r\n", gc,gc);
		//System.out.println("GregorianCalendar --> " + date);
		// 위 코드때문에 txt파일에 저장이 되지않는다.
		log.print(date + msg);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body><h2>인사</h2>"+msg);
		out.println("</body></html>");
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public void destroy() {
		if (log != null) log.close();
	}
}
