package com.nej.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.nej.vo.MemberVo;

public class MemberDao {
	
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<MemberVo> selectList(){
		
		List<MemberVo> list = null;
		list = sqlSession.selectList("member.member_list");
		return list;
	}
}
