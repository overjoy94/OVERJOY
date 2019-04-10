package com.user.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.contents.db.TicketVO;
import com.user.db.UserService;

@Controller
public class MovieLogController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/myMovieLog", method = RequestMethod.GET )
	public String myMovieLog(Model model, HttpSession session) {
		String user_id = (String) session.getAttribute("sessionId");
		System.out.println("myMovieLog sessionid : "+user_id);
		
		ArrayList<TicketVO> ticketList = new ArrayList<TicketVO>();
		ArrayList<String> image_file = new ArrayList<String>();
		ticketList = userService.myMovieSelect(user_id);
		
		for(int i = 0; i <ticketList.size();i++) {
			image_file.add(userService.movieImageFile(ticketList.get(i).getMovie_name()));		
		}
		
		
		
		model.addAttribute("image_file",image_file);
		model.addAttribute("ticketList", ticketList);
		
		
		
		
		return "user/4-1";
	}
	
	
	@RequestMapping(value="/deleteMyMovie", method=RequestMethod.GET )
	public String deleteMyMovie(Model model, HttpSession session, HttpServletRequest request) {
		String user_id = (String) session.getAttribute("sessionId");
		String ticket_number = request.getParameter("ticket_number");
		
		userService.reserveDelete(user_id, ticket_number);		
		return "redirect:myMovieLog";
		
	}
	
	@RequestMapping(value = "/appraisalWrite", method = RequestMethod.GET )
	public String appraisalWrite(Model model, HttpSession session, HttpServletRequest request ) {
		String user_id = (String) session.getAttribute("sessionId");
		String ticket_number = request.getParameter("ticket_number");
		String movie_name="";
		
		movie_name = userService.movieName(user_id, ticket_number);
		model.addAttribute("movie_name",movie_name);	
		model.addAttribute("ticket_number",ticket_number);
		return "user/4-1-1";
	}
	
	@RequestMapping(value = "/reviewUpload", method = RequestMethod.GET)
	public String reviewUpload(Model model, HttpSession session, HttpServletRequest request) {				
		String ticket_number = request.getParameter("ticket_number");
		int grade = Integer.parseInt(request.getParameter("grade"));
		String review = request.getParameter("review");		
		userService.reviewUpload(ticket_number, review, grade);		
		return "redirect:myMovieLog";
	}
	
	@RequestMapping(value="/reviewConfirm", method = RequestMethod.GET)
	public String reviewConfirm(Model model, HttpSession session, HttpServletRequest request) {
		String ticket_number = request.getParameter("ticket_number");
		TicketVO ticketVO = new TicketVO();
		ticketVO = userService.reviewConfirm(ticket_number);		
		model.addAttribute("ticketVO",ticketVO);		
		return "user/4-1-2";
	}
	
	
	
	
}
