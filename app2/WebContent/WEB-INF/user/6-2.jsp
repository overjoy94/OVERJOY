<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		
		var date1 = $('#6-2date1').val();
		var date2 = $('#6-2date2').val();
		if(date1 == "" || date2 == ""){
			alert("날짜를 제대로 입력해주세요.")
			return false;
		}		
		return true;		
		
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
				<%@ include file="/WEB-INF/user/6-left.jsp"%>
			</div>

			<div class="col-md-9 work-us-left">
				<h3><u>마일리지</u></h3>
				<br>						

							<div class="col-md-9 work-us-left bt-ft-txt-css" >
								<table width="300">
									<tr style="background-color:gray">
										<td>구분</td>
										<td>내용</td>
									</tr>
									<tr>
										<td>사용가능</td>
										<td>${mileage}</td>
									 </tr>
								</table>
							</div>

							<div class="clearfix"> </div>
							<div style="padding:50px"></div>

							<div class="col-md-9 work-us-left bt-ft-txt-css" style="border:1px solid black; padding:20px; width:75%">
								<form name="#" action="myMileage">
								조회기간 :
									<input type="date" id="6-2date1" name="6-2date1"  >~
									<input type="date" id="6-2date2" name="6-2date2"  style="margin-right:0px">
									<input type="submit" id="sub" name="sub" value="조회하기" style="margin-left:0px">
								</form>
							</div>

							<div class="clearfix"> </div>
							<div style="padding:20px"></div>

							  <div class="col-md-9 work-us-left bt-ft-txt-css"> 
									<table width=800 >
										<tr style="background-color:gray">
											<td>구분</td>
											<td>날짜</td>
											<td>영화제목</td>
											<td>마일리지</td>
										</tr>
										
										<c:forEach var="ticket" items="${ticket}">	
										<tr>										
											<td>예매</td>											
											<td>${ticket.purchase_date}</td>
											<td>${ticket.movie_name}</td>
											<td>${ticket.price}</td>											
										 </tr>
										</c:forEach>
										
									</table>
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