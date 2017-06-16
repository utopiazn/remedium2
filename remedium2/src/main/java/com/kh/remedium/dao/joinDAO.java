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
	
		return  (List<Map<String, Object>>)selectList("join.selectAll", map);  
		
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("join.selectOne", map);
	}
	
	public void updateMember(Map<String, Object>map)throws Exception{
		update("join.updateMember", map);
	}
	
	public void deleteMember(Map<String, Object>map)throws Exception{
		update("join.deleteMember", map);
	}


}
