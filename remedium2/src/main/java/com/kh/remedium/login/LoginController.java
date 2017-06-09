package com.kh.remedium.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.service.LoginService;
import com.kh.remedium.model.MemberModel;

@Controller
public class LoginController {
	
	
	@Resource
	private LoginService LoginService;
	
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView memberLogin(MemberModel member, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
	
		MemberModel result = LoginService.memberLogin(member);
		
		if(result!=null){
			HttpSession session  = request.getSession();
			
			session.setAttribute("memberId", result.getMemberID());
			session.setAttribute("memberPasswd", result.getMemberPassword());
			session.setAttribute("memberName", result.getMemberName());
			session.setAttribute("cash", result.getCash());
			
			mav.setViewName("main3");
			return mav;
			
		}
		
		mav.setViewName("loginForm");
		return mav;	
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView memberLogOut(HttpServletRequest request, MemberModel member) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			session.invalidate();
		}
		
		mav.setViewName("main3");
		return mav;
		
		
		
	}
}
