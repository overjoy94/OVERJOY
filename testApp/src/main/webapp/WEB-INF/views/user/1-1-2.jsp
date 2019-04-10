<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>회원서비스 : 아이디찾기</title>

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
		var phone = $('phone').val();
				
		if(username == "" || phone == ""){
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
				<h3><u>아이디찾기</u></h3>
				<br><br><br>
					<form method="post" action="idFindBtn">
						<table>
							<tr>
								<th>이름</th><td><input type="text" id="username" name="username" ></td>
							</tr>
							<tr>
								<th>휴대폰 번호</th><td><input type="text" id="phone" name="phone"></td><td>하이픈 제외</td>
							</tr>
						</table>
						<input type="button" value="취소" onclick="location.href='1-1.html'">
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