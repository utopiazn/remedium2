package com.kh.remedium.service;

import javax.annotation.Resource;

import com.kh.remedium.dao.LoginDao;
import com.kh.remedium.model.MemberModel;
import org.mybatis.spring.SqlSessionTemplate;

public class LoginService implements LoginDao{
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MemberModel memberLogin(MemberModel member) {
		// TODO Auto-generated method stub
		return null;
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
