package tut.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

import tut.entity.UserDetailsEntity;
import tut.service.OfyService;
import tut.service.UserDetailsService;

public class EditProfileController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone= request.getParameter("phone");
		String pass=request.getParameter("pass");
		String age= request.getParameter("age");
		
		String imageKey;		
		BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(request);
		List<BlobKey> blobKeys = blobs.get("photo");
		if(blobKeys==null){
			UserDetailsEntity ude=OfyService.ofy().load().type(UserDetailsEntity.class).id(email).now();
			imageKey=ude.picId;
		}
		else{
		imageKey = blobKeys.get(0).getKeyString();
		}
		
		UserDetailsService ud = new UserDetailsService();
		
	//	RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		
		ud.registerUser(name, email, phone, pass, age, imageKey);
		
		response.sendRedirect("/dashboard.jsp");
		
		//res.forward(request, response);
		
	}
	
}
