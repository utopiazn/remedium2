package com.kh.remedium.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.remedium.common.CommandMap;

@Controller
public class InfoController {
	

	@RequestMapping(value="/info")
<<<<<<< HEAD
	public ModelAndView info(CommandMap commandMap) throws Exception{
		
		System.out.println("인포");
		
		ModelAndView mav = new ModelAndView("main2");
		
		/*List<Map<String, Object>> list = infoService.selectAll(commandMap.getMap());
		
		
		mav.setViewName("info", info);*/
		
		
		System.out.println("info");
		return mav;
	}
=======
	public String info(CommandMap commandMap) throws Exception{
		
		
	
		
		return "info";
>>>>>>> 10e4b170f4f2ce2231f9a713abc4a5c0a27193e8

	}
}
