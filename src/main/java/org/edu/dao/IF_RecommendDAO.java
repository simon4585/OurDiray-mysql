package org.edu.dao;

import org.edu.vo.RecommendVO;

    public interface IF_RecommendDAO {
	public void recommend_insert(RecommendVO recommendVO) throws Exception;
	public void recommend_delete(RecommendVO recommendVO)throws Exception;
	public int recommend_cnt(Integer bno)throws Exception;
	public void recommend_check(RecommendVO recommendVO)throws Exception;
	}
