package com.kh.remedium.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class EventDAO extends AbstractDAO {
	
	public void insert(Map<String,Object> map) {
		insert("event.insertEvent", map);
	}

	public void update(Map<String,Object> map) {
		update("event.updateEvent", map);
	}

	public void delete(Map<String,Object> map) {
		delete("event.deleteEvent", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("event.selectOne", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectList(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return selectList("event.selectAll");
	}


}

