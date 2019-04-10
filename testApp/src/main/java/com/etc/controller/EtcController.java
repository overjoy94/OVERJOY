package com.etc.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.etc.db.EtcService;
import com.etc.db.Pagination;
import com.etc.db.BoardVO;

@Controller
public class EtcController {
	
	@Autowired
	EtcService etcService;
	
	// 고객센터 메인
	@RequestMapping(value = "/sc", method = RequestMethod.GET )
	public String sc() {
		
		
		return "etc/5";
	}
	
	/*@RequestMapping(value = "/scList", method = {RequestMethod.GET, RequestMethod.POST} )
	public String scList(@ModelAttribute("BoardVO") BoardVO boardVO, Model model) throws Exception{
		System.out.println("controller : scList ///");
		BoardVO boardVO = new BoardVO();
		
		ArrayList<BoardVO> list = etcService.scList(boardVO);
		model.addAttribute("list", list);
		System.out.println("listsize : " + list.size());
		System.out.println(list.get(0).getWdate());
		return "etc/5-1";
	}*/
	
	@RequestMapping(value = "/scList", method = {RequestMethod.GET, RequestMethod.POST} )
	public String scList(@ModelAttribute("BoardVO") BoardVO boardVO,
			@RequestParam(defaultValue="1") int curPage, HttpServletRequest request, Model model) throws Exception{
		
		System.out.println("controller : scList ///");
		/*BoardVO boardVO = new BoardVO();*/
		
		
		ArrayList<BoardVO> list = etcService.scList(boardVO);
		int listCnt = (int)list.size();
		
		Pagination pagination = new Pagination(listCnt, curPage);
		
        /*boardVO.setStartIndex(pagination.getStartIndex());
        boardVO.setCntPerPage(pagination.getPageSize());
		
		System.out.println(boardVO.getStartIndex());
		System.out.println(boardVO.getCntPerPage());*/
		
		model.addAttribute("list", list);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("pagination", pagination);
		
		System.out.println("listsize / listCnt : " + listCnt);
		/*System.out.println(list.get(0).getWdate());*/
		return "etc/5-1";
	}
	
	
	@RequestMapping(value = "/scView", method = RequestMethod.GET )
	public String scView(@ModelAttribute("BoardVO") BoardVO boardVO, Model model) throws Exception{	
		
		boardVO = etcService.scView(boardVO);
		model.addAttribute("boardVO", boardVO);
		
		System.out.println(boardVO.getWdate());
		
		return "etc/5-1-1";
	}
	
	@RequestMapping(value = "/scViewUpdate", method = RequestMethod.GET )
	public String scViewUpdate(Model model) {				
		return "etc/5-1-1";
	}
	@RequestMapping(value = "/scViewDelete", method = RequestMethod.GET )
	public String scViewDelete(Model model) {				
		return "etc/5-1-1";
	}
	
	@RequestMapping(value = "/scWrite", method = {RequestMethod.GET, RequestMethod.POST} )
	public String scWrite(Model model,HttpSession session) {	
		String sid = (String) session.getAttribute("sessionId");
		
		model.addAttribute("sid", sid);
		/*etcService.scWrite(boardVO);*/
		
		return "etc/5-1-2";
		
		
	}
	
	@RequestMapping(value = "/scInsert", method = {RequestMethod.GET, RequestMethod.POST} )
	public String scInsert(@ModelAttribute("BoardVO") BoardVO boardVO, Model model, HttpServletRequest request) {				
		
		/*String title= boardVO.getTitle();
		String content= boardVO.getContent();
		String name= boardVO.getName();*/
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String name=request.getParameter("name");
		
		title=title.replace("<", "&lt;");
		title=title.replace(">", "&gt;");
		name=name.replace("<", "&lt;");
		name=name.replace(">", "&gt;");
		
		title = title.replace(" ", "&nbsp;");
		name = name.replace(" ", "&nbsp;");
		
		content = content.replace("\n", "<br>");
		
		boardVO.setTitle(title);
		boardVO.setContent(content);
		boardVO.setName(name);
		
		etcService.scInsert(boardVO);
		return "redirect:scList";
	}
	
	// 사이트맵
	@RequestMapping(value = "/siteMap", method = RequestMethod.GET )
	public String siteMap(Model model) {				
		return "etc/7-1";
	}
	
	// 오시는길
	@RequestMapping(value = "/wtc", method = RequestMethod.GET )
	public String contactUs(Model model) {				
		return "etc/7-2";
	}
	

}
