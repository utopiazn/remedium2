package com.kh.remedium.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class joinDAO extends AbstractDAO{
	
	
	public void insert(Map<String, Object> map) throws Exception {
		insert("join.insert", map);
	}
	
	public void update(Map<String, Object>map)throws Exception{
		update("join.updateCash", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		
		List<Map<String, Object>> list= (List<Map<String, Object>>)selectList("memberSQL.selectAll", map);  
		
		for(int i=0; i< list.size();i++){
		
			 Map<String, Object> sd = list.get(i);
			 
			 
			 
			 System.out.println("dddff:"+sd.get("NAME"));
			
		}
		
		return list;  
		
	}

	

}
