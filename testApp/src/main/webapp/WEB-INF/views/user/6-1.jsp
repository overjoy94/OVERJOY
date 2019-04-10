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
	 															$('#btnDelete').on('click', function() {
																alert("number: "+$('#ticket_number').val())
																location.href="reserveDelete";	
															} // function end
														); // end on
													});// ready end
												</script> 						

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
							<h3><u>예매내역/취소</u></h3>
							<br><br><br>

								<div class="col-md-6 work-us-left">
								<h4><b>나의 예매내역 ${count} 건</b></h4>
								</div>
								<div class="col-md-9 work-us-right bt-ft-txt-css">								
								<p style="margin-left:300px;margin-top:0px">* 예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</p>
								</div>

								<div class="clearfix"> </div><p>


								<div class="col-md-9 work-us-left bt-ft-txt-css" style="border:1px solid black; padding:10px">
			
							
									<table width="1000" border="1">
										<tr align="center">
											<td width="10%">예매번호</td>
											<td>영화제목</td>
											<td>예매한 날짜</td>
											<td>상영하는 시간</td>		
											<td width="10%"></td>									
										</tr>
										 
										<c:forEach var="list" items="${list }" varStatus="status">
										
										<c:set var="ticket_number" value="${list.ticket_number }"/>
										<input type="hidden" id="ticket_number" name="ticket_number" value="${ticket_number}">
											<tr align="center">
											<td>${ticket_number}</td>											
											<td>${list.movie_name}</td>
											<td>${list.purchase_date}</td>
											<td>${list.watch_date}</td>										
											<td>												
											<a href="reserveDelete?ticket_number=${ticket_number }"  >예매 취소</a>
											</td>
											<!-- <input type="button" id = "btnDelete" name = "btnDelete" value="예매 취소" style="margin-top:0px"> -->																							
										</c:forEach>
										
									</table>
									
								

								
								
								<input type="button" value="예매 취소"  style="float:right"> -->
								<hr width = "100%" color = "blue" size = "3">
								</div><br>
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