package tut.dao;

import com.googlecode.objectify.cmd.Query;

import tut.entity.CourseDetailsEntity;
import tut.service.OfyService;

public class CourseListDao {

	public Query<CourseDetailsEntity> getListDao(String email) {
		Query<CourseDetailsEntity> quer=OfyService.ofy().load().type(CourseDetailsEntity.class).filter("owner",email);
		return quer;
	}

}
