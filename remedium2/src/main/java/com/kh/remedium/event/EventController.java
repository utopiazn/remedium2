package com.kh.remedium.event;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.EventService;

@Controller
@RequestMapping(value="/event")
public class EventController {
		
		Logger log = Logger.getLogger(this.getClass());
	
		ModelAndView mav = new ModelAndView();
		
		
		@Resource(name="eventService")
		private EventService eventService;
		
		@RequestMapping(value="/eventList")
		public ModelAndView eventList(CommandMap commandMap)throws Exception{
			
			
			System.out.println("이벤트리스트");
			
			List<Map<String, Object>> list = eventService.selectList(commandMap.getMap());
			
			System.out.println(list.get(0));
			
			mav.addObject("list", list);
			
			mav.setViewName("eventList");
			
			return mav;
		}
		
		@RequestMapping(value="/eventView")
		public ModelAndView eventView(CommandMap commandMap)throws Exception{
			
			commandMap.toString();
			
			System.out.println("이벤트뷰");
			
			 Map<String, Object> list = eventService.selectOne(commandMap.getMap());
			
			 mav.addObject("list", list);
			
			mav.setViewName("eventView");
			
			return mav;
		}
		
		
		

	}

