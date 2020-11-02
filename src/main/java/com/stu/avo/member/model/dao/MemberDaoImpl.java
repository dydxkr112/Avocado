package com.stu.avo.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.stu.avo.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Override
	public int insertMember(Member m, SqlSessionTemplate sqlSession) {
		int result = sqlSession.insert("Member.insertMember",m);
		System.out.println("Dao result : " + result);
		return result;
	}

	@Override
	public Member checkPwd(Member m, SqlSessionTemplate sqlSession) {
		Member member = sqlSession.selectOne("Member.checkPwd", m);
		System.out.println("Dao Member : " + member);
		return member;
	}

}
