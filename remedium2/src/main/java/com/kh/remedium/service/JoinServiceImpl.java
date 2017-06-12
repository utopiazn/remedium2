package com.kh.remedium.service;

import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.kh.remedium.dao.joinDAO;

@Service
public class JoinServiceImpl implements JoinService {
    

    Logger log = Logger.getLogger(this.getClass());
    
    @Resource
    private joinDAO joinDAO;

    @Override
    public void insertBoard(Map<String, Object> map) throws Exception {
        // TODO Auto-generated method stub
        
    }
}
