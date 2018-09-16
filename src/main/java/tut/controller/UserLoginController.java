package tut.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import tut.entity.UserDetailsEntity;
import tut.service.UserDetailsService;
@WebServlet
public class UserLoginController extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		UserDetailsService uds=new UserDetailsService();
		if(uds.checkIfUserExists(email,pass) != null ){
			HttpSession sess=request.getSession();

			
			RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
			UserDetailsEntity user=uds.checkIfUserExists(email,pass);
			
			sess.setAttribute("uname",user.name);
			sess.setAttribute("uemail",user.email);
			sess.setAttribute("uphone",user.phone);
			sess.setAttribute("upass",user.pass);
			sess.setAttribute("picKey",user.picKey);

//			sess.setAttribute("user",user);
			rd.forward(request, response);
		}
		
		else{
			
			response.sendRedirect("loginerror.html");
		}
	}
}
