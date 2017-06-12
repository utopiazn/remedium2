package com.kh.remedium.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class passwordController {
	
	ModelAndView mav = new ModelAndView();
	
	
	@RequestMapping(value="loginDeleteForm")
	public ModelAndView checkpassword(HttpSession session){
		System.out.println("회원 탈퇴");
		
		mav.setViewName("checkPassword");
		
		return mav;
	}

}
