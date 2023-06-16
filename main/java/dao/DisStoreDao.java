package dao;

import vo.OrderVO;

public interface DisStoreDao {
	public int orderRegis(OrderVO orderVO) throws Exception;// 주문등록 메소드
	public int orderListSelect() throws Exception; // 주문목록 조회 메소드
	public int orderStatucBySelect() throws Exception;
	public int productCodeSelect() throws Exception;
}
