package com.example.demo;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloHuman {
	
	@RequestMapping("")
	public String main() {
		return "index.jsp";
	}

	@RequestMapping("/omikuji")
	  public String home(HttpSession session,
			@RequestParam(value="num") String num,
	  		@RequestParam(value="city") String city,
	  		@RequestParam(value="parson") String parson,
	  		@RequestParam(value="hobby") String hobby,
	  		@RequestParam(value="living") String living,
	  		@RequestParam(value="nicething") String nicething
	  		) {
		
		String message = "In "+ num + " years you will live in " + city + " with \n" + parson + " as your roomate, you will " + hobby +
				" for a living. \n The next time you see a " + living + ", you will have a good luck. \n Also,"+nicething;
		session.setAttribute("message", message);
		return "redirect:/omikuji/show";
	
}
	@RequestMapping("/omikuji/show")
	  public String show(Model model, HttpSession session) {
		String message = (String) session.getAttribute("message");
		model.addAttribute("message", message);
		
		return "omikuji.jsp";
	
}
	
	
	
	
}
