package tut.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class UserDetailsEntity {
	@Id
	public String email;
	public String name;
	public String phone;
	public String pass;
	public String age;
	public String picId;
	
	public UserDetailsEntity() {
		// TODO Auto-generated constructor stub
	}
	
	public UserDetailsEntity(String name, String email, String phone, String pass, String age, String imageKey) {
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.pass=pass;
		this.age=age;
		picId=imageKey;
		
	}

}
