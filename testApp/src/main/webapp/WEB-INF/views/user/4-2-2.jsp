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

			<div class="col-md-9 work-us-left bt-ft-txt-css">

				<h3><u>리뷰 수정</u></h3> 
				<div style="float: right; margin-right:260px">
					<select>
							<option value="" selected="selected">전체</option>
							<option value="2014">2014</option>
							<option value="2018">2018</option>
					</select>
						<input type="button" value="GO" onclick="location.href='2.jsp'"> 
				</div>

				<div><table border="1" style="width : 820px;margin-top:80px" >
					<tr>
						<td>
							<!-- 제목 값 받아서 고정시키기 -->
							<input type="text" value="영화제목" style="width : 800px; border:0">
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" style="width : 800px; border:0" placeholder="누구와 함께 보셨나요?">
						</td>
					</tr>
					<tr>
						<td>
						<textarea id="" name="" ROWS="5" COLS="25" placeholder="어떻게 영화를 보셨나요?" style="width:800px; height:100px;resize:none; border:0"></textarea>

						</td>
					</tr>
					<tr style="float:right; padding-right:20px; padding-top:0px">
						<td style="border:0">
							<input type="button" value="취소" onclick="javascript:history.back()" style="margin-top:0px"> 
							<input type="button" value="게시" onclick="location.href='4-2.jsp'" style="margin-top:0px">
						</td>
					</tr>


				</table></div>

			</div>
				

			

		  
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--work us end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>