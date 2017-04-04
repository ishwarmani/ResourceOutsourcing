package com.resources.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resources.dao.IJobSeekDao;
import com.resources.model.JobProvider;
import com.resources.model.JobSeeker;
import com.resources.service.IJobSeekService;
import com.ttnd.reap.dao.IEmployeeDao;

@Service
public class JobSeekService implements IJobSeekService{
	
	@Autowired
	private IJobSeekDao jobSeekDao; 
	
	public JobSeeker login(String username, String password) {
		// TODO Auto-generated method stub
		return jobSeekDao.login(username, password);
	}

	public boolean register(JobSeeker jobSeeker) {
		// TODO Auto-generated method stub
		return jobSeekDao.register(jobSeeker);
	}
	
	public boolean register(JobProvider jobProvider) {
		// TODO Auto-generated method stub
		return false;
	}

}
