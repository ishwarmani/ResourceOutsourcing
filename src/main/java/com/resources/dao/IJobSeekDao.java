package com.resources.dao;

import com.resources.model.JobSeek_Education;
import com.resources.model.JobSeeker;

public interface IJobSeekDao {
	JobSeeker login(String username,String password);
	
	public boolean register(JobSeeker jobSeeker);

	boolean addJsEducation(JobSeek_Education jobSeek_Education);

}
