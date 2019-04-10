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
				<h3><u>글 보기</u></h3>
				<br>
				<div class="col-md-9 work-us-left">
					<form name="form1" method="post" action="scInsert">
					
					
					<table border="1">
						<tr>
							<td>
								제목 <input name="title" id="title" placeholder="제목을 입력해주세요.">
							</td>
						</tr>
						<tr>
							<td>
								내용 <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력해주세요."></textarea>
							</td>
						</tr>
						<tr>
							<td>
								아이디 <input name="name" id="name" value="${sid }" readonly="readonly">
							</td>
						</tr>
					</table>
					
					
					<input type="button" value="취소" onclick="history.back(-1);">
					<input type="submit" value="확인">
					</form>
				</div>
			</div>

		  <div class="clearfix"> </div>
		</div>
	</div>
</div>


<!--work us grid end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>