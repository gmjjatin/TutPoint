package tut.service;

import java.util.UUID;

import tut.dao.CourseDetailsDao;
import tut.entity.CourseDetailsEntity;

public class CourseDetailsService {
	CourseDetailsDao cdd=new CourseDetailsDao();
	public void addCourse(String courseType, String courseSubject, String classlvl, String tutType, String tutName, String tutAddress,
			String courseExperience, String uemail, String courseFees, String feesNeg, String trial) {
		String courseId=UUID.randomUUID().toString();
		CourseDetailsEntity course=new CourseDetailsEntity(courseId,courseType, courseSubject, classlvl,tutType, tutName, tutAddress, courseExperience , uemail, courseFees, feesNeg, trial);
		
		cdd.addCourseDao(course);
		
	}
	public void removeCourseService(String cId) {
		CourseDetailsEntity cde=OfyService.ofy().load().type(CourseDetailsEntity.class).id(cId).now();
		cdd.removeCourseDao(cde);
		
	}
	public void editCourseService(String cId,String courseType, String courseSubject, String classlvl, String tutType, String tutName, String tutAddress,
			String courseExperience, String uemail, String courseFees, String feesNeg, String trial){
		String courseId=cId;
		CourseDetailsEntity course=new CourseDetailsEntity(courseId,courseType, courseSubject, classlvl,tutType, tutName, tutAddress, courseExperience , uemail, courseFees, feesNeg, trial);
		
		cdd.addCourseDao(course);
	}
	
}