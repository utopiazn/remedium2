package com.kh.remedium.room;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.RoomInfoService;

@Controller()
@RequestMapping(value="/room")
public class RoomInfoController {
	


	Logger log = Logger.getLogger(this.getClass());
	

	ModelAndView mav = new ModelAndView();
	
	@Resource(name="roomInfoService")	
	private RoomInfoService roomInfoService;
	
	
	
    /**
     * <pre>
     * 1. MethodName : Info
     * 2. ClassName  : InfoController.java
     * 3. Comment    : 메인 화면.
     * 4. 작성자       :  장조성
     * 5. 작성일       : 2017. 6.14.
     * </pre>
     *
     * @param 
     * @param 
     * @return
     * @throws Exception
	*/
	
	
	@RequestMapping(value="/roomInfoView")
	public ModelAndView roomInfoView(CommandMap commandMap) throws Exception{

		

		System.out.println("롬정보 패이지로 이동");
		
		
		ModelAndView mav = new ModelAndView("main3");
		
		List<Map<String, Object>> list = roomInfoService.selectAll(commandMap.getMap());
		
		
		mav.addObject("list",list);
		
	
		
		
		
		System.out.println("roomClass :"+ commandMap.get("roomClass"));	
		
		
		return mav;
	}
	
	
	@RequestMapping(value="/roomInfoView2")
	public String roomInfoView2(CommandMap commandMap, Model model) throws Exception{
		
		
		
		List<Map<String, Object>> list = roomInfoService.selectAll(commandMap.getMap());
		
		model.addAttribute("list",list);
		
				
		return "main3";	
	}

}
