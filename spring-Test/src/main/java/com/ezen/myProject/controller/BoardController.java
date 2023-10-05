package com.ezen.myProject.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.myProject.domain.BoardVO;
import com.ezen.myProject.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j //로그는 롬복에서 지원함
@RequestMapping("/board/*")
@Controller
public class BoardController {

	@Inject  //new로 객체 생성의미 (autowired써도 됨)  원래 제공하는 건 bean   인젝터나 오토와이더느는 사용자가 의도적으로 만든것 어자피 둘다 같은 의미임
	private BoardService bsv;
	
	@GetMapping("/register")
	public String boardRegisterGet() {
		return "/board/register";   //.jsp안써도 됨 서블릿컨텍스트.xml에서 설정잇음
	}
	
	@PostMapping("/register")
	public String register(BoardVO bvo) {
		log.info(">>>>>>"+bvo.toString());
		int isOk = bsv.register(bvo);
		log.info(">>>> board register >>" + (isOk>0? "OK":"FAIL"));
		return "redirect:/board/list";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<BoardVO> list = bsv.getList();
		log.info(">>> getList >>"+list);
		model.addAttribute("list", list); //셋어트리뷰트와 같은 역할 것
		return "/board/list"; //내가? 갈곳은 리스트입니당~
	}
	
	@GetMapping({"/detail","/modify"})
	public void detail(Model model, @RequestParam("bno")int bno) { // 이건 왔던 곳으로 다시 가라 라는 뜻
		log.info(">>>> detail bno >> " + bno);
		log.info("모디파이나 디테일이 겟을 탐");
		
		BoardVO bvo = bsv.getDetail(bno);
		model.addAttribute("bvo", bvo);
	}
	
	//수정할 때 들어가는 부당 read_count 2개 빼주기
	@PostMapping({"/modify"})
	public String modify(BoardVO bvo, RedirectAttributes reAttr) {
		log.info("모디파이가 포스트를 탐");
		log.info(">>>> modify bvo >> " + bvo);
		int isOk = bsv.modify(bvo);
//		log.info(">>>> board modify >> "+ (isOk>0? "OK" : "FAIL"));
//		reAttr.addFlashAttribute(null, reAttr);
		return "redirect:/board/detail?bno="+bvo.getBno();
	}
	
	@GetMapping({"/remove"})
	public String remove(@RequestParam("bno")int bno, RedirectAttributes reAttr) {
		log.info(">>> remove bno >>" + bno);
		int isOk = bsv.remove(bno);
		reAttr.addFlashAttribute("isOk", isOk);
		return "redirect:/board/list";
	}
	
}
