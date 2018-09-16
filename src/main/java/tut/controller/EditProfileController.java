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


@WebServlet("/EditProfileController")
public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sess=request.getSession(false);
		String email=(String)sess.getAttribute("uemail");
		UserDetailsEntity user=OfyService.ofy().load().type(UserDetailsEntity.class).id(email).now();
		request.setAttribute("user",user);
	
		RequestDispatcher rd=request.getRequestDispatcher("editProfile.jsp");
		
	}


}
