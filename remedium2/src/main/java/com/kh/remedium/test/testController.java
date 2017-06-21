package com.kh.remedium.test;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.kh.remedium.service.testService;

@Controller
@RequestMapping(value="/test")
public class testController {
	
	@Resource(name="testService")
	private testService testService;
	
	@RequestMapping(value="/test")
	public ModelAndView testForm() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		List< Map<String, Object>> list = testService.selectAll();
			
		mav.addObject("list",list);		
		
		
		mav.setViewName("test");
		return mav;		
	}

	
	
}
