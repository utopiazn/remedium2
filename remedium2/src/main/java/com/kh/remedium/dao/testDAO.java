package com.kh.remedium.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class testDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> listAll() {
		
		return  selectList("test1.selectAll");
	}
	
	

}
