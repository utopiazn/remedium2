package com.kh.remedium.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;
import com.kh.remedium.service.BoardService;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	
	 /**
     * <pre>
     * 1. MethodName :
     * 2. ClassName  : BoardController.java
     * 3. Comment    : 메인 화면.
     * 4. 작성자       :  허어녕
     * 5. 작성일       : 2017. 6.14.
     * </pre>
     *
     * @param 
     * @param 
     * @return
     * @throws Exception
	*/
	
	@Resource
	private BoardService boardService;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="boardList")
	public ModelAndView boardList(CommandMap commandMap) throws Exception {

		List<Map<String,Object>> list = boardService.selectAll(commandMap.getMap());
		
		mav.addObject("list", list);
		mav.setViewName("boardList");
		return mav;
	}
	
	@RequestMapping(value="boardWrite", method=RequestMethod.GET)
	public ModelAndView boardWrite() throws Exception {
		
		mav.setViewName("boardWriteForm");
		return mav;
		
	}
	
	/*@RequestMapping(value="boardWrite", method=RequestMethod.POST)
	public ModelAndView boardWrite(CommandMap commandMap) throws Exception {
		
		if(commandMap.get("ref").equals(0)){
			commandMap.containsKey("ref");
		}
		
		boardService.insertBoard(commandMap.getMap());
		
		mav.setViewName("redirect:/boardList");
		
		return mav;
		
	}*/
	
	@RequestMapping(value="boardView")
	public ModelAndView boardView(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = boardService.selectOne(commandMap.getMap());
		
		mav.addObject("board", map);
		mav.setViewName("boardView");
		
		return mav;
		
	}
	
	
}
