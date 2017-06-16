package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.remedium.dao.FaqDAO;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Resource
	private FaqDAO faqDAO;
	
	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return faqDAO.selectList(map);
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return faqDAO.selectOne(map);
	}

	@Override
	public void insertFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		faqDAO.insert(map);
	}

	@Override
	public void updateFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		faqDAO.update(map);
	}

	@Override
	public void deleteFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		faqDAO.delete(map);
	}
	
	
	
	
	
}
