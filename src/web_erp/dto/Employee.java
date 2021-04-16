package web_erp.dto;

public class Employee {
	private int eNo;
	private	String eName;
	private Title title;
	private Employee manager;
	private int salary;
	private Department dept;
	
	public Employee() {
		super();
	}


	public Employee(int eNo) {
		super();
		this.eNo = eNo;
	}


	public Employee(int eNo, String eName, Title title, Employee manager, int salary, Department dept) {
		super();
		this.eNo = eNo;
		this.eName = eName;
		this.title = title;
		this.manager = manager;
		this.salary = salary;
		this.dept = dept;
	}


	public int geteNo() {
		return eNo;
	}


	public void seteNo(int eNo) {
		this.eNo = eNo;
	}


	public String geteName() {
		return eName;
	}


	public void seteName(String eName) {
		this.eName = eName;
	}


	public Title getTitle() {
		return title;
	}


	public void setTitle(Title title) {
		this.title = title;
	}


	public Employee getManager() {
		return manager;
	}


	public void setManager(Employee manager) {
		this.manager = manager;
	}


	public int getSalary() {
		return salary;
	}


	public void setSalary(int salary) {
		this.salary = salary;
	}


	public Department getDept() {
		return dept;
	}


	public void setDept(Department dept) {
		this.dept = dept;
	}
	public String ManagerList() {
		if(manager.geteName() == null) {
			return "";
		}
		return String.format(" %s", manager.geteName());
	}
	public String TitleList() {	
		return String.format("%s", title.getName());
	}	
	public String DeptList() {
		return String.format("%s", dept.getdName());
	}


	@Override
	public String toString() {
		return String.format("Employee [empNo=%s, empName=%s, title=%s, manager=%s, salary=%s, dept=%s]", eNo,
				eName, title.getNo(), manager.geteNo(), salary, dept.getdNo());
	}
}
