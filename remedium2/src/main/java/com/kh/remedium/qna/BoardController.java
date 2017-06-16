package com.kh.remedium.qna;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.sampled.AudioFormat.Encoding;

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
	
	@RequestMapping(value="/boardList")
	public ModelAndView boardList(CommandMap commandMap) throws Exception {

		List<Map<String,Object>> list = boardService.selectAll(commandMap.getMap());
		
		mav.addObject("list", list);
		mav.setViewName("boardList");
		return mav;
	}
	
	@RequestMapping(value="/boardWrite", method=RequestMethod.GET)
	public ModelAndView boardWrite() throws Exception {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("boardWriteForm");
		return mav;
		
	}
	
	@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
	public ModelAndView boardWrite(CommandMap commandMap) throws Exception {
	
		boardService.insertBoard(commandMap.getMap());
		
		mav.setViewName("redirect:/board/boardList");
		
		return mav;
		
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.GET)
	public ModelAndView boardModify(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = boardService.selectOne(commandMap.getMap());
	
		mav.addObject("board", map);
		mav.setViewName("boardWriteForm");
		
		return mav;
		
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.POST)
	public ModelAndView boardModify(CommandMap commandMap, int no) throws Exception {
		
	
		
		boardService.updateBoard(commandMap.getMap());
		
		System.out.println("1111");
		mav.setViewName("redirect:/board/boardView?no="+no);
		return mav;
	}
	
	@RequestMapping(value="/boardView")
	public ModelAndView boardView(CommandMap commandMap) throws Exception {
		
		Map<String,Object> map = boardService.selectOne(commandMap.getMap());
		
		mav.addObject("board", map);
		mav.setViewName("boardView");
		
		return mav;
		
	}
	
	@RequestMapping(value="/boardDelete")
	public ModelAndView boardDelete(CommandMap commandMap, int re_step) throws Exception {
		
		System.out.println("restep"+re_step);
		
		if(re_step != 0){
			System.out.println("restep"+re_step);
			boardService.deleteReply(commandMap.getMap());
		}
		
		else {
			boardService.deleteBoard(commandMap.getMap());
		}
		
		mav.setViewName("redirect:/board/boardList");
		
		return mav;
	}
	
	@RequestMapping(value="/boardReply", method=RequestMethod.GET)
	public ModelAndView boardReply(CommandMap commandMap) throws Exception {
		ModelAndView mav = new ModelAndView();
		Map<String,Object> map = boardService.selectOne(commandMap.getMap());
		
	
		System.out.println("map"+map.size());
		
	/*	map.put("content", "");
		map.put("subject", "Re :"+subject);*/
		
		map.remove("CONTENT");
		
		
		mav.addObject("board", map);
		mav.setViewName("boardWriteForm");
		
		return mav;
	}
	
	@RequestMapping(value="/boardReply", method=RequestMethod.POST)
	public ModelAndView boardReply(CommandMap commandMap, String subject) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		commandMap.toString();
		
		commandMap.put("subject", "    Re : "+ subject);
		
		commandMap.toString();
		boardService.insertReplyBoard(commandMap.getMap());  
		
		mav.setViewName("redirect:/board/boardList");
		
		return mav;
		
	}
	
	
	
	
}
