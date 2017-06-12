package com.kh.remedium.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class joinDAO extends AbstractDAO{
	
	
	public void insertBoard(Map<String, Object> map) throws Exception {
		insert("join.insert", map);
	}

}
