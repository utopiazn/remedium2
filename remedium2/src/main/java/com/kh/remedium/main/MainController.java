package com.kh.remedium.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	
	
	ModelAndView mav = new ModelAndView();
	
	
	@RequestMapping(value="/main.do")
	public ModelAndView mainForm(){

		System.out.println("���� ������");
		
		mav.setViewName("main3");
		return mav;
	}

	
}
