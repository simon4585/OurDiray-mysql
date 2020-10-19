package org.edu.service;

import java.util.List;

import org.edu.vo.BoardTypeVO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.edu.vo.RecommendVO;

public interface IF_RecommendService {
	public void recommend_insert(RecommendVO recommendVO) throws Exception;
	public void recommend_delete(RecommendVO recommendVO)throws Exception;
	public int recommend_cnt(Integer bno)throws Exception;
	public void recommend_check(RecommendVO recommendVO)throws Exception;
   
}