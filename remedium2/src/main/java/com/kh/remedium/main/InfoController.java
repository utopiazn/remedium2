package com.kh.remedium.main;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;

@Controller

public class InfoController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	ModelAndView mav = new ModelAndView();
	
	
	
	
	@RequestMapping(value="/info")
	public ModelAndView info(CommandMap commandMap) throws Exception{
		
		System.out.println("인포");
		
		ModelAndView mav = new ModelAndView("main2");
		
		List<Map<String, Object>> list = infoService.selectAll(commandMap.getMap());
		
		
		mav.setViewName("info", info);
		
		
		System.out.println("in);
		return mav;
	}

}
