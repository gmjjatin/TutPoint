package tut.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tut.service.CourseDetailsService;

@WebServlet
public class CourseDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseDetailsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uniqueID = UUID.randomUUID().toString();
		HttpSession sess=request.getSession(false);
		String email=(String) sess.getAttribute("uemail");
		
		String owner=request.getParameter("uname");
		String level=request.getParameter("level");
		String subject=request.getParameter("subject");
		String exp=request.getParameter("experience");
		String tutName=request.getParameter("tutName");
		String tutAdd=request.getParameter("tutAdd");
		String courseFees=request.getParameter("courseFees");
		String feesNeg=request.getParameter("feesNeg");
		String trial=request.getParameter("trial");
		String tutType=request.getParameter("tutType");
		
		CourseDetailsService cds=new CourseDetailsService();
		
		cds.addCourse(uniqueID,owner,level,subject,exp,tutName,tutAdd, courseFees, feesNeg, trial, tutType,email);
		RequestDispatcher rd=request.getRequestDispatcher("/dashboard.jsp");
		rd.forward(request, response);
		
	}

	

}
