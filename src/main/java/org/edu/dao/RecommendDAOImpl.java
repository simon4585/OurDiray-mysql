package org.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;
import org.edu.vo.RecommendVO;
import org.springframework.stereotype.Repository;

@Repository
public class RecommendDAOImpl implements IF_RecommendDAO {
	
	private static String mapperQuery = "org.edu.dao.IF_RecommendDAO";
	
	@Inject
	private SqlSession sqlSession;//마이바티스 사용 변수 추가
	

	@Override
	public void recommend_insert(RecommendVO recommendVO) throws Exception {
		sqlSession.insert(mapperQuery+".recommend_insert", recommendVO);
		
	}

	@Override
	public void recommend_delete(RecommendVO recommendVO) throws Exception {
		sqlSession.delete(mapperQuery+".recommendVO", recommendVO);
		
	}

	@Override
	public int recommend_cnt(Integer bno) throws Exception {
		return sqlSession.selectOne(mapperQuery+".recommend_cnt", bno);
	}

	@Override
	public void recommend_check(RecommendVO recommendVO) throws Exception {
		sqlSession.selectList(mapperQuery+".recommend_check", recommendVO);
		
	}

	


	

}
