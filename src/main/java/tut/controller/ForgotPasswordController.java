package tut.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tut.entity.UserDetailsEntity;
import tut.service.MailServices;
import tut.service.UserDetailsService;

/**
 * Servlet implementation class ForgotPasswordController
 */
@WebServlet("/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if("true"==request.getAttribute("forgotPassword")){
			RequestDispatcher rd=request.getRequestDispatcher("/forgotPassword.jsp");
			rd.forward(request, response);
		}
		if("true"==request.getAttribute("forgotPasswordResolved")) {
			String emailFP=request.getParameter("email");
			UserDetailsService uds=new UserDetailsService();
			UserDetailsEntity user1=uds.checkIfUserExists(emailFP);
			MailServices ms=new MailServices();
			ms.sendForgotPasswordMail(user1.email, "TutPoint Password Recovery", "Dear ,\" \n \""+user1.name+"Your current password is : "+user1.pass);
			System.out.println("email sent");
			RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
			request.setAttribute("recoveryMailSent","true");
			rd.forward(request, response);
		}

		
		
		
	}

	

}
