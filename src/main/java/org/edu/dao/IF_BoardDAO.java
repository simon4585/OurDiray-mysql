package org.edu.dao;

import java.util.List;

import org.edu.vo.BoardTypeVO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.edu.vo.RecommendVO;

public interface IF_BoardDAO {
	//게시글 crud
   public void insertBoard(BoardVO boardVO) throws Exception;
   public List<BoardVO> selectBoard(PageVO pageVO) throws Exception;
   public void updateBoard(BoardVO boardVO) throws Exception;
   public void deleteBoard(Integer bno) throws Exception;
   public BoardVO viewBoard(Integer bno) throws Exception;
   //첨부파일 crud
   public void  insertAttach(String fullName) throws Exception;
   public List<String> selectAttach(Integer bno) throws Exception;
   public void deleteAttach(Integer bno) throws Exception;
   public void updateAttach(String fullName, Integer bno) throws Exception;
   
   public int countBno(PageVO pageVO) throws Exception; //게시글 갯수
   public void updateViewCount(Integer bno) throws Exception; //조회수
   
  
   //게시판 카테고리 생성 메서드
   public BoardTypeVO viewBoardType(String bod_type) throws Exception;
   public void deleteBoardType(String bod_type) throws Exception;
   public void updateBoardType(BoardTypeVO boardTypeVO)throws Exception;
   public void insertBoardType(BoardTypeVO boardTypeVO)throws Exception;
   public List<BoardTypeVO> selectBoardType() throws Exception;
   //게시판 댓글삭제 메서드
   public void deleteBoardReply(Integer bno) throws Exception;
 }
