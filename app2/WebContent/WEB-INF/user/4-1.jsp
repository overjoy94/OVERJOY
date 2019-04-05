<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!--header start here-->
<%@ include file="/WEB-INF/common/top.jsp"%>
<!--header end here-->
<!--work us start here-->
<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<%@ include file="/WEB-INF/user/4-left.jsp" %>
			
			<!-- 내가 본 영화 시작 -->
			<div class="col-md-9 work-us-left">
				<div class="bt-ft-txt-css">
				<h3><u>내가 본 영화</u></h3> 


					<!-- 반복문 -->
					<!-- 1번째 영화 시작-->
					<div class="col-md-9 movie-list" style="margin-top:50px">
					<table>
					
					<c:forEach var="ticketList" items="${ticketList }" varStatus="status">
					<form onsubmit="return btnGrade()">
					<%-- <input text="hidden" id="ticket_number" name="ticket_number" value=${ticketList.ticket_number } > --%>
					<c:set var="ticket_number" value="${ ticketList.ticket_number}" />
					<tr>
						<td><div class="col-md-3"><a href="2-1.html"><img src="${image_file.get(status.getIndex())}" width="185" height="260" /></a></div></td>
						<div class="col-md-9">
						
							<td><p style="font-size:2em;" >${ticketList.movie_name }</p>
							<p style="font-size:1em;">${ticketList.watch_date }</p>
							
							<c:if test="${0 ne ticketList.grade}">
								<img />${ ticketList.grade}<br>
								<a href="reviewConfirm?ticket_number=${ticket_number}" >리뷰 보기</a>
							</c:if>
							
							<c:if test="${0 eq ticketList.grade}">
								 <a href="appraisalWrite?ticket_number=${ticket_number}" >평가해주세요.</a>															
							</c:if>
							
							</td>
							
							
							<!-- <td><input type="button" id="btnDelete" name = "btnDelete" value="삭제" style="float:right;"></td> -->							
						</div>
	<!--
						<div class="col-md-1">
							 값을 무비다이어리에 전달하여 영화 제목이 자동으로 지정되도록 한다.
							<input type="button" value="무비다이어리쓰기" onclick="location.href='4-2.html'" style="margin-top:180px; margin-left:150px"> 
						</div>
						-->
						</tr>
						<tr><td colspan="4"><hr style="border: 1px solid black; width:750px; float:left; margin-left:0px"></td></tr>
						</form>
						</c:forEach>
						
					</table>
					</div>

					<!-- 1번쨰 영화 끝 -->
					
				</div>

			</div>
			
			<!-- 내가 본 영화 끝 -->
		  <div class="clearfix"> </div>
		</div>

	</div>
</div>
<!--work us end here-->
<!--workus grid start here-->
<%@ include file="/WEB-INF/common/bottom.jsp"%>
	</body>
</html>