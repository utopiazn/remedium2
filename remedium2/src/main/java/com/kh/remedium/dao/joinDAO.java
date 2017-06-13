package com.kh.remedium.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class joinDAO extends AbstractDAO{
	
	
	public void insert(Map<String, Object> map) throws Exception {
		insert("joina.insert", map);
	}

}
