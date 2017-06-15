package com.kh.remedium.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.JoinService;

@Controller()
@RequestMapping(value="/mypage")
public class memberAdminListController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="joinService")
	private JoinService joinService;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="memberAdminList", method=RequestMethod.GET)
	public ModelAndView memberAdminList() throws Exception{
		
	ModelAndView mav = new ModelAndView("memberAdminList");
		
		return mav;
	}
	
	@RequestMapping(value="memberAdminList", method=RequestMethod.POST)
	public ModelAndView memberAdminList(HttpSession session, CommandMap commandMap, Model model ) throws Exception{
		System.out.println("회원 목록");
		
		List<Map<String, Object>> list = joinService.selectAll(commandMap.getMap());
		
		model.addAttribute("list",list);
		
		/*mav.addObject("list", list);*/
		
		/*mav.setViewName("roomInfoView");*/
		System.out.println("roomClass :"+ commandMap.get("roomClass"));	
		
		
		return mav;
	}

}
