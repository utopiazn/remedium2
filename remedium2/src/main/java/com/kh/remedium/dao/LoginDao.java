package com.kh.remedium.dao;

import com.kh.remedium.model.MemberModel;

public interface LoginDao {
	
	public MemberModel memberLogin(MemberModel member);
	
	public void memberModify(MemberModel member);
	
	public MemberModel selectOne(String memberId);
	
	public void memberDelete(MemberModel member);
	
}
