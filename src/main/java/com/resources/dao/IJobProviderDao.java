package com.resources.dao;

import com.resources.model.JobProvider;

public interface IJobProviderDao {
	
	JobProvider login(String username, String password);

	public boolean register(JobProvider jobProvider);
}
