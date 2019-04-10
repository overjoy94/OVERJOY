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
<!-- //end-smoth-scrolling -->
<script type="text/javascript">

$(document).ready(function() {
	
	$('#sub').on('click', function() {
		
		var cur_pw = $('#cur_pw').val();
		var after_pw1 = $('#after_pw1').val();
		var after_pw2 = $('#after_pw2').val();
		if(cur_pw == "" || after_pw1 == "" || after_pw2 == "" ){
			alert("비밀번호를 입력해주세요.")
			return false;
		}		
		if(cur_pw == after_pw1){
			alert("현재 비밀번호와 변경할 비밀번호를 다르게 해주세요.")
			return false;
		}
		if(after_pw1 != after_pw2){
			alert("변경할 비밀번호가 일치하지 않습니다.")
			return false;
		}
		return true;		
		
	} // function end
	); // end on	
});// ready end

</script>

<c:if test="${'fail' eq result && '' ne cur_pw }">
	<script> 
		alert("비밀번호가 틀렸습니다.")
	</script>
</c:if>

<c:if test="${'success' eq result }">
	<script> 
		alert("정상적으로 비밀번호가 변경되었습니다.")
		location.href="mypage";


	</script>
</c:if>  


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
				<h3><u>패스워드 변경</u></h3>
				<br><br><br>
					<div class="col-md-8 work-us-left bt-ft-txt-css">
					<form name="#" method="post" action="changePassword">
						<table>
							<tr>
								<td>현재 패스워드</td><td>
								<input type="password" id = "cur_pw" name="cur_pw"></td>
							</tr>
							<tr>
								<td>변경할 패스워드</td><td>
								<input type="password" id="after_pw1" name="after_pw1"></td>
							</tr>
							<tr>
								<td>변경할 패스워드 확인</td><td>
								<input type="password" id="after_pw2" name="after_pw2"></td>
							</tr>
						</table>
						<input type="button" value="취소" action="#">
						<input type="submit" id="sub" name="sub" value="변경하기">
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