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
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">


<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
</head>
<body>
<!--header start here-->
<%@ include file="/WEB-INF/common/top.jsp"%>
 <!---pop-up-box---->
					  <script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!---//pop-up-box---->


<!--work start here-->
<div class="work">
	<div class="container">
 	   	         	               <h3>상영중인 영화</h3><br>
		<!-- 1단 시작 -->
		<div class="row work-row">

		<!-- 이미지 시작 -->
			<a href="#small-dialog1" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/one.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog1" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/one.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>
		<!-- 1번째 이미지 끝 -->

			<a href="#small-dialog2" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/two.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog2" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/two.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

		<!-- 2번째 이미지 끝 -->
			<a href="#small-dialog3" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/three.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog3" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/three.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>


			<div class="clearfix"> </div> 

		</div>

		<!-- 1단 끝 -->

		<div class="row work-row1">

			<a href="#small-dialog4" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/four.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog4" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/four.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

			<a href="#small-dialog5" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/five.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog5" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/five.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

			<a href="#small-dialog6" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/six.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>영화제목1</h3>
					        <p>영화정보(등급/상영시간/감독/배우 등)<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog6" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/six.jpg"/>
					<p>상세한 영화정보 + 스토리</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>
		</div>
		
					<div class="clearfix"> </div>
					
				</div>
				
			</div>
		</div>
	</div>
</div>
<!--contact start here-->
 <div class="contact">
 	   <div class="container">
 	   	         <div class="contact-main">
 	   	         	               <h3>시네마 정보</h3>
 	   	         	              <div class="row contact-top">
 	   	         	              	       <div class="col-md-4 contact-left">
 	   	         	              	       	           <h4> 평점/리뷰  <input type="image" src="images/plus.jpg" width="20" height="20" onclick="location.href='2.html'"></h4>
 	   	         	              	       	       <ul> 
 	   	         	              	       	           <li><a href="#">리뷰1</a></li>
 	   	         	              	       	           <li><a href="#">리뷰2</a></li>
 	   	         	              	       	           <li><a href="#">리뷰3</a></li>
 	   	         	              	       	           <li><a href="#">리뷰4</a></li>
 	   	         	              	       	      </ul>
 	   	         	              	       </div>
 	   	         	              	       <div class="col-md-4 contact-left">
 	   	         	              	       	          <h4>공지/뉴스  <input type="image" src="images/plus.jpg" width="20" height="20" onclick="location.href='5-2.html'"></h4>
 	   	         	              	       	       <ul> 
 	   	         	              	       	           <li><a href="#">공지1</a></li>
 	   	         	              	       	           <li><a href="#">공지2</a></li>
 	   	         	              	       	           <li><a href="#">공지3</a></li>
 	   	         	              	       	           <li><a href="#">공지4</a></li>
 	   	         	              	       	      </ul>
 	   	         	              	       </div>
 	   	         	              	        <div class="col-md-4 contact-left">
 	   	         	              	       	          <h4>오시는 길  <input type="image" src="images/plus.jpg" width="20" height="20" onclick="location.href='contactUs'"></h4>
 	   	         	              	       	         <input type="image" src="images/place.jpg" width="350" height="210"> 간략한 주소 기재
 	   	         	              	       </div>
 	   	         	              </div>
 	   	         </div>
 	   </div>
 </div>
 <!--footer start here-->
<%@ include file="/WEB-INF/common/bottom.jsp"%>
	</body>
</html>