package com.resources.service;

import com.resources.model.JobSeeker;

public interface IJobSeekService {
	
	JobSeeker login(String username,String password);

	boolean register(JobSeeker jobSeeker);
}
