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
			

			<div class="col-md-9 work-us-left" style="margin-left:200px">
				<div class="bt-ft-txt-css">
				<h3><u>영화상세</u></h3> 
				
			<hr style="border: 1px solid black; width:1000px; float:left; margin-left:0px">


				
					<div class="col-md-9 movie-list" style="margin-top:50px">
						<div class="col-md-3"><a href="2-1.html"><img src="images/one.jpg" width="185" height="260" /></a></div>
						<div class="col-md-9" style="margin-top:-50px">
							<p style="font-size:2em;" >목격자</p>
							<p>실관람객수: 10,000명</p>
							<p style="font-size:1em;"> 
							2018.08.19 (일) 13:10 ~ 15:11 <br>
							CGV천안 8관 8층 / 2명 <br>
							<img />별점
							</p>
							
						</div>
	<!--
						<div class="col-md-1">
							 값을 무비다이어리에 전달하여 영화 제목이 자동으로 지정되도록 한다.
							<input type="button" value="무비다이어리쓰기" onclick="location.href='4-2.html'" style="margin-top:180px; margin-left:150px"> 
						</div>
						-->

					</div>

					<!-- 1번쨰 영화 끝 -->
					
				</div>

			</div>
			
			<!-- 내가 본 영화 끝 -->
		  <div class="clearfix"> </div>
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