package web_erp_emp.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.dto.Employee;
import web_erp.dto.Title;
import web_erp.service.EmpService;

@WebServlet("/EmpInsertServlet")
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmpService service;
       
    public EmpInsertServlet() {
    	service = new EmpService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int eno = Integer.parseInt(request.getParameter("eno").trim());
		String ename = request.getParameter("ename").trim();
		Title title = new Title(Integer.parseInt(request.getParameter("title").trim())); 
		Employee manager = new Employee(Integer.parseInt(request.getParameter("manager").trim()));
		int salary = Integer.parseInt(request.getParameter("salary").trim());
		Department dept = new Department(Integer.parseInt(request.getParameter("dept").trim()));
		
		Employee employee = new Employee(eno, ename, title, manager, salary, dept);
		service.addEmp(employee);
		
		response.sendRedirect("EmpListServlet");
	}



}
