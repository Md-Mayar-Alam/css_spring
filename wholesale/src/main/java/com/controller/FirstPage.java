package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FirstPage {
	int rollNo;
	
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String getIndexPage() {
		return "index";
	}

}
