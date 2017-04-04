package com.resources.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.resources.model.Admin;
import com.resources.model.ApplyJob;
import com.resources.model.JobProvider;
import com.resources.model.JobProvider_selected;
import com.resources.model.JobSeek_Education;
import com.resources.model.JobSeek_Professional;
import com.resources.model.JobSeeker;
import com.resources.model.Jobs;

@Configuration
@EnableWebMvc
@ComponentScan({"com.resources.controller","com.resources.dao.impl","com.resources.service.impl"})
public class ResourcesApplicationContextConfig extends WebMvcConfigurerAdapter {

	private BasicDataSource dataSource;

	@Bean(name = "viewResolver")
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver("/WEB-INF/views/", ".jsp");
		return viewResolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");

	}

	@Bean
	public DataSource getDataSource() {
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/Resources");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		return dataSource;
	}

	public Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.archive.autodetection", "class");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		properties.put("hibernate.current_session_context_class", "thread");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		
		sessionBuilder.addAnnotatedClass(Admin.class);
		sessionBuilder.addAnnotatedClass(ApplyJob.class);
		
		sessionBuilder.addAnnotatedClass(JobProvider_selected.class);
		sessionBuilder.addAnnotatedClass(JobProvider.class);
		
		sessionBuilder.addAnnotatedClass(Jobs.class);
		
		sessionBuilder.addAnnotatedClass(JobSeek_Education.class);
		sessionBuilder.addAnnotatedClass(JobSeek_Professional.class);
		sessionBuilder.addAnnotatedClass(JobSeeker.class);
		
		SessionFactory sessionFactory = sessionBuilder.buildSessionFactory();
		return sessionFactory;
	}
}
