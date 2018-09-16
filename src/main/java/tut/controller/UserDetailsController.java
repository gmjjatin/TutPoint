package tut.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

import tut.service.UserDetailsService;

@SuppressWarnings("serial")
public class UserDetailsController extends HttpServlet {
	String name;
	String email;
	String phone;
	String pass;
	String lname;
	String gender;
	String picKey;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session=request.getSession(false);
		picKey=request.getParameter("picKey");
		if((session.getAttribute("editProfile"))!=null) {
			BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
			Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(request);
			List<BlobKey> blobKeys = blobs.get("picKey");
			picKey=blobKeys.get(0).getKeyString();
			System.out.println(picKey);
		}
		
		
		name = request.getParameter("name");
		email = request.getParameter("email");
		phone = request.getParameter("phone");
		pass = request.getParameter("pass");
		lname = request.getParameter("lname");
		gender = request.getParameter("gender");
		

		

		
		UserDetailsService uds = new UserDetailsService();

		if (uds.checkIfUserAlreadyExists(email)&& lname==null) {
			response.sendRedirect("registererror.html");
		}

		else {
			uds.registerUser(name, email, phone, pass, lname, gender, picKey);
			session.setAttribute("picKey",picKey);

			if (lname != null) {
				RequestDispatcher rd =request.getRequestDispatcher("/dashboard.jsp");
				request.setAttribute("editProfileSuccess","true");
				rd.forward(request, response);

			}

			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.forward(request, response);
		}
	}

	
}
