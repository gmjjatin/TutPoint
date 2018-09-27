package tut.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import tut.entity.UserDetailsEntity;
import tut.service.UserDetailsService;

public class UserLoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		UserDetailsService user=new UserDetailsService();
		RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		if(user.checkIfUserExists(email,pass)!= null){
			UserDetailsEntity ude=user.checkIfUserExists(email, pass);
			//CourseListService cls=new CourseListService();
			//Query<CourseDetailsEntity> quer=cls.getListService(ude.email);
			HttpSession session=request.getSession();
			session.setAttribute("uemail", ude.email);
			//session.setAttribute("ude", ude);
			//session.setAttribute("itr", quer);
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("loginerror.html");
		}
	}
}
