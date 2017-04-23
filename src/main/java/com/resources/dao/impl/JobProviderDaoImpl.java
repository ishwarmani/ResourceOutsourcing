package com.resources.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.resources.dao.IJobProviderDao;
import com.resources.model.JobProvider;
import com.resources.model.JobSeeker;

@Repository
public class JobProviderDaoImpl implements IJobProviderDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public JobProvider login(String username, String password) {
		JobProvider jobProvider = null;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			@SuppressWarnings("deprecation")
			Criteria criteria = session.createCriteria(JobSeeker.class).add(Restrictions.eq("Jp_uname", username))
					.add(Restrictions.eq("Jp_pass", password));
			jobProvider = (JobProvider) criteria.uniqueResult();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return jobProvider;
	}


	public boolean register(JobProvider jobProvider) {
		System.out.println("hello");
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(jobProvider);
			transaction.commit();
			return true;
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}

	}

}
