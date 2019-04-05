package com.etc.db;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EtcService {
	
	@Autowired
	private EtcMapper etcMapper;
	
	public void scInsert(BoardVO boardVO) {
		etcMapper.scInsert(boardVO);
	}
	
	public ArrayList<BoardVO> scList(BoardVO boardVO) throws Exception{
		
		System.out.println("service : scList ///");
		return etcMapper.scList(boardVO); 
	}
	
	public BoardVO scView(BoardVO boardVO) throws Exception{
		return etcMapper.scView(boardVO);
	}
}
