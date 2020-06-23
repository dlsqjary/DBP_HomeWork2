import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myforward")
public class myforward extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//첫번째 것 처럼 더하기 문제임.
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		int intnum1, intnum2;
		
		if(num1 == null) {
			num1 = "0";
		}
		if(num2 == null) {
			num2 = "0";
		}
		
		intnum1 = Integer.parseInt(num1);
		intnum2 = Integer.parseInt(num2);
		int result = intnum1 + intnum2;
		req.setAttribute("num1",num1);
		req.setAttribute("num2", num2);
		req.setAttribute("result", result);
		RequestDispatcher dispatcher = req.getRequestDispatcher("myjspexample5.jsp");
		dispatcher.forward(req, resp);
		
	}

}