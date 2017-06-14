package com.kh.remedium.util;

import java.io.File;
import java.io.IOException;

import com.kh.remedium.util.ProjectUtil;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadTest {
	
	String uploadPath = new ProjectUtil().getPath()+"/remedium2/src/main/webapp/resources/image";
	
	@RequestMapping(value="/upload", method=RequestMethod.GET)
	public String uploadForm(){
		return "uploadTest";
	}
	
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String uploadByMultipartFile(
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam("title") String title, Model model) throws IOException{
		
		ProjectUtil.UplodeFile(uploadPath, multipartFile);
		
		model.addAttribute("title", title);
		if(!multipartFile.getOriginalFilename().isEmpty()){
			model.addAttribute("fileName", multipartFile.getOriginalFilename());
		}
		return "uploadTest";
	}
}
