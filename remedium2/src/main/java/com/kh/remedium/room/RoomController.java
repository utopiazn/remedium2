package com.kh.remedium.room;



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
import com.kh.remedium.service.RoomService;

@Controller()
@RequestMapping(value="/room")
public class RoomController {
	


	Logger log = Logger.getLogger(this.getClass());
	

	List<Map<String, Object>> list;
	
	@Resource(name="roomService")	
	private RoomService roomService;
	
	
	
	
	
	
	
	
	@RequestMapping(value="/roomList")
	public ModelAndView roomList(CommandMap commandMap) throws Exception{

		ModelAndView mav = new ModelAndView();
		
		System.out.println("commandMap:"+commandMap.getMap());
		
		list = roomService.selectList(commandMap.getMap());
		 
		System.out.println("list 첫번째 정보:"+list.get(0));
		
		mav.addObject("list",list);
		
		
		
		mav.setViewName("roomList");
		
		return mav;
	}
	
	@RequestMapping(value="/roomAllList")
	public ModelAndView roomListAdmin() throws Exception{

		ModelAndView mav = new ModelAndView();

		list = roomService.selectAll();
		 
		mav.addObject("list",list);
		
		
		
		mav.setViewName("roomAllList");
		
		return mav;
	}
		
}
