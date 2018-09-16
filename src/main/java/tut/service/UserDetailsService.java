package tut.service;

import tut.dao.UserDetailsDao;
import tut.entity.UserDetailsEntity;

public class UserDetailsService {
	UserDetailsDao udd=new UserDetailsDao();
	public boolean checkIfUserAlreadyExists(String email) {
		return udd.checkNewUser(email);
	}


	public void registerUser(String name, String email, String phone, String pass,String lname,String gender,String pickey) {
		udd.registerNewUser(name,email,phone,pass,lname,gender,pickey);
		
		
	}


	public UserDetailsEntity checkIfUserExists(String email, String pass) {
		
		return udd.checkTheUser(email,pass);
	}
public UserDetailsEntity checkIfUserExists(String email) {
		
		return udd.checkTheUser(email);
	}
	



}
