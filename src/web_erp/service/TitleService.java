package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.ds.jndiDS;
import web_erp.dto.Title;
import web_erp.impl.TitleDaoImpl;

public class TitleService {
		private Connection con = jndiDS.getConnection();
		private TitleDaoImpl dao = TitleDaoImpl.getInstance();
	
		public TitleService() {
			dao.setCon(con);
		}
		public List<Title> showTitles(){
			return dao.selectTitleByAll();
		}
		
		public Title showTitle(Title title) {
			return dao.selectTitleByNo(title);
		}
		
		public void addTitle(Title title) {
			dao.insertTitle(title);
		}		
		
		public void modifyTitle(Title title) {
			dao.updateTitle(title);
		}
		
		public void deleteTitle(Title title) {
			dao.deleteTitle(title.getNo());
		}
		

}
