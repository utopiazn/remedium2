package com.kh.remedium.qna;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.FaqService;

@Controller
@RequestMapping(value="/faq")
public class FaqController {
	
	
	@Resource
	private FaqService faqService;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/faqList")
	public ModelAndView boardList(CommandMap commandMap) throws Exception {

		List<Map<String,Object>> list = faqService.selectAll(commandMap.getMap());
		
		mav.addObject("list", list);
		mav.setViewName("faqList");
		return mav;
	}
	
	@RequestMapping(value="/faqWrite", method=RequestMethod.GET)
	public ModelAndView boardWrite() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("faqWrite");
		return mav;
		
	}
	
	@RequestMapping(value="/faqWrite", method=RequestMethod.POST)
	public ModelAndView faqWrite(CommandMap commandMap) throws Exception {
	
		faqService.insertFaq(commandMap.getMap());
		
		mav.setViewName("redirect:/faq/faqList");
		
		return mav;
		
	}
	
	@RequestMapping(value="/faqModify", method=RequestMethod.GET)
	public ModelAndView faqModify(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = faqService.selectOne(commandMap.getMap());
	
		mav.addObject("faq", map);
		mav.setViewName("faqWrite");
		
		return mav;
		
	}
	
	@RequestMapping(value="/faqModify", method=RequestMethod.POST)
	public ModelAndView faqModify(CommandMap commandMap, int faqId) throws Exception {
		
	
		
		faqService.updateFaq(commandMap.getMap());
		
		System.out.println("1111");
		mav.setViewName("redirect:/faq/faqView?faqId="+faqId);
		return mav;
	}
	
	@RequestMapping(value="/faqView")
	public ModelAndView faqView(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = faqService.selectOne(commandMap.getMap());
		
		mav.addObject("faq", map);
		mav.setViewName("faqView");
		
		return mav;
		
	}
	
	@RequestMapping(value="/faqDelete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		

	
			faqService.deleteFaq(commandMap.getMap());

		
		mav.setViewName("redirect:/faq/faqList");
		
		return mav;
	}
	

}
