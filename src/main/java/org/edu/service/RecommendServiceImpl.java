package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_MemberDAO;
import org.edu.dao.IF_RecommendDAO;
import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;
import org.edu.vo.RecommendVO;
import org.springframework.stereotype.Service;

@Service
public class RecommendServiceImpl implements IF_RecommendService {
    
	@Inject
	private IF_RecommendDAO recommendDAO;

	@Override
	public void recommend_insert(RecommendVO recommendVO) throws Exception {
		recommendDAO.recommend_insert(recommendVO);
		
	}

	@Override
	public void recommend_delete(RecommendVO recommendVO) throws Exception {
		recommendDAO.recommend_delete(recommendVO);
		
	}

	@Override
	public int recommend_cnt(Integer bno) throws Exception {
		return recommendDAO.recommend_cnt(bno);
	}

	@Override
	public void recommend_check(RecommendVO recommendVO) throws Exception {
		recommendDAO.recommend_check(recommendVO);
	}
	
	

}
