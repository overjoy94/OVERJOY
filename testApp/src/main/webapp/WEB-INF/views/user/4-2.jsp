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
			<div class="col-md-3 work-us-left">


				<h3>무비로그</h3>
				<br>
						  	   <div class="header-main">
					 <div class="menu-left"> 
						<ul class="res">
		  					<li><a href="4-1.jsp">내가 본 영화</a></li> <br>
		  	              	<li><a href="4-2.jsp">무비 다이어리</a></li> <br>

		  				</ul>

						<span class="ver-line"></span>
					 </div> 					 
					 </div> 
			</div>

			<div class="col-md-9 work-us-left">
				<div class="bt-ft-txt-css">
				<h3><u>무비 다이어리</u></h3> 

				<div style="float: right; margin-right:260px">
					<select>
							<option value="" selected="selected">전체</option>
							<option value="2014">2014</option>
							<option value="2018">2018</option>
					</select>
						<input type="button" value="GO" onclick="location.href='2.jsp'"> 
				</div>

								
				<hr style="border: 1px solid black; width:820px; float:left; margin-left:0px">


						<div class="col-md-9 movie-list" style="border:0px solid black; padding:15px">
						<h2>2018.08.19 (일) 13:10 ~ 15:11 </h2>
						<input type="button" value="삭제" style="float:right; margin-right:20px">
						<div class="col-md-3"><img src="images/one.jpg" width="185" height="260" /></div>
						<div class="col-md-9">
							<!-- 디비 값 전달 받기-->
							<p style="font-size:2em;" >목격자</p>
							<p style="font-size:1em;"> 
							
							CGV천안 8관 8층 <br>
							홍길동(누구와 봤는 지)
							</p>
							
							
							<span style="float:right">
							<!-- 년월일 디비에서 값 받아서 출력하기-->
							<input type="text" value="2019.02.12 (화) 04:17 작성" style="border:0px" >
							<input type="button" value="수정하기" onclick="location.href='4-2-2.jsp'" > 
							</span>
						</div>

						<textarea name = "" ROWS="5" COLS="25"  style="margin-top:10px; margin-left:15px;width : 750px; resize:none; display:inline-block" readonly >어떻게 영화를 보셨나요?
						
						</textarea> 



				

					</div>

				<hr style="border: 1px solid black; width:820px; float:left; margin-left:0px">

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