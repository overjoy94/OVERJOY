<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head>
<body>
 <%@ include file="/WEB-INF/common/top.jsp"%>
 <!--work us start here-->
<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<div class="col-md-3 work-us-left">

				<%@ include file="/WEB-INF/views/etc/5-left.jsp" %>
			</div>

			<div class="col-md-9 work-us-left bt-ft-txt-css">
				<h3><u>고객센터</u></h3>
				<div class="col-md-3 work-us-left" style="border:1px solid black; padding-bottom:15px;" >
					<h3>자주찾는질문/ <br>빠른검색</h3>
					<form>
						<input type="text" name="#" placeholder="ex) 현금영수증, 예매, 환불">
						<input type="submit" value="검색">
					</form>
				</div>

				<div class="col-md-3 work-us-left" style="border:1px solid black" >
					<h3>공지사항</h3>
					<p>공지사항을 알려드립니다.</p>
					<input type="button" value="바로가기" onclick="location.href='5-2.jsp'" >
				</div>

				<div class="col-md-3 work-us-left" style="border:1px solid black">
					<h3>카카오톡문의</h3>
					<p style="text-align:left">24시간 카카오톡 문의</p>
					<input type="button" value="문의하기" onclick="location.href='5-3.jsp'">
				</div>

			    <div class="clearfix"> </div>
				<div style="padding:30px"></div>
				
				<div class="col-md-6 work-us-left bt-ft-txt-css-bthover" style="padding:0px; magin:0px">								
					<h3>자주찾는 서비스</h3>
					<input type="button" value="신용카드 영수증 출력" onclick="location.href='5-2.jsp'">
					<input type="button" value="ID/PASSWORD 찾기" onclick="location.href='1-1-2.jsp'">
					<input type="button" value="예매/취소내역 확인" onclick="location.href='5-2.jsp'">
					<input type="button" value="할인카드 및 혜택 안내" onclick="location.href='5-2.jsp'">
					<input type="button" value="멤버쉽포인트 사용" onclick="location.href='5-2.jsp'">
					<input type="button" value="카카오톡 문의" onclick="location.href='5-3.jsp'">
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