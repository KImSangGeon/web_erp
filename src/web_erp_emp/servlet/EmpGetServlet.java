package web_erp_emp.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import web_erp.dto.Employee;
import web_erp.service.EmpService;

@WebServlet("/EmpGetServlet")
public class EmpGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EmpService service;
  
	public EmpGetServlet() {
		service = new EmpService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}


	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int eno = Integer.parseInt(request.getParameter("eno").trim());
		
		Employee emp = service.showEmp(new Employee(eno));
			
		request.setAttribute("emp", emp);
		
		request.getRequestDispatcher("empinfo.jsp").forward(request, response);
	}	
}
