package com.kh.remedium.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.remedium.common.CommandMap;

@Controller
public class InfoController {
	

	@RequestMapping(value="/info")
	public String info(CommandMap commandMap) throws Exception{
		
		
	
		
		return "info";

	}
}
