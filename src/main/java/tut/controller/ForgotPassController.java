package tut.controller;

import java.io.IOException;
import static tut.service.OfyService.ofy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tut.entity.UserDetailsEntity;
import tut.service.SendMail;
import tut.service.UserDetailsService;

@WebServlet("/ForgotPassController")
public class ForgotPassController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String email=request.getParameter("email");
		UserDetailsService uds=new UserDetailsService();
		if(uds.checkIfUserAlreadyExists(email)){		
			UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
			SendMail mail=new SendMail();
			mail.send(user.email, "TutPoint -Forgot Password", "Your login password for TutPoint is "+user.pass);
			/*response.getWriter().println("Mail sent to "+email+" and pass is: "+user.pass);
			String messg="An email containing your password is sent to: "+email;
			request.setAttribute("mssg", messg);
			request.getRequestDispatcher("logon.jsp").forward(request, response);
			 */
			response.sendRedirect("mailSent.html");
			}
		else{
			response.sendRedirect("loginerror.html");
		}
	}

}
