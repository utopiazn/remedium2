package com.kh.remedium.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.org.eclipse.jdt.core.dom.ThisExpression;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.remedium.common.CommandMap;

/*@Controller
public class CashController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/myPageCashForm")
	public ModelAndView pagecashForm(HttpSession session){
		System.out.println("캐쉬 충전 폼");
		
		mav.setViewName("pageListCash");
		
		return mav;
	}*/

@Controller()
@RequestMapping(value="myPageCashForm")
public class CashController{
	
	Logger logger = Logger.getLogger(this.getClass());
	
	/*@Resource(name="cashService")
	private CashService cashService;*/

	
	@RequestMapping(value="/?")
	public String myPageCashForm (CommandMap commandMap, Model model) throws Exception{
		
		/*List<Map<String, Object>> list = cashService.*/
		
		/*model.addAllAttributes("list", list);*/
		
		return "main3";
	}
}
