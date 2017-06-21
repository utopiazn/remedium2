package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.remedium.dao.testDAO;

@Service(value="testService")
public class testServiceImpl implements testService {

	@Resource
	private testDAO testDAO;
	
	
	
	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return testDAO.listAll();
	}

	

}
