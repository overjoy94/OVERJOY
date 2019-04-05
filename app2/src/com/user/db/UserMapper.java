package com.user.db;



import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.contents.db.TicketVO;



@Repository
public interface UserMapper {
	final String regist = 
			"insert into movie_user(username,userid,password,email,password_q,password_a,phone,phone_zip,postcode,address,detailAddress,birth,sex) values(#{username}, #{userid}, #{password}, #{email}, #{password_q},#{password_a}"
			+ ",#{phone},#{phone_zip},#{postcode},#{address}, #{detailAddress}, #{birth}, #{sex})";
	
	@Insert(regist)
	void insertUser(UserVO userVO);
	
	
	final String checkId =
			"select * from movie_user where userid = #{userid}";
	@Select(checkId)
	String checkID(@Param("userid") String userid);
	
	
	
	final String checkLogin =
			"select userid from movie_user where userid = #{userid} and password = #{password}";
	@Select(checkLogin)	
	String checkLogin(@Param("userid") String userid, @Param("password") String password);
	
	final String idFind =
			"select userid from movie_user where username = #{username} and phone = #{phone}";
	@Select(idFind)	
	String idFind(@Param("username") String username, @Param("phone") String phone);
	
	final String pwFind =
			"select password from movie_user where username = #{username} and userid = #{userid} and password_q = #{password_q} and password_a = #{password_a}";
	@Select(pwFind)
	String pwFind(@Param("username") String username, @Param("userid") String userid, @Param("password_q") String password_q, @Param("password_a") String password_a);
	
	final String changePassword=
			"update movie_user set password = #{password} where userid = #{userid}";
	@Update(changePassword)
	void changePassword(@Param("userid") String userid, @Param("password") String password);
	
	final String deleteId =
			"delete from movie_user where userid = #{userid}";
	@Delete(deleteId)	
	void deleteId(@Param("userid") String userid);
	
	// 4-1
	final String myMovieSelect =
			"select * from movie_ticket where user_id=#{user_id} and watch_date < sysdate order by watch_date";
	@Select(myMovieSelect)
	ArrayList<TicketVO> myMovieSelect(@Param("user_id") String user_id);
	
	final String movieImageFile =
			"select image_file from movie_info where name=#{movie_name}";
	@Select(movieImageFile)
	String movieImageFile(@Param("movie_name") String movie_name);
	
	final String movieName = 
			"select movie_name from movie_ticket where user_id = #{user_id} and ticket_number=#{ticket_number}";
	@Select(movieName)
	String movieName(@Param("user_id") String user_id, @Param("ticket_number") String ticket_number);
	
	final String reviewUpload = 
			"Update movie_ticket set grade = #{grade}, review = #{review} where ticket_number = #{ticket_number}";
	@Update(reviewUpload)
	void reviewUpload(@Param("ticket_number") String ticket_number, @Param("review") String review, @Param("grade") int grade);
	
	final String reviewConfirm = 
			"Select * from movie_ticket where ticket_number=#{ticket_number}";
	@Select(reviewConfirm)
	TicketVO reviewConfirm(@Param("ticket_number") String ticket_number);
	
	
	
	
	
	
	
	// 6-1 
	final String mileage =
			"select mileage from movie_user where userid = #{userid}";
	@Select(mileage)
	int myMileage(@Param("userid") String userid);
	
	final String reserveList =
			"select ticket_number, movie_name, purchase_date, watch_date " + 
			"from movie_ticket " + 
			"where user_id = #{user_id} and sysdate < watch_date order by ticket_number";
	@Select(reserveList)	
	ArrayList<TicketVO> reserveList(@Param("user_id") String user_id);
	
		
	final String ticketNumberSelect =
			"select price from movie_ticket where ticket_number = #{ticket_number} and user_id = #{user_id}";
	@Select(ticketNumberSelect)
	int ticketNumberSelect(@Param("user_id") String user_id, @Param("ticket_number") String ticket_number);
				
	final String reserveDelete = 
			"delete from movie_ticket where ticket_number = #{ticket_number} and user_id = #{user_id}";
	@Delete(reserveDelete)
	void reserveDelete(@Param("user_id") String user_id, @Param("ticket_number") String ticket_number);

	final String mileageUpdate = 
			"update movie_user set mileage=mileage+#{price} where userid=#{user_id}";
	@Update(mileageUpdate)
	void mileageUpdate(@Param("user_id") String user_id, @Param("price") int price);
	
	
	
	
	final String useDate = 
			"select purchase_date, movie_name, price " + 
			"from movie_ticket " + 
			"where user_id = #{user_id} and to_char(purchase_date,'YYYY-MM-DD') " + 
			"between to_date(#{date1}, 'YYYY-MM-DD') and to_date(#{date2}, 'YYYY-MM-DD') " +
			"order by purchase_date";
	@Select(useDate)
	ArrayList<TicketVO> useDate(@Param("user_id") String userid,
			@Param("date1") String date1, @Param("date2") String date2);
	
	
	

	
	
	

	
}
