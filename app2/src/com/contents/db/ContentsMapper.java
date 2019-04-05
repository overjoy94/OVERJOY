package com.contents.db;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentsMapper {
	final String checkId =
			"select name from movie_info where id = #{id}";
	@Select(checkId)
	String checkID(@Param("id") String id);
		
	final String countSeat =
			"select name from movie_info where id = #{id}";
	@Select(countSeat)
	String countSeat(@Param("id") String id);
	
	
	final String timeSeatCount =
			"select time_start, nvl((bs.seat - rs.count_seat), bs.seat) as seat " + 
			"from movie_seat bs " + 
			"LEFT OUTER JOIN (select time_start as time_started, count(*) as count_seat " + 
			"from movie_ticket t, movie_seat s " + 
			"where movie_name=#{movie_name} and to_char(watch_date, 'YYYY-MM-DD') = #{watch_date} and time_start = to_char(watch_date, 'HH24:MI') " + 
			"group by time_start,seat) rs ON bs.time_start = rs.time_started";
	@Select(timeSeatCount)
	ArrayList<SeatVO> timeSeatCount(@Param("movie_name") String movie_name, @Param("watch_date") String watch_date);
	
	
	final String movieImageFile =
			"select image_file from movie_info where name=#{movie_name}";
	@Select(movieImageFile)
	String movieImageFile(@Param("movie_name") String movie_name);
	
}
