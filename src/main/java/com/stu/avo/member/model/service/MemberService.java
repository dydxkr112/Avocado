package com.stu.avo.member.model.service;

import com.stu.avo.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	Member checkPwd(Member m);

}
