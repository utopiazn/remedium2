package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.remedium.dao.EventDAO;

@Service("eventService")
public class EventServiceImpl implements EventService{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="eventDAO")
	private EventDAO eventDAO;
	
	@Override
	public void insert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		eventDAO.insert(map);
		
	}

	@Override
	public void update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		eventDAO.update(map);
		
	}

	@Override
	public void delete(Map<String, Object> map) {
		// TODO Auto-generated method stub
		eventDAO.delete(map);
		
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return eventDAO.selectOne(map);
	}

	@Override
	public List<Map<String, Object>> selectList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return eventDAO.selectList(map);
	}

}
