package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savedId = "admin";
		String savedPw = "ad1234";
		
		String paramId = request.getParameter("id");
		String paramPw = request.getParameter("pw");
		if(savedId.equals(savedId) && savedPw.equals(savedPw)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", paramId);
			
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("loginForm.jsp");
		}
	}


}
