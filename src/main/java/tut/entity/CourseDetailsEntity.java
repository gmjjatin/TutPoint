package tut.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class CourseDetailsEntity {
	@Id
	public 	String uniqueID;
	@Index
	public String email;
	@Index
	public 	String owner;
	@Index
	public 	String level;
	@Index
	public 	String subject;
	public 	String experience;
	@Index
	public 	String tutName;
	public 	String tutAdd;
	@Index
	public String courseFees;
	public String feesNeg;
	public String trial;
	@Index
	public String tutType;
	
	public CourseDetailsEntity() {

	}
	
	public CourseDetailsEntity(String uniqueID,String owner,String level,String subject,	String experience,	String tutName,	String tutAdd , String courseFees,String feesNeg,String trial, String tutType ,String email) {
		this.uniqueID= uniqueID;
		this.owner=owner;
		this.level= level;
		this.subject= subject;
		this.experience =experience;
		this.tutName= tutName;
		this.tutAdd= tutAdd;
		this.email=email;
		this.courseFees=courseFees;
		this.feesNeg=feesNeg;
		this.trial=trial;
		this.tutType=tutType;
		
	
	
	}
	
	 
}
