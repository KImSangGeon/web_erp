package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.ds.jndiDS;
import web_erp.dto.Department;
import web_erp.impl.DepartmentImpl;

public class DeptService {
	private Connection con = jndiDS.getConnection();
	private DepartmentImpl dao = DepartmentImpl.getInstance();
	
	public DeptService() {
		dao.setCon(con);
	}
	public List<Department> showDepartments(){
		return dao.selectDepartmentByAll();
	}
	public Department showDept(Department department) {
		return dao.selectDepartmentByNo(department);
	}
	public void addDept(Department department) {
		dao.insertDepartment(department);
	}
	public void deleteDept(Department department) {
		dao.deleteDepartment(department.getdNo());
	}
	public void modifyDept(Department department) {
		dao.updateDepartment(department);
	}
	

}
