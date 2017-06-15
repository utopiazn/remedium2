package com.kh.remedium.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.JoinService;

/*@Controller
public class CashController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/myPageCashForm")
	public ModelAndView pagecashForm(HttpSession session){
		System.out.println("캐쉬 충전 폼");
		
		mav.setViewName("pageListCash");
		
		return mav;
	}*/

@Controller()
@RequestMapping(value="myPage")
public class CashController{
	
	Logger logger = Logger.getLogger(this.getClass());
	
	@Resource(name="joinService")
	private JoinService joinService;

	
	@RequestMapping(value="myPageCash", method=RequestMethod.GET)
	public ModelAndView cashUpdate() throws Exception {
		
		ModelAndView mav = new ModelAndView("pageListCash");
		
		return mav;
		
	}
	
	@RequestMapping(value="myPageCash", method=RequestMethod.POST)
	public ModelAndView cashUpdate(CommandMap commandMap, HttpSession session,@ModelAttribute("cash") int cash2) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		
		System.out.println("cash:" + cash2);
		
		int oldCash = (Integer) session.getAttribute("cash");
		
		session.setAttribute("cash", oldCash + cash2);
		
		joinService.update(commandMap.getMap());
				
		//session.setAttribute("cash", commandMap.get("cash")+cash);
		
		
		mav.setViewName("redirect:/myPageMain");
		return mav;
	}
}
