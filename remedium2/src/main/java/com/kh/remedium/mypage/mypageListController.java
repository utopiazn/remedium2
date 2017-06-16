package com.kh.remedium.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mypageListController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/myPageList")
	public ModelAndView pageList(HttpSession session){
		
		System.out.println("나의 예약 페이지 리스트");
		
		mav.setViewName("pageList");
		
		return mav;
	}
	
	

}
