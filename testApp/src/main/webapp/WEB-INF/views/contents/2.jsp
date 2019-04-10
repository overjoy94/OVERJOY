<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>영화차트 평점/리뷰</title>
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


				<h3>영화 차트/<br>평점리뷰</h3>
				<br>
					<div class="header-main">
					 
					 <div class="menu-left"> 
						

						<span class="ver-line"></span>
					 </div> 					 
					 </div> 
			</div>

			<div class="col-md-9 work-us-left bt-ft-txt-css-bthover">
				<h3><u>영화 차트/평점리뷰</u></h3>
				<br><br><br>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>극한직업</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>드래곤 길들이기</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>국제시장</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>명량</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>

		  <div class="clearfix"></div>
		  <div style="margin-top:100px"></div>

					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>어바웃타임</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>어벤져스</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>null</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
					<div class="col-md-3 work-us-left">
						<div class="bt-ft-txt-css">
						<img src="images/one_sm.jpg" alt="">
							<h3>null</h3>
							<p>개봉일 / 평점</p>
							<input type="button" value="리뷰보기" action="#">
							<input type="button" value="예매하기" onClick="location.href='ticket'">
						</div>
					</div>
			</div>
			<div class="clearfix"> </div>
			<div style="margin-top:100px"/>


		  
		</div>
	</div>
</div>
<!--work us end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>