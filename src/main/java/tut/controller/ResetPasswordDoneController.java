package tut.controller;

import static tut.service.OfyService.ofy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tut.entity.UserDetailsEntity;
import tut.service.OfyService;

/**
 * Servlet implementation class ResetPasswordDoneController
 */
@WebServlet("/ResetPasswordDoneController")
public class ResetPasswordDoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			RequestDispatcher rd1=request.getRequestDispatcher("/dashboard.jsp");
			HttpSession sess=request.getSession(false);
			
			String email=(String) sess.getAttribute("uemail");
			UserDetailsEntity user1=ofy().load().type(UserDetailsEntity.class).id(email).now();
			user1.pass=request.getParameter("password");
			
			OfyService.ofy().save().entity(user1).now();
			
			request.setAttribute("resetPasswordSuccess","true");
			
			rd1.forward(request, response);
		}

	
	}


