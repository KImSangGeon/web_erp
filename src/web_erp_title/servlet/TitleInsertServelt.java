package web_erp_title.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Title;
import web_erp.service.TitleService;

@WebServlet("/TitleInsertServlet")
public class TitleInsertServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
       
    public TitleInsertServelt() {
    	service = new TitleService();
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
		

		/*tNo=10&tName=ㄱㄱㄱ*/
		int  no = Integer.parseInt(request.getParameter("tno").trim());
		String name = request.getParameter("tname").trim();
		
		Title title = new Title(no, name);
		service.addTitle(title);
		
		response.sendRedirect("TitleListServlet");
		/*
		 * request.getRequestDispatcher("TitleListServlet").forward(request, response);
		 */
	}


}
