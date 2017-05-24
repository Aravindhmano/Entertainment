package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
 
	@RequestMapping("/")
	public ModelAndView index() {

 
		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	
	
	
	@RequestMapping("/ProductDetails")
	public ModelAndView product() {

		ModelAndView mv = new ModelAndView("ProductDetails");
		
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView login() {

		ModelAndView mv = new ModelAndView("login");
		
		return mv;
	}
	@RequestMapping("/registration")
	public ModelAndView registration() {

		ModelAndView mv = new ModelAndView("registration");
		
		return mv;
	}
	
}