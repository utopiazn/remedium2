package com.kh.remedium.service;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface RoomService {

	List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectAll() throws Exception;
}
