<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title> Photographica-Final Bootstrap Website Template| Home :: w3layouts</title>
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
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- <script type="text/javascript">		
		
		function passwordCheck(){
			var password = document.getElementById("password").value;
			if(password == ""){
				alert("비밀번호를 입력해주세요.")
				return false;
			}
			return true;	
		}					
	</script> -->
	
	<script type="text/javascript">
//비밀번호 비입력 submit
$(document).ready(function() {
	
	$('#sub').on('click', function() {
		
		var password = $('#password').val();
		if(password == ""){
			alert("비밀번호를 입력해주세요.")
			return false;
		}		
		return true;		
		
	} // function end
	); // end on	
});// ready end

</script>

<c:if test="${'fail' eq result && '' ne password }">
	<script> 
		alert("비밀번호가 틀렸습니다.")
	</script>
</c:if> 


	
		
<!-- //end-smoth-scrolling -->
</head>
<body>
 <%@ include file="/WEB-INF/common/top.jsp"%>
 
 <!--work us start here-->
<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<div class="col-md-3 work-us-left">

				<%@ include file="/WEB-INF/views/user/6-left.jsp"%>

			</div>

			<div class="col-md-9 work-us-left">
				<h3><u>회원탈퇴</u></h3>
				<br><br><br>

	
				<div class="col-md-6 work-us-left bt-ft-txt-css" style="text-align:center">
					<p>회원탈퇴를 위해 패스워드를 입력해 주세요.</p><br>
					<form id="pw" name="pw" onsubmit="return passwordCheck()" method="post" action="myDestroyImpl"><br><br>
						<input type="text" id="password" name="password" 
						 	placeholder="password" >
						<input type="submit" id="sub" name="sub" value="회원탈퇴">
					</form>
				</div>

			</div>

		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--work us end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>