package com.controller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WholesaleController {
	
	@Autowired
	ServletConfig servletConfig;

	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value="/wholesale", method=RequestMethod.GET)
	public String getWholesalePage() {
		System.out.println("ServletConfig "+servletConfig);
		System.out.println("ServletContext "+servletContext);
		
		return "wholesale";
	}
}
