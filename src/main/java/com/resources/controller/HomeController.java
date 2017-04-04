package com.resources.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.resources.model.JobSeeker;
import com.resources.service.IJobSeekService;

@Controller
public class HomeController {
	
	@Autowired
	private IJobSeekService jobSeekService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(HttpSession session) {
		JobSeeker jobSeeker = (JobSeeker) session.getAttribute("loggedInUser");
		if (jobSeeker == null) {
			return "login";
		}
		return "redirect:index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginSame(HttpSession session) {
		JobSeeker employee = (JobSeeker) session.getAttribute("loggedInUser");
		if (employee == null) {
			return new ModelAndView("login");
		}
//		else{
//			if(employee.getUserRole().equals("Admin"))
//				return new ModelAndView("redirect:admin");
//			
//			return new ModelAndView("redirect:index");
//		}
		return new ModelAndView("redirect:index");
		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) {
		
		JobSeeker jobSeeker = (JobSeeker) session.getAttribute("loggedInUser");
		if (jobSeeker != null) {
			session.setAttribute("loggedInUser", jobSeeker);
			return new ModelAndView("redirect:index");
		}

		//employee = employeeService.login(email, password);
		jobSeeker = jobSeekService.login(username, password);
		if (jobSeeker == null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("msg", "Sorry !     your credentials does not match as in our Database. Try again.");
			modelAndView.setViewName("login");
			return modelAndView;
		} 
		else {
			session.setAttribute("loggedInUser", jobSeeker);
//			if(employee.getUserRole().equals("Admin"))
//				return new ModelAndView("redirect:admin");
			
			return new ModelAndView("redirect:index");
		}

	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView indexSame(HttpSession session) {
		JobSeeker user = (JobSeeker) session.getAttribute("loggedInUser");
//		if (user == null) {
//			return new ModelAndView("register", "employee", new JobSeeker());
//		}
		return new ModelAndView("Registration");
	}
	
	@RequestMapping(value = "/registration_jS", method = RequestMethod.GET)
	public ModelAndView register_JS(HttpSession session) {
		JobSeeker user = (JobSeeker) session.getAttribute("loggedInUser");
//		if (user == null) {
//			return new ModelAndView("register", "employee", new JobSeeker());
//		}
		return new ModelAndView("Registration_jS");
	}
	
	@RequestMapping(value = "/registration_jp", method = RequestMethod.GET)
	public ModelAndView register_JP(HttpSession session) {
		JobSeeker user = (JobSeeker) session.getAttribute("loggedInUser");
//		if (user == null) {
//			return new ModelAndView("register", "employee", new JobSeeker());
//		}
		return new ModelAndView("Registration_jp");
	}
	
	@RequestMapping(value = "/register_js", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("register") JobSeeker jobSeeker,
								 /*@RequestParam("imageFile") MultipartFile file,*/ Model model, HttpSession session) {
	
		JobSeeker jobSeekerSession = (JobSeeker) session.getAttribute("loggedInUser");
		ModelAndView modelAndView = new ModelAndView();
		if (jobSeekerSession != null) {
			session.setAttribute("employee", jobSeeker);
			modelAndView.setViewName("redirect:index");
			return modelAndView;
		}

		boolean flag = jobSeekService.register(jobSeeker);
		if (flag) {
			session.setAttribute("loggedInUser", jobSeeker);
			modelAndView.setViewName("redirect:index");
			return modelAndView;
		} else {
			modelAndView.addObject("msg", "Something went wrong! Please try again.");
			modelAndView.setViewName("register");
			modelAndView.addObject("employee", new JobSeeker());
			return modelAndView;
		}

	}
}