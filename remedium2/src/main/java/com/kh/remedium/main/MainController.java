package com.kh.remedium.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	
	
	ModelAndView mav = new ModelAndView();
	
	
	
    /**
     * <pre>
     * 1. MethodName : main
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
	
	
	@RequestMapping(value="/main.do")
	public ModelAndView mainForm(){

		System.out.println("메인 페이지");
		
		mav.setViewName("main3");
		return mav;
	}
	
	
	/*
	@RequestMapping("/alliance/partnerApple")
	public ModelAndView partnerApple(HttpServletRequest request, @RequestParams Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		commandMap.put("CSL_FAQ_BRAND_CC", Const.BRAND_APPLE);
		mv.addObject("faqList", this.faqService.selectFaqAllianceList(commandMap));
		
		return mv.addObject("commandMap", commandMap);
	}
	
	*    <c:if test="${empty commandMap.searchKeyword }">
	*
	*/

	
}
