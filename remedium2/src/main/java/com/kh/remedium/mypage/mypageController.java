package com.kh.remedium.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mypageController {
	
	ModelAndView mav = new ModelAndView();

	
	
	@RequestMapping(value="/myPageMain")
	public ModelAndView myPageMain(HttpSession session){
		
		System.out.println("마이 페이지 메인");
		
		mav.setViewName("mypage");
		
		return mav;
	}
}
