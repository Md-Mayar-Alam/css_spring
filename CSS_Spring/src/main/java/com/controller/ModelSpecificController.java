package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Customer;

@Controller
public class ModelSpecificController {

	@RequestMapping(method=RequestMethod.GET, value="/form")
	public String sendCustomerObject(Model model) {
		model.addAttribute("customer", new Customer());
		return "modelSpecificForm";
	}
}
