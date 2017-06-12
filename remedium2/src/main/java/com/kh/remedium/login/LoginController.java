package com.kh.remedium.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.model.MemberModel;
import com.kh.remedium.service.LoginService;

@Controller
public class LoginController {
	
	
	 /**
     * <pre>
     * 1. MethodName : 로그인, 로그아웃, 회원
     * 2. ClassName  : MainController.java
     * 3. Comment    : 메인 화면.
     * 4. 작성자       :  장조성
     * 5. 작성일       : 2017. 6.7.
     * </pre>
     *
     * @param 
     * @param 
     * @return
     * @throws Exception
	*/
	
	ModelAndView mav = new ModelAndView();
	
	@Resource
	private LoginService LoginService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView memberLogin() {
		mav.setViewName("loginForm");
		return mav;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView memberLogin(MemberModel member, HttpServletRequest request) {
		
	
		MemberModel result = LoginService.memberLogin(member);
		
		if(result!=null){
			HttpSession session  = request.getSession();
			
			session.setAttribute("memberId", result.getMemberID());
			session.setAttribute("memberPasswd", result.getMemberPassword());
			session.setAttribute("memberName", result.getMemberName());
			session.setAttribute("cash", result.getCash());
			session.setAttribute("userAdmin", result.getUserAdmin());
			
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
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public ModelAndView memberModify(HttpSession session){
		
		if(session == null) {
			mav.setViewName("loginForm");
			return mav;
		}
		
		String memberId = session.getAttribute("memberId").toString();
		
		MemberModel member = LoginService.selectOne(memberId);
		mav.addObject("member", member);
		mav.setViewName("modifyForm");
		return mav;
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public ModelAndView memberModify(MemberModel member, HttpServletRequest request){
		System.out.println("1111111");
		HttpSession session = request.getSession(false);
		
		if(session == null){
			mav.setViewName("loginForm");
			return mav;	
		}
		
		LoginService.memberModify(member);
		mav.setViewName("redirect:/main3");
		
		return mav;
	
	}
	
}
