package com.stu.avo.member.model.service;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stu.avo.member.model.dao.MemberDao;
import com.stu.avo.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao memberDao;
	
	
	
	@Override
	public int insertMember(Member m) {
		int result = memberDao.insertMember(m, sqlSession);
		return result;
	}



	@Override
	public Member checkPwd(Member m) {
		return memberDao.checkPwd(m, sqlSession);
	}

}
