package config;

import dao.DisStoreDao;
import dao.DisStoreDaoImpl;
import lombok.Getter;
import service.DisStoreService;
import service.DisStoreServiceImpl;
@Getter
public class ServletContextConfig {
	private static ServletContextConfig instance = null;
	/*
	 * Custom IoC (객체관리)
	 */
	private DisStoreDao disStoreDao;
	
	private DisStoreService disStoreService;
	
	private ServletContextConfig() {}
	
	public static ServletContextConfig getInstance() {
		if(instance == null) {
			instance = new ServletContextConfig();
			instance.setIoc();
		}
		return instance;
	}
	private void setIoc() {
		if(disStoreDao == null) {
			disStoreDao = new DisStoreDaoImpl();
		}
		if(disStoreService == null) {
			disStoreService = new DisStoreServiceImpl();
		}
	}
}
