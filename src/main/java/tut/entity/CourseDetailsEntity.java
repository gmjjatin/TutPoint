package tut.entity;


import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class CourseDetailsEntity {
	@Id 
	@Index
	public String courseId;
	public String courseType;
	@Index
	public String subject;
	public String experience;
	public String tutType;
	public String tutName;
	public String tutAdd;
	public String feesNeg;
	public String courseFees;
	public String trial;
	@Index
	public String owner;
	public String classlvl;
	@Index
	public int likes=0;
	
	public CourseDetailsEntity() {
		// TODO Auto-generated constructor stub
	}

	public CourseDetailsEntity(String courseId,String courseType, String courseSubject, String classlvl, String tutType, String tutName,
			String tutAddress, String courseExperience, String email, String courseFees, String feesNeg, String trial ) {
		
		this.courseId=courseId;
		
		this.courseType=courseType;
		subject=courseSubject;
		this.tutType=tutType;
		this.tutName=tutName;
		tutAdd=tutAddress;
		experience=courseExperience;		
		owner=email;
		this.courseFees=courseFees;
		this.feesNeg=feesNeg;
		this.trial=trial;
		this.classlvl=classlvl;
	}
	public CourseDetailsEntity(int likes) {
		
		this.likes=likes;
		
	}
	
	
	
	
	 
}
