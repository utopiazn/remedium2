package com.kh.remedium.facilities;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.remedium.facilities.Facilities;
import com.kh.remedium.facilities.FacilitiesDao;

@Repository
public class FacilitiesDaoService implements FacilitiesDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<Facilities> getList() {
		ArrayList<Facilities> result = new ArrayList<Facilities>();
		FacilitiesMapper facilitiesMapper = sqlSession.getMapper(FacilitiesMapper.class);
		result = facilitiesMapper.getList(); 
		
		return result;
	}

	@Override
	public Facilities getFacilities(int no) {
		Facilities result = new Facilities();
		FacilitiesMapper facilitiesMapper = sqlSession.getMapper(FacilitiesMapper.class);
		result = facilitiesMapper.getFacilities(no);
		return result;
	}

	@Override
	public void insertFacilities(Facilities facilities) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateFacilities(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteFacilities(int no) {
		// TODO Auto-generated method stub

	}

}
