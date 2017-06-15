package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

public interface EventService {
	
	public void insert(Map<String,Object> map);
	
	public void update(Map<String,Object> map);
	
	public void delete(Map<String,Object> map);
	
	public Map<String, Object> selectOne(Map<String,Object> map);
	
	public List<Map<String,Object>> selectList(Map<String,Object> map);
	
}
