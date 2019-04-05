<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Photographica-Final Bootstrap Website Template| Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--web-fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<!--js-->

<script src="js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body>
	<!--header start here-->
	<%@ include file="/WEB-INF/common/top.jsp"%>
	<!--header end here-->
	<!--work us start here-->
	
	<div class="work-us">
		<div class="container2">
			<div class="work-us-main">
					<%@ include file="/WEB-INF/user/4-left.jsp" %>

				<div class="col-md-9 work-us-left bt-ft-txt-css">

					<h3>
						<u>리뷰 보기</u>
					</h3>

					<div>
					<form id="#" action="" method="get">					
						<table border="1" style="width: 820px; margin-top: 80px;">
							<tr>
								<td>
									<!-- 제목 값 받아서 고정시키기 -->
									 <input type="text"value="${ticketVO.movie_name }" border="0" style="width: 800px; border: 0" readonly="readonly">
								</td>
							</tr>
							<tr>
								<td>
									<input type="text" value="${ticketVO.grade }" style="border: 0" readonly="readonly">
								 								  
								
								</td>
							</tr>
							<tr>
								<td><textarea id=review name="review"  ROWS="5" COLS="25" style="width: 800px; height: 100px; 
								resize: none; border: 0" readonly="readonly">${ticketVO.review }</textarea>

								</td>
							</tr>
							<tr style="float: right; padding-right: 20px; padding-top: 0px">
								<td style="border: 0">
								<input type="button" value="뒤로가기"	onclick="javascript:history.back()" style="margin-top: 0px">
								<input type="submit" value="수정" style="margin-top: 0px">
								<input type="button" value="삭제" style="margin-top: 0px">
								</td>
							</tr>


						</table>
						</form>
					</div>

				</div>





				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--work us end here-->
	<!--workus grid start here-->
	<%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>