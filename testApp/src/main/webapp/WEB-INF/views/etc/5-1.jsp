<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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

			<div class="col-md-9 work-us-left">
				<h3><u>자주 찾는질문</u></h3>
				
				<div class="col-md-9 work-us-left bt-ft-txt-css">
				
				<div style="margin:50px"></div>
				
				<table border="1">
					
					
					 <tr>
						<th>번 호</th>
						<th>제 목</th>
						<th>아이디</th>
						<th>작성일</th>
						<th>조회수</th>
					  </tr>
					  
					  
					  <%-- ${pagination.pageSize } --%>
					  
					  <%-- <c:if test="${pagination.listCnt >= pagination.startIndex }">
					  	
					  				  					  
					  </c:if> --%>
					  <!-- 스타트랑 엔트 +10씩 해줘야하는건가;;? -->
					  
					  <c:forEach var="block" begin="1" end="${pagination.rangeCnt }" step="1">
					  
					  
					  	<c:forEach var="row" begin="${pagination.startIndex}" end="${pagination.pageSize}" step="1" items="${list}">
					  			
					  			<tr>
					  				<td>${row.num}</td>
									<td><a href="scView?num=${row.num}">${row.title}</a></td>
									<td>${row.name}</td>
									<td>${row.wdate}</td>
									<td>${row.cnt}</td>
					  			</tr>
					  		
					  	</c:forEach>
					  
					  </c:forEach>
					  
					
				</table>
				
					<div style="margin-top:20px">
                    <c:if test="${pagination.curRange ne 1 }">
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    </c:if>
                    <c:if test="${pagination.curPage ne 1}">
                        <a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  pagination.curPage}">
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
                    </c:if>
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
                    </c:if>
                	</div>
                	<script type="text/javascript">
                		function fn_paging(curPage) {
                		location.href = "scList?curPage=" + curPage;
                		}
                	</script>
                	
                	<div>
                    	총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } /
                    	현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } /
                    	총 블럭 수 : ${pagination.rangeCnt }
                	</div>
            
				<input type="button" value="글쓰기" style="float:right" onclick="location.href='scWrite'">
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