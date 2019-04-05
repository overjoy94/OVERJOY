package com.contents.db;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ContentsService {
	
	@Autowired
	ContentsMapper contentsMapper;
	
	public String checkId(String id) {
		// TODO Auto-generated method stub
		String c = "";
		c = contentsMapper.checkID(id);		
		return c;
	}
	
	public String countSeat(String id, String date) {
		String a = "";
		return a;
	}
	
	public ArrayList<SeatVO> timeSeatCount(String movie_name, String watch_date){
		return contentsMapper.timeSeatCount(movie_name, watch_date);
	}
	
	public String movieImageFile( String movie_name) {
		return contentsMapper.movieImageFile(movie_name);
	};
}
