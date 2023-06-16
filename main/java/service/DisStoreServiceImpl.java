package service;

import config.ServletContextConfig;
import dao.DisStoreDao;
import vo.OrderVO;

public class DisStoreServiceImpl implements DisStoreService{

	private final DisStoreDao disStoreDao;
	
	public DisStoreServiceImpl() {
		disStoreDao = ServletContextConfig.getInstance().getDisStoreDao();
	}
	@Override
	public boolean registerOrder(OrderVO orderVO) throws Exception {		
		return disStoreDao.orderRegis(orderVO.toEntity()) > 0;
	}

	@Override
	public boolean selectOrderList() throws Exception {
		// 
		return 0;
	}

	@Override
	public boolean selectOrderByStatus() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean selectProductByCode() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
