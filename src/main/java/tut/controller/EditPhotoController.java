package tut.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

import tut.entity.UserDetailsEntity;
import tut.service.OfyService;
import tut.service.UserDetailsService;

public class EditPhotoController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession sess=request.getSession(false);
		String email=(String)sess.getAttribute("uemail");
		UserDetailsEntity user=OfyService.ofy().load().type(UserDetailsEntity.class).id(email).now();
		String name=user.name;
		String phone=user.phone;
		String pass=user.pass;
		String age=user.age;
		BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(request);
		List<BlobKey> blobKeys = blobs.get("myPhoto");
		String picId = blobKeys.get(0).getKeyString();
		UserDetailsService uds=new UserDetailsService();
		uds.registerUser(name,email,phone,pass,age,picId);
		response.sendRedirect("dashboard.jsp");
	}

}
