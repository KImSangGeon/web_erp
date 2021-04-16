package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.dao.EmployeeDao;
import web_erp.ds.jndiDS;
import web_erp.dto.Employee;
import web_erp.impl.EmployeeImpl;

public class EmpService {
	
	private Connection con = jndiDS.getConnection();
	private EmployeeImpl dao = EmployeeImpl.getInstance();

	public EmpService() {
		dao.setCon(con);
	}
	
	public List<Employee> showEmps(){
		return dao.selectEmployeeByAll();
	}
	
	public Employee showEmp(Employee employee) {
		return dao.selectEmployeeByNo(employee);
	}
	
	public void addEmp(Employee employee) {
		dao.insertEmployee(employee);
	}
	
	public void modifyEmp(Employee employee) {
	dao.updateEmployee(employee);
	}
	
	public void deleteEmp(Employee employee) {
		dao.deleteEmployee(employee);
	}
	
}
