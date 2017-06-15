package com.kh.remedium.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class RoomInfoDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("roomclassSQL.selectAll", map);  
		
		for(int i=0; i< list.size();i++){
		
			 Map<String, Object> sd = list.get(i);
			 
			 
				 System.out.println("dddff:"+sd.get("NAME"));
			
			 //sd.put("NAME", "dddd");
			 
			 //System.out.println("dddff2:"+sd.get("NAME"));
		}
		
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
