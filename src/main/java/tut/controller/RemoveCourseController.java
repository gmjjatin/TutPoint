package tut.controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tut.service.CourseDetailsService;

public class RemoveCourseController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String cId=(String) request.getParameter("courseId");
		CourseDetailsService cds=new CourseDetailsService();
		cds.removeCourseService(cId);
		response.sendRedirect("dashboard.jsp");
	}

}
