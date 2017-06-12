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
		
		return this.sqlSessionTemplate.selectOne("member.login",member);
	}

	@Override
	public MemberModel selectOne(String memberId) {
		// TODO Auto-generated method stub
		return this.sqlSessionTemplate.selectOne("member.selectOne",memberId);
	}



	@Override
	public void memberModify(MemberModel member) {
	
		this.sqlSessionTemplate.update("member.modify",member);
	}

	@Override
	public void memberDelete(String memberId) {
		
		this.sqlSessionTemplate.delete("member.delete", memberId);
	}

	@Override
	public String findId(MemberModel member) {
		
		return this.sqlSessionTemplate.selectOne("member.findId", member);
	}
	
	
	
}
