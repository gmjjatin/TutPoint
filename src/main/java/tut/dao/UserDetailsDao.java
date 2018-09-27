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

	public void registerNewUser(UserDetailsEntity user) {
		ofy().save().entity(user).now();
		
	}
	

	public UserDetailsEntity checkTheUser(String email, String pass) {
		UserDetailsEntity user=ofy().load().type(UserDetailsEntity.class).id(email).now();
		if(user != null)
		{
			if(pass.equals(user.pass)){
				return user;
			}
			else
				return null;
			
		}
		else
			return null;
		
	}

	public void editProfileDao(UserDetailsEntity ude) {
		ofy().save().entity(ude);
		
	}

	

}
