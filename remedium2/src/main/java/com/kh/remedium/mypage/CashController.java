package com.kh.remedium.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CashController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/myPageCashForm")
	public ModelAndView pagecashForm(HttpSession session){
		System.out.println("캐쉬 충전 폼");
		
		mav.setViewName("pageListCash");
		
		return mav;
	}

}
