package com.resources.dao.impl;

import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.resources.dao.IJobSeekDao;
import com.resources.model.JobSeeker;
import com.ttnd.reap.model.Employee;
import com.ttnd.reap.model.GivingBadges;
import com.ttnd.reap.model.RecievedBadges;

@Repository
public class JobSeekDaoImpl implements IJobSeekDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	public JobSeekDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public JobSeeker login(String username, String password) {
		JobSeeker jobSeeker = null;
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			@SuppressWarnings("deprecation")
			Criteria criteria = session.createCriteria(JobSeeker.class).add(Restrictions.eq("Js_uname", username))
					.add(Restrictions.eq("Js_pass", password));
			jobSeeker = (JobSeeker) criteria.uniqueResult();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return jobSeeker;
	}
	
	public boolean register(JobSeeker jobSeeker) {

		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(jobSeeker);
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
