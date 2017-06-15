package com.kh.remedium.service;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.kh.remedium.dao.joinDAO;

@Service("joinService")
public class JoinServiceImpl implements JoinService {
    

    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="joinDAO")
    private joinDAO joinDAO;

    @Override
    public void insert(Map<String, Object> map) throws Exception {
        // TODO Auto-generated method stub
    	joinDAO.insert(map);
    }

	@Override
	public void update(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		joinDAO.update(map);
		
	}

	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.selectAll(map);
	}  
	
	
      
    
}
