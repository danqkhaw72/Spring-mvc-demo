package com.kamu.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SilliControler {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

}
