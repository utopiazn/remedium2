package com.kh.remedium.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.JoinService;

@Controller
public class MemberController {
	
	Logger log = Logger.getLogger(this.getClass());
	

	ModelAndView mav = new ModelAndView();
	
	@Resource
	private MemberService memberService;
	
	@Resource
	private JoinService joinService;
	
	
	 /**
     * <pre>
     * 1. MethodName : mainForm
     * 2. ClassName  : MemberController.java
     * 3. Comment    : 회원 가입 폼.
     * 4. 작성자       :  장조성
     * 5. 작성일       : 2017. 6.12.
     * </pre>
     *
     * @param 
     * @param 
     * @return
     * @throws Exception
	*/	

	//회원 가입 폼
	@RequestMapping(value="/joinForm")
	public ModelAndView mainForm(){
		
		System.out.println("회원가입폼");

		mav.setViewName("joinForm");

		return mav;
	}
	
	

	 /**
    * <pre>
    * 1. MethodName : joinAddForm
    * 2. ClassName  : MemberController.java
    * 3. Comment    : 회원 가입 폼 처리폼.
    * 4. 작성자       :  장조성
    * 5. 작성일       : 2017. 6.13
    * </pre>
    *
    * @param 
    * @param 
    * @return
    * @throws Exception
	*/	
	
	@RequestMapping(value="/joinAddForm")
	public ModelAndView joinAddForm(CommandMap commandMap) throws Exception{
		
		System.out.println("회원처리폼");

		
		
		commandMap.toString();
		System.out.println(commandMap.isEmpty());
		System.out.println("회원처리폼22222222222222");

		joinService.insert(commandMap.getMap());

		System.out.println("회원처리폼444444444444444444");
		
		mav.setViewName("redirect:/loginForm");

		return mav;
	}
	
	
	
	
	
	// 로그인 폼
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView memberLogin() {
		mav.setViewName("loginForm");
		return mav;
	}
	
	// 로그인 처리
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView memberLogin(MemberModel member, HttpServletRequest request) {
		
	
		MemberModel result = memberService.memberLogin(member);
		
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
	
	
	// 로그아웃
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
	
	// 회원 수정 폼
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public ModelAndView memberModify(HttpSession session){
		
		if(session != null) {
			String memberId = session.getAttribute("memberId").toString();
			
			MemberModel member = memberService.selectOne(memberId);
			mav.addObject("member", member);
			mav.setViewName("modifyForm");
			return mav;
		}
		mav.setViewName("loginForm");
		return mav;
	}
	
	// 회원 수정 처리
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public ModelAndView memberModify(MemberModel member, HttpServletRequest request){
		System.out.println("1111111");
		HttpSession session = request.getSession(false);
		
		if(session == null){
			mav.setViewName("loginForm");
			return mav;	
		}
		

		if(!member.getZipcode1().equals("")){
			member.setZipcode(member.getZipcode1());
		}
		
		if(!member.getAddr11().equals("")){
			member.setAddr1(member.getAddr11());
		}
		
		if(!member.getAddr22().equals("")){
			member.setAddr2(member.getAddr22());
		}
		
		memberService.memberModify(member);
		mav.setViewName("redirect:/main");

		
		return mav;
	
	}
	
	
	//회원 탈퇴
	@RequestMapping(value="/delete")
	public ModelAndView memberDelete(MemberModel member, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		
		
		if(session != null){
			String memberId = session.getAttribute("memberId").toString();
			
			memberService.memberDelete(memberId);
			session.invalidate();
			mav.setViewName("redirect:/main");
			return mav;
		}
		
		
		mav.setViewName("loginForm");
		return mav;	
	}
	
	// 아이디 찾기 폼
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public ModelAndView findId() {
		
		mav.setViewName("findIdForm");
		return mav;
	}
	
	
	// 아이디 찾기 처리
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public ModelAndView findId(MemberModel member, HttpServletRequest request){
		
			String memberID = memberService.findId(member);
			
			if(memberID != null){
				mav.addObject("memberID", memberID);
				mav.setViewName("findIdSuccess");
				return mav;
			}
			
			mav.setViewName("findError");
			return mav;
		
	}
	
	// 비밀번호 찾기 폼
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public ModelAndView findPw() {
		
		mav.setViewName("findPwForm");
		return mav;
	}
	
	// 비밀번호 찾기 처리
	@RequestMapping(value="/findPw", method=RequestMethod.POST)
	public ModelAndView findPw(MemberModel member, HttpServletRequest request){
		
			String memberPw = memberService.findPw(member);
			
			if(memberPw != null){
				mav.addObject("memberPw", memberPw);
				mav.setViewName("findPwSuccess");
				return mav;
			}
			
			mav.setViewName("findError");
			return mav;
		
	}
	
	
	
}
