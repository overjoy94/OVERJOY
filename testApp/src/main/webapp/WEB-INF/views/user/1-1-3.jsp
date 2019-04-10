<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>회원서비스 : 비밀번호찾기</title>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<!--js-->
<script src="js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript" src="js/edit_JS.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	

	
<script type="text/javascript">

$(document).ready(function() {
	
	$('#sub').on('click', function() {
		
		var username = $('#username').val();
		var userid = $('userid').val();
		var password_q = $('#password_q').val();
		var password_a = $('#password_a').val();
		
		if(username == "" || userid == "" || password_q == "" || password_a == ""){
			alert("빈칸을 입력해주세요.")
			return false;
		}
		alert("${dbVal}");
		return true;		
		
	} // function end
	); // end on	
});// ready end

</script>	
	
<!-- //end-smoth-scrolling -->

</head>
<body>



<!--header start here-->
<%@ include file="/WEB-INF/common/top.jsp" %>
<!--header end here-->
<!--work us start here-->

  


<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<%@ include file="/WEB-INF/views/user/1-left.jsp"%>

			<div class="col-md-9 work-us-left">
				<div class="bt-ft-txt-css">
				<h3><u>비밀번호찾기</u></h3>
				<br><br><br>
				
					<form method="post" action="pwFindBtn">
						<table>
							<tr>
								<th>이름</th><td><input type="text" name="username" id="username"></td>
							</tr>
							<tr>
								<th>아이디</th><td><input type="text" name="userid" id="userid"></td>
							</tr>
							<tr>
								<th>비밀번호 힌트</th>
							  <td><select name="password_q" id="password_q">
							  <option value="" selected>선택하세요</option>
							  <option value="1">졸업한 초등학교 이름은?</option>
							  <option value="2">아버지 성함은?</option>
							  <option value="3">어머니 성함은?</option>
							  <option value="4">어릴 적 내 별명은?</option>
							  <option value="5">가장 아끼는 물건은?</option>
							  <option value="6">좋아하는 동물은?</option>
							  <option value="7">좋아하는 색깔은?</option>
							  <option value="8">좋아하는 음식은?</option>
							  
							</select>
							</td>
							</tr>
							<tr>
								<th>비밀번호 답변</th>
								<td><input type='text' name="password_a" id="password_a" size="35" maxlength="30"></td>
							</tr>
							
						</table>
						<input type="button" value="취소" onclick="location.href='loginForm'">
						<input type="submit" id="sub" name="sub" value="찾기">
					</form>
					
					
					
				</div>
			</div>

		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--work us end here-->
<!--workus grid start here-->
<%@ include file="/WEB-INF/common/bottom.jsp" %>
	</body>
</html>