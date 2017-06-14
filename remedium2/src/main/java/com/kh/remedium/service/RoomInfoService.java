package com.kh.remedium.service;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface RoomInfoService {

	//다중
	List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception;

	//한줄
	Map<String, Object> selectRoomClass(Map<String, Object> map) throws Exception;

	void deleteRoomClass(Map<String, Object> map) throws Exception;
	
	void insert(Map<String, Object> map) throws Exception;
	
	void updateRoomClass(Map<String, Object> map) throws Exception;

	void updateRoomClass2(Map<String, Object> map) throws Exception;	
	
}
