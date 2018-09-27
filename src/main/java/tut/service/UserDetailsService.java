package tut.service;
import tut.dao.UserDetailsDao;
import tut.entity.UserDetailsEntity;

public class UserDetailsService {
	UserDetailsDao udd=new UserDetailsDao();
	public boolean checkIfUserAlreadyExists(String email) {
		return udd.checkNewUser(email);
	}

	UserDetailsEntity ude=new UserDetailsEntity();
	
	public void registerUser(String name, String email, String phone, String pass, String age, String imageKey) {
		UserDetailsEntity user=new UserDetailsEntity(name,email,phone,pass,age,imageKey);
		udd.registerNewUser(user);
	}


	public UserDetailsEntity checkIfUserExists(String email, String pass) {
		
		return udd.checkTheUser(email,pass);
	}

}
