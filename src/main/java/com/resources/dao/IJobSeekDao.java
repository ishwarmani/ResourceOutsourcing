package com.resources.dao;

import com.resources.model.JobProvider;
import com.resources.model.JobSeeker;

public interface IJobSeekDao {
	JobSeeker login(String username,String password);
	
	public boolean register(JobSeeker jobSeeker);
	
	public boolean register(JobProvider jobProvider);

}
