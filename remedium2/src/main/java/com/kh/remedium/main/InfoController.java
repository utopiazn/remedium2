package com.kh.remedium.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;

@Controller
public class InfoController {
	

	@RequestMapping(value="/info")
	public ModelAndView info(CommandMap commandMap) throws Exception{
		
		System.out.println("인포");
		
		ModelAndView mav = new ModelAndView("info");
		
		System.out.println("info");
		return mav;
	}


	
}
