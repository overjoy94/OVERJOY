<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<td colspan="2">남은좌석: 50/110 상영시간: 2019.03.05 07:00</td>
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
			포스터,영화제목
			</td>
			<td>
				일시, 인원
				좌석번호
			</td>
			<td>
				일반 ~원
				청소년 ~원
				총 인원 ~원				
			</td>
			<td>
				결제선택
			</td>
		</tr>





	</table>
</body>
</html>