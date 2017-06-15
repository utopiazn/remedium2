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
	public ModelAndView roomInfoView(CommandMap commandMap,@ModelAttribute("roomClass") int roomClass) throws Exception{

		

		System.out.println("롬정보 패이지로 이동");
		
		commandMap.toString();
		//ModelAndView mav = new ModelAndView("roomInfoView");
		
		List<Map<String, Object>> list = roomInfoService.selectAll(commandMap.getMap());
		
	
		
		 Map<String, Object> subList = list.get(roomClass);
		 System.out.println(roomClass);
		 
		 
		 //subList.put(key, value)
			
		mav.addObject("list",list);
		
		
	
		
		
		mav.setViewName("roomInfoView");
		System.out.println("roomClass :"+ commandMap.get("roomClass"));	
		
		
		return mav;
	}
	
	
	@RequestMapping(value="/roomInfoView2")
	public String roomInfoView2(CommandMap commandMap, Model model) throws Exception{
		
		
		
		List<Map<String, Object>> list = roomInfoService.selectAll(commandMap.getMap());
		
		model.addAttribute("list",list);
		
				
		return "main3";	
	}

	
	
	
	
/*	
	
	//객실 클래스 개별 뷰 호출 함수
		public void roomInfo(int roomClass) throws Exception {
		
			if( roomClass > 0 ){			
				
				paramClass = new RoomclassBean();
				resultClass = new RoomclassBean();		
				
				paramClass.setRoom_class(String.valueOf(roomClass));		
		
				resultClass = (RoomclassBean)sqlMapper.queryForObject("roomclassSQL.selectRoomClass", paramClass);
				
				
				System.out.println("--------------객실 클래스 개별 뷰---------------------");
				System.out.println("객실 종류" +resultClass.getRoom_class());
				System.out.println("객실 종류 이름" +resultClass.getName());
				System.out.println("사진경로(메인)" +resultClass.getImage());
				System.out.println("내용" +resultClass.getContent());
				System.out.println("시설정보" +resultClass.getImage2());
				System.out.println("------------------------------------------------");
				
				//메인 이미지를 나누기 위해 사용
				imageSplit(resultClass.getImage());
				
			
				switch (imageNum) {
				case 1:	imageMain = this.image_01;	break;
				case 2:	imageMain = this.image_02;	break;
				case 3:	imageMain = this.image_03;	break;
				case 4:	imageMain = this.image_04;	break;
				case 5:	imageMain = this.image_05;	break;

				default: imageMain = ""; break;
				}
				
			
				
				
				
				System.out.println("--------------사진 이미지 메인---------------------");
				System.out.println("사진1" +getImage_01());
				System.out.println("사진2" +getImage_02());
				System.out.println("사진3" +getImage_03());
				System.out.println("사진4" +getImage_04());
				System.out.println("사진5" +getImage_05());
				System.out.println("------------------------------------------------");
				
			}
			
		}

	*/
	
	
	
}
