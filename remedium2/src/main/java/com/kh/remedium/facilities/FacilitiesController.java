package com.kh.remedium.facilities;


import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacilitiesController {
	
	@Resource(name="facilitiesDaoService")
	private FacilitiesDaoService facilitiesDaoService;
	
	@RequestMapping(value="/facilities")
    public String facilitiesList(Model model) throws Exception{
    	
		ArrayList<Facilities> list = facilitiesDaoService.getList();
		model.addAttribute("list", list);
    	
    	return "service/facilitiesList";
    }
}