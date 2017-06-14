package com.kh.remedium.main;


import com.kh.remedium.util.*;

import javax.servlet.http.HttpSession;

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
	
	
	@RequestMapping(value="/main")
	public ModelAndView mainForm(HttpSession session){

		
		
		//session.getValue(arg0)
		
		System.out.println("메인 페이지");
		
		//객실소개 이름 리스트 가져오기
		//ProjectUtil rcs = new ProjectUtil(session);		
		//rcs.roomClassSession();
		
		
		//mav.addObject(session);
		
		
		
		//mav.addObject("memberId", null);
		
		mav.setViewName("main3");
		return mav;
	}
	
	//실험1
	@RequestMapping(value="/main2")
	public String mainForm(){

		System.out.println("메인 페이지");
		
		
		
		return "main4";
	}
	
	
	/*
	
	private SampleService sampleService;
	
	
	@RequestMapping(value="/sample/openBoardList.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("/sample/boardList");
		
		List<Map<String,Object>> list = sampleService.selectBoardList(commandMap.getMap());
		
		mv.addObject("list",list);
				
		return mv;	
	}
	
	
	@RequestMapping(value="/sample/openBoardList.do")
	public String openBoardList(CommandMap commandMap, Model model) throws Exception{
		
		
		List<Map<String,Object>> list = sampleService.selectBoardList(commandMap.getMap());
		
		model.addAttribute("list",list);
				
		return "/sample/boardList";	
	}
	
	
	*/
	
	

/*	
	@RequestMapping(value="/main2")
	public ModelAndView mainForm1(){

		System.out.println("메인 페이지");
		
		
		
		mav.setViewName("main4");
		return mav;
	}
		*/
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
