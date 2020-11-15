package org.edu.controller;

import java.io.File;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.edu.service.IF_BoardService;
import org.edu.service.IF_MemberService;
import org.edu.service.IF_ReplyService;
import org.edu.util.FileDataUtil;
import org.edu.vo.BoardVO;
import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;
import org.edu.vo.ReplyVO;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;




/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private IF_MemberService memberService;
	
	@Inject
	private IF_BoardService boardService;
	
	@Inject
	private IF_ReplyService replyService;
	
	@Inject
	private FileDataUtil fileDataUtil;
	
	@Inject
	private NaverLoginController naverLoginController;
	
	@RequestMapping(value = "/trip_boardupdate", method = RequestMethod.GET)
	public String boardUpdate(@ModelAttribute("pageVO") PageVO pageVO, @RequestParam("bno") Integer bno, Locale locale,
			Model model) throws Exception {
		BoardVO boardVO = boardService.viewBoard(bno);
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("pageVO", pageVO);
		return "trip_boardupdate";
	}

	@RequestMapping(value = "/trip_boardupdate", method = RequestMethod.POST)
	public String boardUpdate(@ModelAttribute("pageVO") PageVO pageVO, MultipartFile file, @Valid BoardVO boardVO,
			Locale locale, RedirectAttributes rdat) throws Exception {
		if (file.getOriginalFilename() == "") {
			boardService.updateBoard(boardVO);
		} else {
			// 이전 첨부파일 삭제처리(아래)
			List<String> delFiles = boardService.selectAttach(boardVO.getBno());
			for (String fileName : delFiles) {
				// 실제파일삭제
				File target = new File(fileDataUtil.getUploadPath(), fileName);
				if (target.exists()) { // 해당경로에 파일명이 존재한다면
					target.delete(); // 파일을 삭제하겠다
				} // end if
			} // end for
				// 아래에서 부터 신규 파일 업로드
			String[] files = fileDataUtil.fileUpload(file); // 실제파일업로드후 파일명 리턴
			boardVO.setFiles(files); // 데이터베이스 <-> vo(get,set) -dao클래스
			boardService.updateBoard(boardVO);
		}

		rdat.addFlashAttribute("msg", "수정");
		return "redirect:/trip_view?bno=" + boardVO.getBno() + "&page=" + pageVO.getPage();
	}

	
	

	/*
	 * 게시판 글 삭제
	 */
	@RequestMapping(value = "board_delete" , method=RequestMethod.POST)
	public String boardDelete(@RequestParam("bno") Integer bno, Locale locale, RedirectAttributes rdat) throws Exception {
		List<String> files = boardService.selectAttach(bno);
		boardService.deleteBoard(bno);
		// 첨부파일 삭제(아래)
		for (String fileName : files) {
			// 삭제 명령문 추가(아래)
			File target = new File(fileDataUtil.getUploadPath(), fileName);
			if (target.exists()) {
				target.delete();
			}
		}

		rdat.addFlashAttribute("msg", "삭제");
		return "redirect:trip_boardlist";
	}
	
	/**
	 * 국내여행지 메인폼.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		
		return "main";
	}
	
	/*
	 * 회원가입 폼입니다.
	 */
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public String signUp(Locale locale) throws Exception{
		
	   return "signUp";	
	}
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	   public String signUp(@Valid MemberVO memberVO, Locale locale, RedirectAttributes rdat) throws Exception {
	      String new_pw = memberVO.getUser_pw(); //1234
	      if(new_pw !="") {
	       //스프링 시큐리티 4.x BCryptPasswordEncoder 암호화 사용
	           BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder(10);
	           String bcryptPassword = bcryptPasswordEncoder.encode(new_pw);//예, 1234 -> 암호화 처리됨
	           memberVO.setUser_pw(bcryptPassword); //DB에 들어가기전 값 set 시킴   
	    }     memberService.insertMember(memberVO);
	      rdat.addFlashAttribute("msg", "회원가입");
	      return "redirect:/";
	   }
	
	
	/**
	 * 국내여행지게시판리스트 입니다.
	 * @throws Exception 
	 */
	   @RequestMapping(value = "trip_boardlist", method = RequestMethod.GET)
	   public String trip_boardlist(@ModelAttribute("pageVO") PageVO pageVO , Locale locale, Model model, HttpServletRequest request) throws Exception {
		 //초기 메뉴를 클릭시 /admin/board/list?searchBoard=notice 데이터전송
			HttpSession session = request.getSession();
			if(pageVO.getSearchBoard() != null) {
				//최초 세션 만들어짐
				session.setAttribute("session_bod_type", pageVO.getSearchBoard());
			} else {
				//일반링크 클릭시 /admin/board/view?page=2...
				//만들어진 세션 사용(아래)
				pageVO.setSearchBoard((String) session.getAttribute("session_bod_type"));
			}
			//PageVO pageVO = new PageVO();//매개변수로 받기전 테스트용
			if(pageVO.getPage() == null) {
				pageVO.setPage(1);//초기 page변수값 지정
			}
			pageVO.setPerPageNum(10);//1페이지당 보여줄 게시물 수 강제지정
			pageVO.setTotalCount(boardService.countBno(pageVO));//강제로 입력한 값을 쿼리로 대체OK.
			List<BoardVO> list = boardService.selectBoard(pageVO);
			
			//모델클래스로 jsp화면으로 boardService에서 셀렉트한 list값을 boardList변수명으로 보낸다.
			//첨부파일 출력때문에 추가 Start
		      List<BoardVO> boardListFiles = new ArrayList<BoardVO>();
             for(BoardVO vo:list) {
		         List<String> files = boardService.selectAttach(vo.getBno());
		         String[] filenames = new String[files.size()];
		         int cnt = 0;
		         for(String fileName : files) {
		            filenames[cnt++] = fileName;
		         }
		         
		         vo.setFiles(filenames);//여기까지는 view 상세보기와 똑같다
		         System.out.println("=====디버그1=====" + filenames);
		         System.out.println("=====디버그2=====" + vo);
		         boardListFiles.add(vo);//상세보기에서 추가된 항목
		      }
		      //System.out.println("======디버그3=======" + boardListFiles);
		      model.addAttribute("extNameArray", fileDataUtil.getExtNameArray() ); //첨부파일이 이미지인지 문서파일인지 구분용 jsp변수
		      model.addAttribute("boardListFiles", boardListFiles);//첨부파일 출력용 jsp변수
		      //첨부파일 출력때문에 추가 End
		      
		      model.addAttribute("boardList", boardListFiles);      
			  model.addAttribute("boardList", list);
			  model.addAttribute("pageVO", pageVO);
		      	
	      return "trip_boardlist";
}
	   
	   /**
		 * 국내여행지 게시글 상세히보기 입니다.
	 * @throws Exception 
		 */
		   @RequestMapping(value = "trip_view", method = RequestMethod.GET)
		   public String trip_view(@ModelAttribute("pageVO") PageVO pageVO, @RequestParam("bno") Integer bno,Locale locale, Model model) throws Exception {
			   BoardVO boardVO = boardService.viewBoard(bno);
			 //여기서 부터 첨부파일명 때문에 추가
			      List<String> files = boardService.selectAttach(bno);
			      String[] filenames = new String[files.size()];
			      int cnt = 0;
			      for(String fileName : files) {
			         filenames[cnt++] = fileName;
			      }
			      //여러개 파일에서 1개 파일만 받는 것으로 변경
			      //String[] filenames = new String[] {files};
			      boardVO.setFiles(filenames);//String[]
			      //여기까지 첨부파일때문에 추가
			   model.addAttribute("boardVO", boardVO);
			   model.addAttribute("pageVO", pageVO);
			   model.addAttribute("extNameArray", fileDataUtil.getExtNameArray());
		       return "trip_view";
	}
		   /**
			 * 국내여행지 게시글쓰기 입니다.
			 */
			   @RequestMapping(value = "trip_boardwrite", method = RequestMethod.GET)
			   public String trip_boardwrite(Locale locale) {
			      
			      return "trip_boardwrite";
		}
		   /**
			 * 국내여행지 게시글쓰기 입니다.
		 * @throws Exception 
			 */
			   @RequestMapping(value = "trip_boardwrite", method = RequestMethod.POST)
			   public String trip_boardwrite(MultipartFile file,@Valid BoardVO boardVO,Locale locale, Model model,RedirectAttributes rdat) throws Exception {
				 //System.out.println("========첨부파일없이 저장===" + file.getOriginalFilename());
				      if(file.getOriginalFilename() == "") {
				         //첨부파일 없이 저장
				         boardService.insertBoard(boardVO);
				      }else {
				         String[] files = fileDataUtil.fileUpload(file);
				         boardVO.setFiles(files);
				         boardService.insertBoard(boardVO);         
				      }
				      rdat.addFlashAttribute("msg", "입력");
				  return "redirect:trip_boardlist";
			}
		
		/**
		 *  로그인 페이지 파일 입니다.
		 */
		   @RequestMapping(value = "/login", method = RequestMethod.GET)
		   public String login(Locale locale, Model model,HttpSession session) {
			   /* 네이버 아이디로 인증 URL을 생성하기 위하여 NaverLoginController 클래스의
			       * getAuthorizationUrl 메서드 호출 Session은 전역변수와 같은 역할.
			       * naverAuthUrl은 http://127.0.0.1:8080/login 이고,
			       * 이 값을 네이버API에서 가져오는 메서드가 getAuthorizationUrl(session)
			       */
			      String naverAuthUrl = naverLoginController.getAuthorizationUrl(session);
			      model.addAttribute("url", naverAuthUrl);//url 변수 값이 login.jsp로 전송됨.
			      return "login";
			   }
	
		   
		   @RequestMapping(value="/login_callback", method= {RequestMethod.GET, RequestMethod.POST})
		   public String login_callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, RedirectAttributes rdat) throws Exception {
		      OAuth2AccessToken oauthToken;//인증 정보가 저장된 데이터
		      oauthToken = naverLoginController.getAccessToken(session, code, state);
		      //네이버로 로그인한 사용자 정보를 읽어온다(아래) 토큰인증정보를 기반으로 해서 String으로 사용자 정보를 출력해온다.
		      String apiResult = naverLoginController.getUserProfile(oauthToken);
		      //model.addAttribute("result", apiResult); 
		      //위에 jsp로 변수 값을 보내는 로직을 타지 않고, 스프링 시큐리티 로직을 탈 것.
		      /* Json 데이터 파싱 시작 */
		       /** apiResult json 구조
		       {"resultcode":"00",
		       "message":"success",
		       "response":{"id":"33666449","nickname":"닉네임","age":"20-29","gender":"F","email":"abc@naver.com","name":"\uc2e0\ubc94\ud638"}}
		       **/
		      JSONParser parser = new JSONParser();
		       Object obj = parser.parse(apiResult);
		       JSONObject jsonObj = (JSONObject) obj;
		       //Top레벨 단계의 response 파싱(아래) 위 데이터 값이 배열 안에 또 배열이 있기 때문에 2번 파싱.
		       JSONObject response_obj = (JSONObject)jsonObj.get("response");
		       //파싱 마지막인 response 객체의 name값과 email 값 출력(아래)
		       String username = (String)response_obj.get("name");
		       String useremail = (String)response_obj.get("email");
		       //System.out.println(useremail);//디버그
		       String Status = (String)jsonObj.get("message");
		       //System.out.println("여기" + Status);//디버그
		       /* Json 데이터 파싱 끝 */
		       if(Status.equals("success")) {
		          //진짜 핵심 : 스프링 시큐리티와 연동시키는 로직(아래)
		          /*
		           * SNS로 로그인이 성공일 때 강제로 스프링 시큐리티 인증처리 (아래)
		           */
		          List<SimpleGrantedAuthority> authorities = new ArrayList<>();
		          //authority 권한에 ROLE_USER 권한만 부여 (아래) 
		          authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
		          //authentication 인증에 강제로 email을 부여하고, 암호는 null로 처리 (아래)
		          Authentication authentication = new UsernamePasswordAuthenticationToken(useremail, null, authorities);
		          //실제로 스프링 시큐리티에 인증처리 (get/set 에서 set 처리)
		          SecurityContextHolder.getContext().setAuthentication(authentication);
		          /* 로그인 세션 전역 변수 역할 저장 (아래) */
		          session.setAttribute("session_enabled", true);//인증확인
		         session.setAttribute("session_userid", useremail);//사용자이메일
		         session.setAttribute("session_levels", "ROLE_USER");//사용자권한
		         session.setAttribute("session_username", username);//사용이이름
		         rdat.addFlashAttribute("msg", "SNS 로그인");//result 데이터를 숨겨서 전송
		          
		       }else {
		          //네이버 로그인이 실패했을 때(아래)
		          rdat.addFlashAttribute("param.msg", "fail");
		          return "redirect:/login";
		       }//네이버 로그인 성공했을 때(아래)
		      return "redirect:/"; //새로 고침 시 자동등록을 방지 하기 위해서
		   }
		   /**
		    * 스프링 시큐리티 secutiry-context.xml설정한 로그인 처리 결과 화면
		    * @param locale
		    * @param request
		    * @param rdat
		    * @return
		    * @throws Exception 
		    */
		   @RequestMapping(value = "/login_success", method = RequestMethod.GET)
		   public String login_success(Locale locale,HttpServletRequest request, RedirectAttributes rdat) throws Exception {
		      logger.info("Welcome login_success! The client locale is {}.", locale);
		      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		      String userid = "";//아이디
		      String levels = "";//ROLE_ANONYMOUS
		      Boolean enabled = false;
		      Integer point = 0;
		      Object principal = authentication.getPrincipal();
		      if (principal instanceof UserDetails) {
		         //인증이 처리되는 로직(아이디,암호를 스프링시큐리티 던져주고 인증은 스프링에서 알아서 해줌.)
		         enabled = ((UserDetails)principal).isEnabled();
		      }
		      HttpSession session = request.getSession();//세션을 초기화 시켜줌.
		      if (enabled) { //인증처리가 완료된 사용자의 권한체크(아래)
		         Collection<? extends GrantedAuthority>  authorities = authentication.getAuthorities();
		         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ANONYMOUS")).findAny().isPresent())
		         {levels = "ROLE_ANONYMOUS";}
		         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_USER,")).findAny().isPresent())
		         {levels = "ROLE_USER,";}
		         if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ADMIN")).findAny().isPresent())
		         {levels = "ROLE_ADMIN";}
		         userid =((UserDetails)principal).getUsername();
		         //userid =((UserDetails)principal).getpoint();
		         //로그인 세션 저장
		         session.setAttribute("session_enabled", enabled);//인증확인
		         session.setAttribute("session_userid", userid);//사용자아이디
		         session.setAttribute("session_levels", levels);//사용자권한
		         //=========== 상단은 스프링시큐리티에서 기본제공하는 세션 변수처리
		         //=========== 하단은 우리가 추가한는 세션 변수처리
		         //회원이름 구하기 추가
		         MemberVO memberVO = memberService.viewMember(userid);
		         
		         session.setAttribute("session_point", memberVO.getPoint()); //포인트
		         session.setAttribute("session_username", memberVO.getUser_name());//사용자명
		           }
		      System.out.println("------------------포인트 값 출력" + point);
		      System.out.println("------------------세션 값 출력: " + enabled);
		      System.out.println("------------------ 사용자 아이디 출력: " + userid);
		      System.out.println("------------------사용자 권한출력: " + levels);
		      rdat.addFlashAttribute("msg", "로그인");//result 데이터를 숨겨서 전송
		      return "redirect:/";//새로고침 자동 등록 방지를 위해서 아래처럼 처리
		   }
		   
		  
		   
		   
	
}
