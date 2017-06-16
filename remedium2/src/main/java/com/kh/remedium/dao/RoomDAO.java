package com.kh.remedium.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class RoomDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		List<Map<String, Object>> list;
		
		if(map.get("people").equals("9")){
			if(map.get("rcType").equals("0")){
				list= (List<Map<String, Object>>)selectList("roomSQL.select_PeopleNoTypeNo", map);
			}else{
				list= (List<Map<String, Object>>)selectList("roomSQL.select_typeC", map);
			}
		}else{
			if(map.get("rcType").equals("0")){
			
				if(map.get("people").equals("0")){
					list= (List<Map<String, Object>>)selectList("roomSQL.selectSerchGroup", map);
				}else{
					list= (List<Map<String, Object>>)selectList("roomSQL.selectSerch", map);
				}
			
			}else{
				if(map.get("people").equals("0")){
					list= (List<Map<String, Object>>)selectList("roomSQL.selectSerchGroup_typeC", map);
				}else{
					list= (List<Map<String, Object>>)selectList("roomSQL.selectSerch_typeC", map);
				}
			}
		}
		return list;  
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll() throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("roomSQL.selectAll");
		
		return list;  
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectRoomClass(Map<String, Object> map) throws Exception {
	
		return (Map<String, Object>)selectOne("roomclassSQL.selectRoomClass", map);  
		
	}

	
	public void insert(Map<String, Object> map) throws Exception {
		insert("roomclassSQL.insert", map);
	}
	
	
	public void deleteRoomClass(Map<String, Object> map) throws Exception {
		delete("roomclassSQL.deleteRoomClass", map);
	}
	
	public void updateRoomClass(Map<String, Object> map) throws Exception{
		update("roomclassSQL.updateRoomClass", map);
	}
	
	public void updateRoomClass2(Map<String, Object> map) throws Exception{
		update("roomclassSQL.updateRoomClass2", map);
	}


}
