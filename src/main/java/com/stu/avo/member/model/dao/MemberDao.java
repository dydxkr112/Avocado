package com.stu.avo.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.stu.avo.member.model.vo.Member;

public interface MemberDao {

	int insertMember(Member m, SqlSessionTemplate sqlSession);

	Member checkPwd(Member m, SqlSessionTemplate sqlSession);

}
