package com.kh.remedium.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.remedium.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Resource
	private BoardDAO boardDAO;
	
	
	public List<Map<String, Object>> selectAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.selectList(map);
	}

	@Override
	public Map<String, Object> selectOne(Map<String, Object> map) throws Exception {
	
		return boardDAO.selectOne(map);
	}

	@Override
	public void insertBoard(Map<String, Object> map) throws Exception {
		boardDAO.insert(map);
		
	}
	
	@Override
	public void insertReplyBoard(Map<String, Object> map) throws Exception {
		boardDAO.insertReply(map);
		boardDAO.updateType(map);
		
	}

	@Override
	public void updateBoard(Map<String, Object> map) throws Exception {
		boardDAO.update(map);
		System.out.println("Service"+map.get(0));
		
	}

	@Override
	public void deleteBoard(Map<String, Object> map) throws Exception {
		boardDAO.delete(map);
		
	}
	
}
