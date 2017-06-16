package com.kh.remedium.service;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.kh.remedium.dao.RoomDAO;


@Service("roomService")
public class RoomServiceImpl implements RoomService {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="roomDAO")
    private RoomDAO roomDAO;

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) throws Exception {
		
		return  roomDAO.selectList(map);
	}

	@Override
	public List<Map<String, Object>> selectAll() throws Exception {
		
		return  roomDAO.selectAll();
	}

}
