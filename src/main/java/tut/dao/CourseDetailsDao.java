package tut.dao;

import tut.entity.CourseDetailsEntity;

public class CourseDetailsDao {

	public void addCourse(String uniqueID, String owner, String level, String subject, String exp, String tutName,
			String tutAdd,String courseFees,String feesNeg,String trial,String tutType, String email) {
		// TODO Auto-generated method stub

		CourseDetailsEntity course=new CourseDetailsEntity(uniqueID, owner, level, subject, exp, tutName,tutAdd, courseFees, feesNeg, trial,  tutType,email);
		tut.service.OfyService.ofy().save().entity(course).now();
	}

}
