package tut.dao;
import static tut.service.OfyService.ofy;
import tut.entity.CourseDetailsEntity;

public class CourseDetailsDao {

	public void addCourseDao(CourseDetailsEntity cde) {
		
		ofy().save().entity(cde).now();
	}

	public void removeCourseDao(CourseDetailsEntity cde) {
		ofy().delete().entity(cde).now();
		
	}

}
