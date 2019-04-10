package com.user.db;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.contents.db.TicketVO;

@Component
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	
	public void insertUser(UserVO userVO) {
		// TODO Auto-generated method stub
		userMapper.insertUser(userVO);
	}
	
	
	public String checkId(String userid) {
		// TODO Auto-generated method stub
	//	System.out.println("########################usersevice/checkID");
		String c = "";
		c = userMapper.checkID(userid);
		
		
		return c;
	}
	
	public String checkLogin(String userid, String password) {
		String c = ""; 
		c = userMapper.checkLogin(userid, password);
		
		System.out.println("c: "+ c);
		
		if(!userid.equals(c)) {
			c = "fail";
		}
		return c;
	}
	
	public String idFind(String username, String phone) {
		System.out.println("########################usersevice/idFind");
		String service_id_result = userMapper.idFind(username, phone);
		
		return service_id_result;
	}
	
	public String pwFind(String username, String phone, String password_q, String password_a) {
		System.out.println("########################usersevice/pwFind");
		String service_pw_result = userMapper.pwFind(username, phone, password_q, password_a);
		System.out.println("pw: "+service_pw_result);
		return service_pw_result;
	}
	
	
	
	public void deleteId(String userid) {
		userMapper.deleteId(userid);
	}
	
	// 4-1
	
	public ArrayList<TicketVO> myMovieSelect(String user_id){
		return userMapper.myMovieSelect(user_id);
	}
	
	public String movieImageFile(String movie_name) {
		return userMapper.movieImageFile(movie_name);
	}
	
	public String movieName(String user_id, String ticket_number) {
		return userMapper.movieName(user_id, ticket_number);
	}
	
	public void reviewUpload(String ticket_number, String review, int grade) {
		userMapper.reviewUpload(ticket_number, review, grade);
	}
	
	public TicketVO reviewConfirm(String ticket_number) {
		return userMapper.reviewConfirm(ticket_number);
	}
	
	
	//	6-1
	public int myMileage(String userid) {		
		return userMapper.myMileage(userid);
	}
	
	public ArrayList useDate(String userid, String date1, String date2)	{
		return userMapper.useDate(userid, date1, date2);
	}
	
	public ArrayList reserveList(String user_id) {
		return userMapper.reserveList(user_id);
	}
	
	public int ticketNumberSelect(String user_id, String ticket_number) {
		return userMapper.ticketNumberSelect(user_id, ticket_number);		
	}
	
	public void reserveDelete(String user_id, String ticket_number) {
		userMapper.reserveDelete(user_id, ticket_number);
		
	}
	public void mileageUpdate(String user_id, int price) {
		userMapper.mileageUpdate(user_id, price);
	}
	
	// 6-3-1
	public void changePassword(String userid, String password) {
		 userMapper.changePassword(userid, password);
	}
	
	
}
