package com.kh.remedium.event;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class EventController {
		
		ModelAndView mav = new ModelAndView();
		
		
		@RequestMapping(value="/eventList")
		public ModelAndView info(HttpSession session){
			
			System.out.println("이벤트리스트");
			
			mav.setViewName("eventList");
			
			return mav;
		}

	}

