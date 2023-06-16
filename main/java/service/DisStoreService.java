package service;

import vo.OrderVO;

public interface DisStoreService {
	public boolean registerOrder(OrderVO orderVO) throws Exception; // 주문 등록 서비스 메소드
	public boolean selectOrderList() throws Exception; // 주문 목록 조회 서비스 메소드
	public boolean selectOrderByStatus() throws Exception; // 주문 상태별 조회 서비스 메소드
	public boolean selectProductByCode() throws Exception; // 제품 코드에 따른 조회 서비스 메소드
}
