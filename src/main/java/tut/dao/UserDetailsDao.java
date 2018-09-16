package tut.dao;

import tut.entity.UserDetailsEntity;
import static tut.service.OfyService.ofy;
public class UserDetailsDao {

	public boolean checkNewUser(String email) {
		UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
		
		if(user != null)
		{
			return true;
		}
		else
			return false;
		
	}

	public void registerNewUser(String name, String email, String phone, String pass,String lname,String gender,String picKey) {

		UserDetailsEntity user=new UserDetailsEntity(name, email, phone,pass, lname, gender, picKey);
		
		ofy().save().entity(user).now();
	}

	public UserDetailsEntity checkTheUser(String email, String pass) {
		UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
		if(user != null)
		{	if(pass == null) {
			return null;
		}
			if( pass.equals(user.pass))
				{return user;}
			else
				{return null;}
			
		}
		else
			return null;
		
	}
	public UserDetailsEntity checkTheUser(String email) {
		UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
		if(user != null)
		{return user;
		}
		else
			return null;
		
	}
	public UserDetailsEntity giveMeUser(String email) {
		UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
		return user;
	}

	public void editUser(String name, String email, String phone,String pass,String  lname, String gender,String picKey) {
		
		UserDetailsEntity user=new UserDetailsEntity(name, email, phone, pass, lname, gender, picKey);
		ofy().save().entity(user).now();
	}
	
}
