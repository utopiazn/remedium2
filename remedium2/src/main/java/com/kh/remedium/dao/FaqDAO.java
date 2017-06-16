package com.kh.remedium.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("faq.selectOne", map);
	}

	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectList(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return selectList("faq.selectAll");
	}
	
	public void insert(Map<String,Object> map) {
		insert("faq.insertFaq", map);
	}

	public void update(Map<String,Object> map) {
		
		update("faq.updateFaq", map);
	}

	public void delete(Map<String,Object> map) {
		delete("faq.deleteFaq", map);
	}
	
}
