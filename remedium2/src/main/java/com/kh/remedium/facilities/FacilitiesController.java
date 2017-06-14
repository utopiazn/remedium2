package com.kh.remedium.facilities;


import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/facility")
public class FacilitiesController {
	
	@Resource(name="facilitiesDaoService")
	private FacilitiesDaoService facilitiesDaoService;
	
	@RequestMapping(value="/list")
    public String facilitiesList(Model model) throws Exception{
    	
		ArrayList<Facilities> list = facilitiesDaoService.getList();
		
		model.addAttribute("list", list);
    	
    	return "facilitiesList";
    }
	
	@RequestMapping(value="/article", method=RequestMethod.GET)
    public String getFacilities(@ModelAttribute(value="no") int no, Model model) throws Exception{
    	
		System.out.println(no);
		
		
		
		Facilities article = facilitiesDaoService.getFacilities(no);
		
		model.addAttribute("article", article);
    	
    	return "facilitiesView";
    }
}