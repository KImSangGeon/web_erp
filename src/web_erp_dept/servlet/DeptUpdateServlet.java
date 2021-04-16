package web_erp_dept.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.service.DeptService;

@WebServlet("/DeptUpdateServlet")
public class DeptUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DeptService service;

    public DeptUpdateServlet() {
    	service = new DeptService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processs(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processs(request, response);
	}


	private void processs(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int dno = Integer.parseInt(request.getParameter("dno").trim());
		String dname = request.getParameter("dname").trim();
		int floor = Integer.parseInt(request.getParameter("floor").trim());
		
		Department department =  new Department(dno, dname, floor);
		service.modifyDept(department);
		
		response.sendRedirect("DeptListServlet");
	}

	
}
