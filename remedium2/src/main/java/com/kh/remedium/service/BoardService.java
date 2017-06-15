package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	
	List<Map<String,Object>> selectAll(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectOne(Map<String,Object> map) throws Exception;
	
	void insertBoard(Map<String,Object> map) throws Exception;
	
	void updateBoard(Map<String,Object> map) throws Exception;
	
	void deleteBoard(Map<String,Object> map) throws Exception;
	
	void insertReplyBoard(Map<String,Object> map) throws Exception;
	
}
