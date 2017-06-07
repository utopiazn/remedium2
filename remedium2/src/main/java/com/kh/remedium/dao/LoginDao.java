package com.kh.remedium.dao;

import com.kh.remedium.model.MemberModel;

public interface LoginDao {
	
	public MemberModel memberLogin(MemberModel member);
	
	public Object memberModify(MemberModel member);
	
	public Object memberDelete(MemberModel member);
	
}
