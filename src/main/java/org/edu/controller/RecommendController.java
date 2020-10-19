package org.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.edu.service.IF_RecommendService;
import org.edu.service.IF_ReplyService;
import org.edu.vo.PageVO;
import org.edu.vo.RecommendVO;
import org.edu.vo.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST API 서비스 (댓글서비스)
 * 
 * 
 *
 */
@RestController
@RequestMapping("/recommend")
public class RecommendController {
	
	@Autowired
	private IF_RecommendService recommendService;
   /**
    * 댓글 입력 서비스
    */
   @RequestMapping(value = "/insert", method = RequestMethod.POST)
   public ResponseEntity<String> recommend_insert(@RequestBody RecommendVO recommendVO) {
      ResponseEntity<String> entity = null;
      
      try {
    	 recommendService.recommend_insert(recommendVO);
         entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
      } catch (Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
      }
      return entity; // JSON데이터를 리턴(jsp페이지로)
   }

  
}