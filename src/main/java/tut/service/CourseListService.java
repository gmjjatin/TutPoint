package tut.service;

import com.googlecode.objectify.cmd.Query;

import tut.dao.CourseListDao;
import tut.entity.CourseDetailsEntity;

public class CourseListService {
	CourseListDao cld=new CourseListDao();
	public Query<CourseDetailsEntity> getListService(String email) {
		return cld.getListDao(email);
	}

}
