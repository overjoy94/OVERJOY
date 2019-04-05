<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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
 <%@ include file="/WEB-INF/contents/3-left.jsp"%>
 <!--work us start here-->
 
<div class="col-md-9 work-us-left">
	<h3><u>빠른 예매</u></h3>
		<br><br><br>
				
				<table width="1000px" height="800px" border="1">
		<tr>
			<td colspan="4">인원/좌석</td>
		</tr>
		<tr>
			<td colspan="2">일반 &nbsp;&nbsp;&nbsp; 
				<c:forEach var="i" begin="0" end="6" step="1">
					<input type="button" value="${i}">
				</c:forEach>
				<br>
				청소년
				<c:forEach var="i" begin="0" end="6" step="1">
					<input type="button" value="${i}">
				</c:forEach>
				<br>
				어린이
				<c:forEach var="i" begin="0" end="6" step="1">
					<input type="button" value="${i}">
				</c:forEach> 
			</td>
			<td colspan="2">좌석수 : <br> 상영시간 : ${watch_date} &nbsp; ${time }</td>
		</tr>
		<%
			String col[] = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K" };
			int seatNumber[] = {};
			int seatNumberMax = 11;
			List list = new ArrayList();
			for (int i = 0; i < col.length; i++) {
				list.add(col[i]);
			}
			pageContext.setAttribute("col", list);

			List list2 = new ArrayList();
			for (int i = 0; i < seatNumberMax; i++) {
				list2.add(i + 1);
			}
			pageContext.setAttribute("seatNumber", list2);
		%>
		
		<tr>
			<td colspan="4">
				<c:forEach var="i" items="${col}" step="1">
					${i} &nbsp;&nbsp;
					<c:forEach var="j" items="${seatNumber}" step="1">
						<input type="button" value="${j}">
					</c:forEach>
					<br>
				</c:forEach>
			</td>
		</tr>
		
		<tr>
			<td>
			<img alt="" src="${image_file}" width="200px" height="200px"> ${movie_name}</td>
			<td>
				${watch_date}
				<!-- 일시, 인원
				좌석번호 -->
			</td>
			<td>
				${watch_date}
				<!-- 일반 ~원
				청소년 ~원
				총 인원 ~원	 -->			
			</td>
			<td>
				결제선택
			</td>
		</tr>





	</table>

			</div>

		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--work us end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>