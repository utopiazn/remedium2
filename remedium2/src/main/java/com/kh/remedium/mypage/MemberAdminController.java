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
public class MemberAdminController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="joinService")
	private JoinService joinService;
	
	ModelAndView mav = new ModelAndView();
	

	
	@RequestMapping(value="memberAdminList")
	public ModelAndView memberAdminList(CommandMap commandMap) throws Exception{
		System.out.println("회원 목록");
		
		List<Map<String, Object>> list = joinService.selectAll(commandMap.getMap());
		
		mav.addObject("list",list);
		mav.setViewName("memberAdminList");
	
		return mav;
	}
	
	@RequestMapping(value="memberAdminView")
	public ModelAndView memberAdminView(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = joinService.selectOne(commandMap.getMap());
		
		mav.addObject("admin", map);
		mav.setViewName("memberAdminView");
		
		return mav;
		
	}
	
	@RequestMapping(value="/memberAdminModify", method=RequestMethod.GET)
	public ModelAndView memberAdminModify(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = joinService.selectOne(commandMap.getMap());
	
		mav.addObject("member", map);
		mav.setViewName("memberAdminModify");
		
		return mav;
		
	}
	
	@RequestMapping(value="/memberAdminModify", method=RequestMethod.POST)
	public ModelAndView memberAdminModify(CommandMap commandMap, String memberId) throws Exception {
		
		
		
		if(!commandMap.get("zipcode1").equals(null)){
			commandMap.put("zipcode", commandMap.get("zipcode1"));
		}
		
		if(!commandMap.get("addr11").equals(null)){
			commandMap.put("addr1", commandMap.get("addr11"));
		}
		
		if(!commandMap.get("addr22").equals(null)){
			commandMap.put("addr2", commandMap.get("addr22"));
		}
		
		commandMap.toString();
		
		joinService.updateMember(commandMap.getMap());
		
		System.out.println("1111");
		mav.setViewName("redirect:/mypage/memberAdminView?memberId="+memberId);
		return mav;
	}
	
	@RequestMapping(value="/memberAdminDelete")
	public ModelAndView memberAdminDelete(CommandMap commandMap) throws Exception {
		
		joinService.deleteMember(commandMap.getMap());
	
		mav.setViewName("redirect:/mypage/memberAdminList");
		
		return mav;
		
	}


}
