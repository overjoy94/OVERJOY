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

				<%@ include file="/WEB-INF/etc/7-left.jsp"%>

			<div class="col-md-9 work-us-left">
				<h3><u>사이트맵</u></h3>
				<br><br><br>
					<div class="sitemap">
					

					<div class="col-md-3 work-us-left">
						<ul>
								<p><a href="2.jsp" style="color:white">영화차트 평점/리뷰</a></p>
						
					</div>

					<div class="col-md-3 work-us-left">
						<ul>
								<p><a href="3-1.jsp" style="color:white">예매</a></p>
								<li><a href="3-1.jsp">빠른예매</a></li><br>
								<li><a href="3-2.jsp">상영시간표</a></li><br>		
						</ul>
					</div>
					<div class="col-md-3 work-us-left">
						<ul>	
								<p><a href="4-1.jsp" style="color:white">무비로그</a></p>
								<li><a href="myMovieLog">내가 본 영화</a></li><br>
								<li><a href="4-2.jsp">리뷰</a></li><br>
						</ul>
					</div>
		  <div class="clearfix"></div>
		  <div style="margin-top:100px"></div>
					<div class="col-md-3 work-us-left">
						<ul>
								<p><a href="customerCenter" style="color:white">고객센터</a></p>
								<li><a href="faq">자주 찾는 질문</a></li><br>
								<li><a href="notice">공지/뉴스</a></li><br>
								<li><a href="qnk">문의</a></li><br>
						</ul>
					</div>
					<div class="col-md-3 work-us-left">
						<ul>
								<p><a href="6-1.jsp" style="color:white">마이페이지</a></p>
								<li><a href="6-1.jsp">예매내역/취소</a></li><br>
								<li><a href="6-2.jsp">마일리지</a></li><br>
								<li><a href="6-3.jsp">나의 정보</a></li><br>
								<li><a href="6-4.jsp">나의 문의내역</a></li><br>
								<li><a href="6-5.jsp">회원탈퇴</a></li><br>
						</ul>
					</div>
					<div class="col-md-3 work-us-left">
						<ul>
								<p><a href="7-1.jsp" style="color:white">기타</a></p>
								<li><a href="7-1.jsp">사이트맵</a></li><br>
								<li><a href="7-2.jsp">오시는 길</a></li><br>

						</ul>
					</div>
				</div>

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