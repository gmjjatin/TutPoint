package tut.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tut.service.CourseDetailsService;

public class EditCourseController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String courseType=request.getParameter("course-type");
		String courseSubject=request.getParameter("course-subject");
		courseSubject=courseSubject.toUpperCase();
		String tutType=request.getParameter("tutType");
		String tutName=request.getParameter("course-centre-name");
		String tutAddress=request.getParameter("course-centre-address");
		String courseExperience=request.getParameter("course-exp");
		String courseFees=request.getParameter("course-fees");
		String feesNeg=request.getParameter("fees-neg");
		String trial=request.getParameter("trial");
		String classlvl=request.getParameter("classLevel");
		String cId=request.getParameter("courseId");
		String uEmail = null ;
		try {
			HttpSession sess = request.getSession(false);
			uEmail = (String)sess.getAttribute("uemail");
		}
		catch(Exception e) {
			response.sendRedirect("loginerror.html");
			
		}
		
		
		//RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		
		CourseDetailsService cds=new CourseDetailsService();
		
		cds.editCourseService(cId,courseType, courseSubject, classlvl,tutType, tutName, tutAddress, courseExperience, uEmail, courseFees, feesNeg, trial);
		
		response.sendRedirect("dashboard.jsp");
		
		//rd.forward(request, response);
	}

}
