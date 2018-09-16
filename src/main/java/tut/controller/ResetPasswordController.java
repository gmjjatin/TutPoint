package tut.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tut.dao.UserDetailsDao;
import tut.entity.UserDetailsEntity;
import tut.service.OfyService;

/**
 * Servlet implementation class PasswordController
 */
@WebServlet
public class ResetPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess=request.getSession(false);
		
		

		RequestDispatcher rd=request.getRequestDispatcher("/resetPassword.jsp");
				
				
				UserDetailsDao udd=new UserDetailsDao();
				
				UserDetailsEntity user=udd.giveMeUser((String) sess.getAttribute("uemail"));
				
				sess.setAttribute("oldPassword",user.pass);
				rd.forward(request, response);
				
					
	}

}