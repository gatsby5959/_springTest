package com.ezen.myProject.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.myProject.domain.CommentVO;
import com.ezen.myProject.service.CommentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/comment/*")
@RestController //컨트롤러 써도 상관은 없지만 레스트 떠보려고 레스트 쓰기~
public class CommentController {

	@Inject
	private CommentService csv;
	
	//값을 통으로 받아올꺼임
	
	//ResponseEntity 얘가 알아서 객체도 가져오고 할꺼임  (일반적으로 보통 사용함)
	//@RequestBody   얘가 알아서 request바디를 커먼트vo객체로 바꿔좀
	//body값 추출을 맞아서 해줄꺼임
	//지네릭 값으로 내보낼 값 하나 String 넣어줘야함
	//value = "mappling name" , consumes : 가져오는 데이터의 형태
	//produces : 보내는 데이터의 형식 / 나가는 데이터 타입 : MediaType.
	//json : application/json          text : text_plain
	@PostMapping(value="/post" , consumes = "application/json" , produces=MediaType.TEXT_PLAIN_VALUE)   //포스트는 이것저것 많아서 이건 밸류 입니다 라고 고정해야함 (딴 컨트롤러의 딴건 그냥 생량한것뿐)
	public ResponseEntity<String> post(@RequestBody CommentVO cvo){
		//파라미터 값이 리퀘스트 안에 있음 그래서 위 에것 씀
		
		log.info(">>>>>cvo >>> "+cvo);
		//DB연결
		int isOk = csv.post(cvo);
		//리턴스 response의 통신 상태를 같이 리턴
		return isOk > 0 ? //삼항연산자  스트링 보내려고 함
				new ResponseEntity<String>("1",HttpStatus.OK) //서버가 정상이라 스트링 1 보냄
					: new ResponseEntity<String>("0",HttpStatus.INTERNAL_SERVER_ERROR); //서버내부에서 에러가 나서 0보냄
	}  
	
	
}


















