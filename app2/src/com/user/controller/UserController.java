
package com.user.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.method.annotation.SessionAttributesHandler;

import com.user.db.UserService;
import com.user.db.UserVO;

import oracle.net.ns.SessionAtts;

@Controller
@SessionAttributes("sessionId")
public class UserController {

	@Autowired
	private UserService userService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	/*@RequestMapping(value = "/registerForm", method = { RequestMethod.POST, RequestMethod.GET })
	public String registerForm(Model model) {
		System.out.println("registerFOrm--------------------------------------");
		
		return "user/1-1-1";
	}*/
	
	@RequestMapping(value = "/registerForm", method = RequestMethod.GET )
	public String registerForm(Model model) {				
		return "user/1-1-1";
	}
	
	@RequestMapping(value = "/userInsert", method = { RequestMethod.POST, RequestMethod.GET })
	public String userInsert(@ModelAttribute("userVO") UserVO userVO, HttpServletRequest request, Model model) {

		System.out.println("userInsert--------------------------------");
		userVO.setUsername(request.getParameter("username").trim());
		userVO.setUserid(request.getParameter("userid").trim());
		//
		//System.out.println("YEAR: "+request.getParameter("YEAR").trim()+"MONTH: "+request.getParameter("MONTH").trim());
		userVO.setPassword(request.getParameter("upw1").trim()); 
		userVO.setEmail(request.getParameter("em1").trim()+"@"+request.getParameter("em2").trim());
		
		userVO.setPassword_q(request.getParameter("password_q").trim());
		userVO.setPassword_a(request.getParameter("password_a").trim());
		
		
		userVO.setPhone(request.getParameter("phone1").trim()+request.getParameter("phone2").trim()+request.getParameter("phone3").trim());
		userVO.setPhone_zip(request.getParameter("zphone1").trim()+request.getParameter("zphone2").trim()+request.getParameter("zphone3").trim());
		userVO.setPostcode(request.getParameter("postcode").trim());
		userVO.setAddress(request.getParameter("address").trim());
		userVO.setDetailAddress(request.getParameter("detailAddress").trim());
		
		
		userVO.setBirth(request.getParameter("YEAR").trim()+"-"+request.getParameter("MONTH").trim()+"-"+request.getParameter("DAY").trim());
		userVO.setSex(request.getParameter("sex").trim());
		//userVO.setPostcode(Integer.parseInt(request.getParameter("postcode").trim()));
		
		
		System.out.println(userVO.getPostcode());
		
		System.out.println("insertUser");
		userService.insertUser(userVO);
		System.out.println("after insertUser");
		return "user/1-1";
	}

	@RequestMapping(value = "/checkID", method = { RequestMethod.POST, RequestMethod.GET} )
	@ResponseBody
	public String checkId(@RequestParam("userid") String userid) {
				
		System.out.println("########################controller/checkID");
		System.out.println("userid "+userid);
		String idck = userService.checkId(userid);
		System.out.println("idck: " + idck);
		return idck;
	}
	
	@RequestMapping(value = "/loginForm", method = { RequestMethod.POST, RequestMethod.GET })
	public String loginForm(Model model) {
		System.out.println("loginForm--------------------------------------");		
		return "user/1-1";
	}
	
	
	@RequestMapping(value = "/loginCheck", method = { RequestMethod.POST, RequestMethod.GET })
	public String loginCheck(HttpServletRequest request, Model model) {
		System.out.println("loginCheck--------------------------------------");
		String userid = request.getParameter("userid").trim();
		System.out.println("id: "+userid);
		String password = request.getParameter("password").trim();
		System.out.println("password: "+ password);
		String dbID = userService.checkLogin(userid, password);
		System.out.println("dbID: "+dbID);
		if(dbID.equals(userid)) {
			model.addAttribute("sessionId", userid);
			System.out.println("session");
			return "redirect:main";
		}
		return "user/1-1";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		session.invalidate();		
		//System.out.println("session id: "+session.getAttribute("sessionId"));
		model.addAttribute("sessionId", "");
		return "redirect:main";
	}
	
	@RequestMapping(value = "/idFind", method = { RequestMethod.POST, RequestMethod.GET })
	public String idFind(Model model){
		return "user/1-1-2";
	}
	@RequestMapping(value = "/idFindBtn", method = { RequestMethod.POST, RequestMethod.GET })
	public String idFindBtn(HttpServletRequest request, Model model){ //
		System.out.println("########################controller/idFind");
		
		String username = request.getParameter("username").trim();
		String phone = request.getParameter("phone").trim();	
		
		
		String dbVal="";
		dbVal = userService.idFind(username, phone);

		model.addAttribute("dbVal", dbVal);
		System.out.println(dbVal);
	
	    return "user/1-1-2";
	}
	
	
	@RequestMapping(value = "/pwFind", method = RequestMethod.GET)
	public String pwFind(Model model){
		return "user/1-1-3";
	}
	
