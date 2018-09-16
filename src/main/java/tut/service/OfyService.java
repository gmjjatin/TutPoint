package tut.service;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

import tut.entity.CourseDetailsEntity;
import tut.entity.UserDetailsEntity;

public class OfyService {

	static{
		ObjectifyService.register(UserDetailsEntity.class);
		ObjectifyService.register(CourseDetailsEntity.class);
		
	}
	public  static Objectify ofy(){
		return ObjectifyService.ofy();
	}
}
