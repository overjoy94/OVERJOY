<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="header2">
<div class="strip">
       <div class="container">
		  	   <div class="header-main">
		  	    	   <div class="logo-w">
		  	                        <a href="main"><img src="images/nob.png"></a>
		  	           </div>
		  	           <span class="menu"><img src="images/icon.png"> </span> 
		  	           <div class="clear"> </div>
		  	           <div class="header-right">  

		 	          	            <ul class="res">
										<input type="button" value="영화" onclick="location.href='movieChart'">
										<input type="button" value="예매" onclick="location.href='ticket'">&nbsp;&nbsp;&nbsp;&nbsp;
		  	             	         	<li><a class="active" href="main">홈</a></li>
		  	             	         	
		  	             	         	
		  	             	         	<c:if test="${empty sessionId}">
		  	             	         	<li><a href="loginForm">로그인</a></li>
		  	             	         	<li><a href="registerForm">회원가입</a></li>
		  	             	         	</c:if>
		  	             	         			  	             	         	
		  	             	         	
		  	             	         	<c:if test="${!empty sessionId}">	  	             	         	
		  	             	         	<li><a href="myMovieLog">무비로그</a></li>
		  	             	         	<li><a href="mypage">마이페이지</a></li>
		  	             	         	<li><a href="logout" >로그아웃</a></li>
		  	             	         	</c:if>

		  	             	         	<li><a href="sc">고객센터</a></li>
		  	             	         </ul> 
		  	             	          <script>
			                                                      $( "span.menu").click(function() {
			                                                                                        $(  "ul.res" ).slideToggle("slow", function() {
			                                                                                         // Animation complete.
			                                                                                         });
			                                                                                         });
		                                                     </script>
		                                                                   
		  	          </div>
		  	      <div class="clearfix"> </div>
		  	  </div>
	   </div>  
	 </div>  
 </div>
</body>
</html>