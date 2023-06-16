package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.ServletContextConfig;
import service.DisStoreService;
import vo.OrderVO;
import vo.ProductVO;
import vo.ShopVO;


@WebServlet("/OrderRegServlet")
public class OrderRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final DisStoreService disStoreService;
	
	public OrderRegServlet() {
		disStoreService = ServletContextConfig.getInstance().getDisStoreService();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("IEIP_model2/IEIP2_registerOrder.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("등록 요청");
		response.setContentType("text/plain; charset=utf-8");
		
		OrderVO orderVO = OrderVO.builder()
			    .orderno(request.getParameter("orderno"))
			    .orderdate(request.getParameter("orderdate"))
			    .amount(Integer.parseInt(request.getParameter("amount")))
			    .shopno(request.getParameter("shopno")) // shop 필드에 ShopVO 인스턴스 생성
			    .pcode(request.getParameter("pcode")) // product 필드에 ProductVO 인스턴스 생성
			    .build();
		try {
			PrintWriter out = response.getWriter();
			if (disStoreService.registerOrder(orderVO)) {
				System.out.println("등록 성공!");
				out.print(true);
			} else {
				System.out.println("등록 실패!");
				out.print(false);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
