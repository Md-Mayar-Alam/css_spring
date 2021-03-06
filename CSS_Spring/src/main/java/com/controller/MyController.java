package com.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Customer;

@Controller
public class MyController 
{
	@Autowired
	ReloadableResourceBundleMessageSource messageSource;
	
	private static final Logger logger = Logger.getLogger(MyController.class);
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String getIndexPage()
	{
		logger.debug("index is exceuted");
		return "index";
	}
	
	//public String getHomePage(Locale locale, Model model)
	
	@RequestMapping(value="/homepage", method=RequestMethod.GET)
	public String getHomePage(Model model)
	{
		String nameList[]= {
				"Mayar",
				"Rohan",
				"Lokesh Sir",
				"Vishal"
		};
		System.out.println("Message Source is "+messageSource);
		ArrayList<String> list=new ArrayList<>();
		list.add("Hii");
		list.add("Hello");
		
		model.addAttribute("list", list);
		model.addAttribute("nameList", nameList);
		
		model.addAttribute("customer", new Customer("Alam",8676072061L));
		String welcomeMessage=messageSource.getMessage("welcome.message", null, null);
		model.addAttribute("welcomeMessage", welcomeMessage);
		
		int currentYear=Calendar.getInstance().get(Calendar.YEAR);
		model.addAttribute("currentYear", currentYear);
		return "homepage";
	}
}
