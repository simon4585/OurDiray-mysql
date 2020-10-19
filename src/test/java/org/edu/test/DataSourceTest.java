package org.edu.test;

import java.sql.Connection;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.edu.service.IF_BoardService;
import org.edu.service.IF_MemberService;
import org.edu.service.IF_RecommendService;
import org.edu.vo.BoardTypeVO;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.edu.vo.RecommendVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class DataSourceTest {

   @Inject
   private DataSource ds;
   
   @Inject
   private IF_MemberService memberService;
   
   @Inject
   private IF_BoardService boardService;
   
   @Inject
   private IF_RecommendService recommendService;
   
   
   @Test
   public void testConnection()throws Exception{
      Connection con = ds.getConnection();
      System.out.println("데이터베이스 커넥션 성공 : " + con);
   }
   @Test
   public void testViewMember() throws Exception {
      memberService.viewMember("user");
   }
   
   @Test
   public void testDeleteMember() throws Exception {
      memberService.deleteMember("user02");
   }
   
   @Test
   public void testUpdateMember() throws Exception {
	   MemberVO memberVO = new MemberVO();
	      memberVO.setUser_id("simon");
	      memberVO.setUser_pw("1234");
	      memberVO.setUser_name("시몬3");
	      memberVO.setEmail("simon3@test.com");
	      memberVO.setPoint(100);
	      memberVO.setEnabled(true);
	      memberVO.setLevels("ROLE_ADMIN");
	      memberService.insertMember(memberVO);
	   }
       
   @Test
   public void testInsertMember() throws Exception {
      MemberVO memberVO = new MemberVO();
      memberVO.setUser_id("qortlahs");
      memberVO.setUser_pw("1234");
      memberVO.setUser_name("시몬님");
      memberVO.setEmail("simon@test.com");
      memberVO.setPoint(100);
      memberVO.setEnabled(true);
      memberVO.setLevels("ROLE_ADMIN");
      memberService.insertMember(memberVO);
   }
   @Test
   public void testInsertBoard() throws Exception {
      BoardVO boardVO = new BoardVO();
      boardVO.setBno(800);
      boardVO.setTitle("위대한 여정");
      boardVO.setContent("첫 발걸음");
      boardVO.setWriter("백시몬");
      boardVO.setView_count(0);
      boardVO.setReply_count(0);
     
      boardVO.setBod_type("먹거리");
      boardVO.setBod_name("국내먹거리");
      boardService.insertBoard(boardVO);
   }
   @Test
   public void testUpdateBoard()throws Exception{
	  BoardVO boardVO = new BoardVO();
	  boardVO.setBno(315);
	  boardVO.setTitle("수정테스트입니다");
      boardVO.setContent("수정테스트입니다.");
      boardVO.setWriter("시몬스");
      boardVO.setView_count(0);
      boardVO.setReply_count(0);
      
      boardVO.setBod_type("먹거리");
      boardVO.setBod_name("국내먹거리");
	  boardService.updateBoard(boardVO);
   }
   
   @Test
   public void insertBoardType() throws Exception {
	   BoardTypeVO boardTypeVO = new BoardTypeVO();
	   boardTypeVO.setBod_type("먹거리2");
	   boardTypeVO.setBod_name("해외 먹거리");
	   boardTypeVO.setBod_sun(1);
	   //System.out.println(boardTypeVO.toString());
	   boardService.insertBoardType(boardTypeVO);
   }
   
   @Test
   public void recommend_insert()throws Exception{
	RecommendVO recommendVO = new RecommendVO();
	recommendVO.setBno(234);
	recommendVO.setUser_id("tlahs4585");
	recommendService.recommend_insert(recommendVO);
	 }
   @Test
   public void recommend_cnt()throws Exception{
	recommendService.recommend_cnt(234);
	 }
   @Test
   public void recommend_check()throws Exception{
    RecommendVO recommendVO = new RecommendVO();
    recommendVO.setBno(234);
    recommendVO.setUser_id("simon");
	recommendService.recommend_check(recommendVO);
	 }
   @Test
   public void recommend_delete() throws Exception{
	    RecommendVO recommendVO = new RecommendVO();
	    recommendVO.setBno(234);
	    recommendVO.setUser_id("simon");
		recommendService.recommend_delete(recommendVO);
   }
}

