package com.contents.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.contents.db.ContentsMapper;
import com.contents.db.SeatVO;

@Controller
public class ContentsController {
	
	@Autowired
	ContentsMapper contentsMapper;
	
	// 영화 페이지
	@RequestMapping(value = "/movieChart", method = RequestMethod.GET )
	public String movieChart(Model model) {				
		return "contents/2";
	}
	
	// 빠른예매
	@RequestMapping(value = "/ticket", method = RequestMethod.GET )
	public String ticket(Model model) {				
		return "contents/3-1";
	}
	
	// 상영시간표(미구현)
	@RequestMapping(value = "/showTimes", method = RequestMethod.GET )
	public String showTimes(Model model) {				
		return "contents/3-2";
	}
	
	// 빠른예매 : 영화선택
	@RequestMapping(value = "/selectMovie", method = RequestMethod.GET)
	public String selectMovie(HttpServletRequest request, Model model) {			
		String movie_id = request.getParameter("movie_id").trim();
		System.out.println("영화 id"+ movie_id);
		
		String movie_name = "";		
		movie_name = contentsMapper.checkID(movie_id).trim();
		
		System.out.println("영화 name"+ movie_name);	 
		
		return "redirect:timeSeat";
	}
	
	// 빠른예매 : 날짜선택
	@RequestMapping(value = "/selectDate", method = RequestMethod.GET)
	public String selectDate(HttpServletRequest request, Model model) {			
		String date = request.getParameter("3-1date").trim();
		String movie_id = request.getParameter("model_movie_id").trim();
		
		
		return "redirect:timeSeat";
	}
	
	// 빠른예매 : 시간선택
	@RequestMapping(value = "/timeSeat", method = RequestMethod.GET)	
	public String timeSeat(HttpServletRequest request, Model model) {
		
		String movie_name = "";
		movie_name =request.getParameter("movie_name").trim();
		System.out.println("movie_name: "+movie_name);
		String watch_date = ""; 
		watch_date = request.getParameter("3-1date").trim();
		ArrayList<SeatVO> seat = new ArrayList<SeatVO>();
		seat = contentsMapper.timeSeatCount(movie_name, watch_date);
		
		model.addAttribute("seat",seat);
		
		System.out.println("controller : "+ watch_date);
		model.addAttribute("watch_date",watch_date);
		
		model.addAttribute("movie_name", movie_name);
		
		return "contents/3-1";		
	}
	
	// 빠른예매 : 좌석선택 (미구현)
	@RequestMapping(value = "/selectSeat", method = RequestMethod.GET)
	public String selectSeat(HttpServletRequest request, Model model) {			
		String movie_name = request.getParameter("movie_name");
		String watch_date = request.getParameter("watch_date");
		String time = request.getParameter("time");
		
		
		System.out.println("movie_name seat: "+ movie_name);
		System.out.println("watch_date seat: "+ watch_date);
		
		String image_file = "";
		image_file = contentsMapper.movieImageFile(movie_name).trim();;
		
		model.addAttribute("time",time);
		model.addAttribute("watch_date",watch_date);
		model.addAttribute("movie_name",movie_name);
		model.addAttribute("image_file",image_file);
		return "contents/3-1-1";
	}
	
	

}
