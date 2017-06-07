package com.kh.remedium.service;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kh.remedium.dao.LoginDao;
import com.kh.remedium.model.MemberModel;


@Service
public class LoginService implements LoginDao{
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MemberModel memberLogin(MemberModel member) {
		return this.sqlSessionTemplate.selectOne("member.selectOne",member.getMemberID());
	}

	@Override
	public Object memberModify(MemberModel member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object memberDelete(MemberModel member) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
