package tut.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tut.service.SendMail;
import tut.service.UserDetailsService;

public class UserDetailsController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone= request.getParameter("phone");
	String pass = request.getParameter("pass");
	String age=null;
	String picId=null;
	
	UserDetailsService ud = new UserDetailsService();
	
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
		
	      if(ud.checkIfUserAlreadyExists(email))
	      {
	    	  response.sendRedirect("registererror.html");
	      }
	      
	      else
	      {
	    	  System.out.println("New User");
	    	  ud.registerUser(name,email,phone,pass,age,picId);
	    	  SendMail mail=new SendMail();
	    	  mail.send(email, "TutPoint", "Welcome!"+System.lineSeparator()+"Thank you for registering with TutPoint"+System.lineSeparator()+System.lineSeparator()+"You can now add your own courses and the students near you can see and contact you through the information provided by you.");
	    	  rd.forward(request, response);
	      }
	     
	}
}
