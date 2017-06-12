package com.kh.remedium.login.join;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class JoinController {
	
	ModelAndView mav = new ModelAndView();
	
	
    /**
     * <pre>
     * 1. MethodName : main
     * 2. ClassName  : JoinController.java
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
	
	
	@RequestMapping(value="/joinForm")
	public ModelAndView mainForm(HttpSession session){
		
		System.out.println("회원가입폼");

		mav.setViewName("joinForm");

		return mav;
	}

}
