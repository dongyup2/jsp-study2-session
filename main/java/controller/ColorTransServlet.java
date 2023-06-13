package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ColorTransServlet")
public class ColorTransServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String param_color = request.getParameter("color");
//		int colorNum = Integer.parseInt(param_color);
//		String color = ColorMakeString.makeColor(colorNum);
		String selectedColor = request.getParameter("color");
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().println("<html><head><title>선택한 색상</title></head><body>");
        response.getWriter().println("<h1>선택한 색상: " + selectedColor + "</h1>");
//        response.getWriter().println("<button onclick=\"window.history.back();\">돌아가기</button>");
        response.getWriter().println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param_color = request.getParameter("color");
	}

}
