package com.kh.remedium.service;

import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.kh.remedium.dao.RoomInfoDAO;


@Service("roomInfoService")
public class RoomInfoServiceImpl implements RoomInfoService {
	
	Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="roomInfoDAO")
    private RoomInfoDAO roomInfoDAO;

	@Override
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return  roomInfoDAO.selectAll(map);
	}

	@Override
	public Map<String, Object> selectRoomClass(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return roomInfoDAO.selectRoomClass(map);
	}

	@Override
	public void deleteRoomClass(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		roomInfoDAO.deleteRoomClass(map);
		
	}

	@Override
	public void insert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		roomInfoDAO.insert(map);
		
	}

	@Override
	public void updateRoomClass(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		roomInfoDAO.updateRoomClass(map);
		
	}

	@Override
	public void updateRoomClass2(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		roomInfoDAO.updateRoomClass2(map);
		
	}

}
