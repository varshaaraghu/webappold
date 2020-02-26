package com.springmvc.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.model.DataService;

@Controller
public class FirstController {

	@Autowired
	 DataService dservice;
	@RequestMapping("hello")
	public String doThis() {
		return "home"; //name of jsp page thatneeds to be returned
	}	
		@RequestMapping("/page") 
	public String perform(ModelMap m) {
			m.addAttribute("people",dservice.getPeople());
		return "info";
	
	}
}
