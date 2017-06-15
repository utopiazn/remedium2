package com.kh.remedium.mypage;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/mypage")
public class roomAdminListController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="roomAdminList")
	public ModelAndView roomAdminListController()throws Exception{
		System.out.println("객실 예약 리스트");
		
		mav.setViewName("roomAdminList");
		
		return mav;
	}

}
