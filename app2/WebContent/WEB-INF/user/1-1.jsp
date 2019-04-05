<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Photographica-Final Bootstrap Website Template| Home ::
	w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--web-fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<!--js-->
<script src="js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1"
	charset="UTF-8">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smoth-scrolling -->

<title>Insert title here</title>
</head>
<body>
	<!--header start here-->

	<%@ include file="/WEB-INF/common/top.jsp"%>

	<!--header end here-->
	<!--work us start here-->



	<!-- 로그인 되기전 -->
	
		<div class="work-us">
			<div class="container2">
				<div class="work-us-main">

					<%@ include file="/WEB-INF/user/1-left.jsp"%>
			
				<c:if test="${empty sessionId}">
					<div class="col-md-9 work-us-left">

						<h3>
							<u>로그인</u>
						</h3>
						<br>
						<br>
						<br>
						<div class="bt-ft-txt-css">
							<form method="post" action="loginCheck">
								<table>
									<tr>
										<td>아이디</td>
										<td><input type="text" id="userid" name="userid"
											placeholder="ID"></td>
									</tr>
									<tr>
										<td>패스워드</td>
										<td><input type="text" id="password" name="password"
											placeholder="PASSWORD"></td>
									</tr>
								</table>
								<input type="submit" value="로그인">
							</form>
							<input type="button" value="회원가입"
								onclick="location.href='registerForm'"> <input
								type="button" value="아이디찾기" onclick="location.href='idFind'">
							<input type="button" value="패스워드찾기"
								onclick="location.href='pwFind'">
						</div>


					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</c:if>
	
	
	<!-- 로그인 된후 -->
	<c:if test="${!empty sessionId}">
        <script type="text/javascript">
        	window.location.href=""
        </script>
        
	</c:if>





	<!--work us end here-->
	<%@ include file="/WEB-INF/common/bottom.jsp"%>

</body>
</html>