package tut.service;

import tut.dao.CourseDetailsDao;

public class CourseDetailsService {
	CourseDetailsDao cdd=new CourseDetailsDao();
	public void addCourse(String uniqueID, String owner, String level, String subject, String exp, String tutName,
			String tutAdd,String courseFees,String feesNeg,String trial,String tutType, String email) {
		// TODO Auto-generated method stub
		cdd.addCourse(uniqueID,owner,level,subject,exp,tutName,tutAdd, courseFees, feesNeg,trial, tutType,email);
		
	}

}
