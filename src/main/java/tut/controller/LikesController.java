package tut.controller;

import static tut.service.OfyService.ofy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tut.entity.CourseDetailsEntity;
import tut.service.OfyService;

public class LikesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
	   	    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
	   	 HttpSession sess= request.getSession(false);
   		if((String)sess.getAttribute("uemail")!=null) {
   			
   		if(sess.getAttribute("likeDone")==null) {

				sess.setAttribute("likeDone","true");
	   			String cid=request.getParameter("param0");
	   			String decider=request.getParameter("param1");
	   			CourseDetailsEntity course=OfyService.ofy().load().type(CourseDetailsEntity.class).id(cid).now();
	   			if(decider.equals("1")) {
	   				course.likes=course.likes+1;
	   			}
	   			else {
	   				course.likes=course.likes-1;
	   			}
	   			ofy().save().entity(course).now();
	   		 
	   			String text=Integer.toString(course.likes);
	   	    
	   	    response.getWriter().write(text);       // Write response body.
			
   		}else {
   			response.getWriter().write("Already Liked");       // Write response body.
   		}
   		
   		}
   			else {
   				response.getWriter().write("notLoginError");       // Write response body.
   			}
   	
   	}

	

}
