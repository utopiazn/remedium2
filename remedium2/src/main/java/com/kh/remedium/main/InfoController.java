package com.kh.remedium.main;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InfoController {
	
	ModelAndView mav = new ModelAndView();
	
	
	@RequestMapping(value="/info")
	public ModelAndView info(HttpSession session){
		
		System.out.println("인포");
		
		mav.setViewName("info");
		
		return mav;
	}

}
