package com.kh.remedium.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO extends AbstractDAO {

	public void insert(Map<String,Object> map) {
		insert("board.insertBoard", map);
	}
	
	public void insertReply(Map<String,Object> map) {
		insert("board.insertReplyBoard", map);
	}

	public void update(Map<String,Object> map) {
		
		update("board.updateBoard", map);
	}
	
	public void updateType(Map<String,Object> map) {
		update("board.updateType", map);
	}

	public void delete(Map<String,Object> map) {
		delete("board.deleteBoard", map);
	}
	
	public void deleteReply(Map<String,Object> map) {
		delete("board.deleteReply", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOne(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("board.selectOne", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectList(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return selectList("board.selectAll");
	}



	
}
