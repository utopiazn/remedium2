package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

public interface JoinService {
	
	List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception;
	
	Map<String,Object> selectOne(Map<String,Object> map) throws Exception;

    void insert(Map<String, Object> map) throws Exception;
    
    void update(Map<String, Object> map) throws Exception;
    
    void updateMember(Map<String, Object> map) throws Exception;
    
    void deleteMember(Map<String, Object> map) throws Exception;
    
}

