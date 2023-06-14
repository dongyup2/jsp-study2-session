package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.DBcon;

/**
 * Servlet implementation class IEIP_orderServlet
 */
@WebServlet("/IEIP_orderServlet")
public class IEIP_orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  	String orderNumber = request.getParameter("orderNumber");
	        String store = request.getParameter("store");
	        String orderDate = request.getParameter("orderDate");
	        String productCode = request.getParameter("productCode");
	        String orderQuantity = request.getParameter("orderQuantity");
	        int result = 0;
	        Connection conn = null;
	        String sql = "insert into tbl_order_202101 values(?,?,?,?,?)";
			try {
				conn = DBcon.getInstance().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, orderNumber);
				pstmt.setString(2, store);
				pstmt.setString(3, orderDate);
				pstmt.setString(4, productCode);
				pstmt.setString(5, orderQuantity);
				pstmt.executeUpdate();
				result = pstmt.executeUpdate();

				if (result > 0) { // 성공
				    request.setAttribute("result", "success");
				} else { // 실패
				    request.setAttribute("result", "failure");
				}
				request.getRequestDispatcher("IEIP_index.jsp").forward(request, response);
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
	}

}
