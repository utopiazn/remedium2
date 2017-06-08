package com.kh.remedium.util;

import java.io.File;
import java.io.IOException;

import com.kh.remedium.util.ProjectUtil;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadTest {
	
	String uploadPath = new ProjectUtil().getPath()+"/remedium2";
	
	@RequestMapping("/upload")
	public String uploadByMultipartFile(
			@RequestParam("f") MultipartFile multipartFile,
			@RequestParam("title") String title, Model model) throws IOException{
		if(!multipartFile.isEmpty()){
			File file = new File(uploadPath, multipartFile.getOriginalFilename());
			multipartFile.transferTo(file);
			model.addAttribute("title", title);
			model.addAttribute("fileName", multipartFile.getOriginalFilename());
			model.addAttribute("uploadPath", file.getAbsolutePath());
			return "upload/success";
		}
		return "upload/fail";
	}
}
