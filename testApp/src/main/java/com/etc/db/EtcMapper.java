package com.etc.db;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface EtcMapper {
	
	final String scInsert=
			"insert into movie_board(num, title, content, name) " + 
			"values(board_seq.nextval, #{title}, #{content}, #{name})";
	@Insert(scInsert)
	void scInsert(BoardVO boardVO);

	final String scList=
			"select num,title,name,to_char(wdate, 'YY-MM-DD HH24:MI') as wdate,cnt from movie_board order by num asc";
	@Select(scList)
	ArrayList<BoardVO> scList(BoardVO boardVO);
	
	final String scView=
			"select num,title,name,to_char(wdate, 'YY-MM-DD HH24:MI') as wdate,content,cnt from movie_board where num=#{num}";
	@Select(scView)
	BoardVO scView(BoardVO boardVO);
	
	
}
