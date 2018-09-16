package tut.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class UserDetailsEntity {
	@Id
	public String email;
	@Index
	public String name;
	public String lname;
	public String gender;
	public String picKey;
	public String phone;
	public String pass;
	
	public UserDetailsEntity() {
		
	}
	
	
	public UserDetailsEntity(String name, String email, String phone, String pass,String lname,String gender,String picKey) {
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.gender=gender;
		this.lname=lname;
		this.picKey=picKey;
		this.pass=pass;
	}
	
}
