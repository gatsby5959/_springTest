package com.ezen.myProject.service;

import java.util.List;

import com.ezen.myProject.domain.BoardVO;
import com.ezen.myProject.domain.PagingVO;

public interface BoardService {

	int register(BoardVO bvo);

//	List<BoardVO> getList();
	List<BoardVO> getList(PagingVO pgvo);

	BoardVO getDetail(int bno);

	int modify(BoardVO bvo);

	int remove(int bno);

	int getTotalCount(PagingVO pgvo);

	

}