	@RequestMapping(value = "/pwFindBtn", method =  RequestMethod.POST)
	public String pwFindBtn(HttpServletRequest request, Model model){ //
		System.out.println("########################controller/pwFind");
		
		String username = request.getParameter("username").trim();
		String userid = request.getParameter("userid").trim();
		String password_q = request.getParameter("password_q").trim();
		String password_a = request.getParameter("password_a").trim();
		
		System.out.println("print: "+username + userid+  password_q + password_a);
		
		
		String dbVal="";
		dbVal = userService.pwFind(username, userid, password_q, password_a);

		model.addAttribute("dbVal", dbVal);
		System.out.println(dbVal);
	
	    return "user/1-1-3";
	}
	
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET )
	public String mypage(Model model, HttpSession session) {
		String user_id = (String) session.getAttribute("sessionId");
		ArrayList<UserVO> list = new ArrayList<UserVO>();				
		list = userService.reserveList(user_id);				
		model.addAttribute("count", list.size());
		model.addAttribute("list", list);
		
		return "user/6-1";
	}
	
	@RequestMapping(value = "/reserveDelete", method = RequestMethod.GET )
	public String reserveDelete(Model model, HttpSession session, HttpServletRequest request) {
		String user_id = (String) session.getAttribute("sessionId");
		String ticket_number = request.getParameter("ticket_number");
		
		System.out.println("ticket_number: "+ticket_number);
		
		int price = userService.ticketNumberSelect(user_id, ticket_number);
		System.out.println("prcie: "+price);
		userService.reserveDelete(user_id, ticket_number);
		System.out.println("reserveDelete");
		userService.mileageUpdate(user_id, price);
		System.out.println("mileageUpdate");
			
		return "redirect:mypage";
	}
	
	
	
	
	@RequestMapping(value = "/myMileage", method = RequestMethod.GET )
	public String myMileage(Model model, HttpSession session, HttpServletRequest request ) {
				
		String userid = (String) session.getAttribute("sessionId");
		int mileage = 0; 
		mileage = userService.myMileage(userid);
		System.out.println("mileage= "+mileage);
		model.addAttribute("mileage",mileage);
		
		String date1 = request.getParameter("6-2date1");
		String date2 = request.getParameter("6-2date2");
		
		if(date1 != null && date2 != null) {
			System.out.println("date1 = "+date1);
			ArrayList ticket = new ArrayList();
			ticket = userService.useDate(userid, date1, date2);
			model.addAttribute("ticket",ticket);
		}
		
		
		
		return "user/6-2";
	}
	
	@RequestMapping(value = "/useDate", method = RequestMethod.GET )
	public String selectDate(Model model, HttpSession session, HttpServletRequest request) {
		String userid = (String) session.getAttribute("sessionId");
		String date1 = request.getParameter("6-2date1");
		String date2 = request.getParameter("6-2date2");
		
		ArrayList ticket = new ArrayList();
		ticket = userService.useDate(userid, date1, date2);
		model.addAttribute("ticket",ticket);
				
		return "user/6-2";
	}
	
	
	
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET )
	public String myInfo(Model model) {
		return "user/6-3";
	}
	
	@RequestMapping(value = "/myPassword", method = RequestMethod.GET )
	public String myPassword(Model model) {
		
		return "user/6-3-1";
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST )
	public String changePassword(HttpServletRequest request, HttpSession session, Model model) {
		String password = request.getParameter("cur_pw");
		String after_pw1 = request.getParameter("after_pw1");
		String after_pw2 = request.getParameter("after_pw2");
		String userid = (String) session.getAttribute("sessionId");
		System.out.println("sessionid: "+userid);
		String result = "";
		result = userService.checkLogin(userid, password);		
		System.out.println("result: "+result);
		if(!userid.equals(result)) {			
			model.addAttribute("result", result);			
		}
		else {
			userService.changePassword(userid, after_pw1);			
			model.addAttribute("result", "success");
		}
		return "user/6-3-1";
	}
	
		
	@RequestMapping(value = "/myDestroy", method = RequestMethod.GET )
	public String myDestroy(Model model) {
		
		
		return "user/6-4";
	}
	
	@RequestMapping(value = "/myDestroyImpl", method = RequestMethod.POST )
	public String myDestroyImpl(HttpServletRequest request, HttpSession session, Model model) {
		String userid = (String) session.getAttribute("sessionId");
		String password = request.getParameter("password").trim();
		String result = "";
		result = userService.checkLogin(userid, password).trim();
		System.out.println(userid);
		System.out.println(password);
		if(!result.equals(userid)) {			
			model.addAttribute("result", result);			
			System.out.println("result: "+result);
			return "user/6-4";			
		}
		userService.deleteId(userid);
		session.removeAttribute(userid); // 세션 삭제		
		return "redirect:main";
	}
	
	


}
