package com.kh.remedium.member;

public interface MemberDao {
	
	public MemberModel memberLogin(MemberModel member);
	
	public void memberModify(MemberModel member);
	
	public MemberModel selectOne(String memberId);
	
	public void memberDelete(String memberId); 
	
	public Object findId(MemberModel member);
	
	public Object findPw(MemberModel member);
	
}
