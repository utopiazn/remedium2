package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

public interface FaqService {
	
	
	List<Map<String,Object>> selectAll(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectOne(Map<String,Object> map) throws Exception;
	
	void insertFaq(Map<String,Object> map) throws Exception;
	
	void updateFaq(Map<String,Object> map) throws Exception;
	
	void deleteFaq(Map<String,Object> map) throws Exception;
	
}
