<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>홈</title>
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
					        <h3>극한직업</h3>
					        <p>15세 / 이병헌 / 류승룡,이하늬,진선규 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog1" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/one.jpg"/>
					<p>불철주야 달리고 구르지만 실적은 바닥, 급기야 해체 위기를 맞는 마약반! 더 이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 장형사, 마형사, 영호, 재훈까지 4명의 팀원들과 함께 잠복 수사에 나선다. 마약반은 24시간 감시를 위해 범죄조직의 아지트 앞 치킨집을 인수해 위장 창업을 하게 되고, 뜻밖의 절대미각을 지닌 마형사의 숨은 재능으로 치킨집은 일약 맛집으로 입소문이 나기 시작한다. 수사는 뒷전, 치킨장사로 눈코 뜰 새 없이 바빠진 마약반에게 어느 날 절호의 기회가 찾아오는데… 범인을 잡을 것인가, 닭을 잡을 것인가!</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>
		<!-- 1번째 이미지 끝 -->

			<a href="#small-dialog2" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/two.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>드래곤 길들이기</h3>
					        <p>전체 / 딘 데블로이스 / 제이 바루첼, 아메리카 페레라 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog2" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/two.jpg"/>
					<p>영원한 친구 히컵과 투슬리스의 활약으로 사람과 드래곤이 공존하며 평화롭게 살아가는 버크섬. 새로운 드래곤 ‘라이트 퓨어리’를 쫓아간 투슬리스를 찾다가 히컵은 누구도 찾지 못했던 드래곤의 파라다이스 ‘히든월드’를 우연히 발견하게 된다. 하지만 평화도 잠시, 역대 최악의 드래곤 헌터 그리멜의 등장으로 드래곤들의 안전과 버크섬의 평화까지 위협받기 시작하는데…</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

		<!-- 2번째 이미지 끝 -->
			<a href="#small-dialog3" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/three.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>국제시장</h3>
					        <p>12세 / 윤제균 / 황정민,김윤진,오달수 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog3" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/three.jpg"/>
					<p>1950년 한국전쟁을 지나 부산으로 피란 온 ‘덕수’(황정민 분)의 다섯 식구, 전쟁 통에 헤어진 아버지를 대신해야 했던 ‘덕수’는 고모가 운영하는 부산 국제시장의 수입 잡화점 ‘꽃분이네’서 일하며 가족의 생계를 꾸려 나간다. 모두가 어려웠던 그때 그 시절, 남동생의 대학교 입학 등록금을 벌기 위해 이역만리 독일에 광부로 떠난 ‘덕수’는 그곳에서 첫사랑이자 평생의 동반자 ‘영자’(김윤진 분)를 만난다. 그는 가족의 삶의 터전이 되어버린 ‘꽃분이네’ 가게를 지키기 위해 ‘선장’이 되고 싶었던 오랜 꿈을 접고 다시 한번 전쟁이 한창이던 베트남으로 건너가 기술 근로자로 일하게 되는데… 가족을 위해 굳세게 살아온 그때 그 시절, 가장 평범한 아버지의 가장 위대한 이야기가 시작된다!본편에 이은 국제시장 제작기는 제목(""국제시장의 8가지 숨은 그림자"")과 같이, 영화 제작 과정에서 중심이 된 8개의 이야기로 구성되어 있습니다. 1. 특수분장2. CG 효과3. 파독 광부 이야기 (탄광 등등)4. 국제시장 세트장5. 영화 內 등장하는 실존 유명인6. 아역들의 열연7. 흥남부두 촬영 숨은 이야기8. 이산가족 찾기, 배우들의 숨은 노력</p>
					 
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
					        <h3>명량</h3>
					        <p>15세 / 김한민 / 최민식,류승룡,조진웅 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog4" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/four.jpg"/>
					<p>1597년 임진왜란(정확히는 정유재란으로 분류하는 시기이다. 영화 첫 장면에서도 정유재란이라고 나온다.) 6년, 오랜 전쟁으로 인해 혼란이 극에 달한 조선. 무서운 속도로 한양으로 북상하는 왜군에 의해 국가존망의 위기에 처하자 누명을 쓰고 파면 당했던 이순신 장군(최민식)이 삼도수군통제사로 재임명된다. 하지만 그에게 남은 건 전의를 상실한 병사와 두려움에 가득 찬 백성, 그리고 12척의 배뿐. 마지막 희망이었던 거북선마저 불타고 잔혹한 성격과 뛰어난 지략을 지닌 용병 구루시마 미치후사(류승룡)가 왜군 수장으로 나서자 조선은 더욱 술렁인다. 330척에 달하는 왜군의 배가 속속 집결하고 압도적인 수의 열세에 모두가 패배를 직감하는 순간, 이순신 장군은 단 12척의 배를 이끌고 명량 바다를 향해 나서는데…! 12척의 조선 vs 330척의 왜군 역사를 바꾼 위대한 전쟁이 시작된다!</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

			<a href="#small-dialog5" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/five.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>어바웃 타임</h3>
					        <p>15세 / 리차드 커티스 / 도널 글리슨,레이첼 맥아담스 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog5" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/five.jpg"/>
					<p>모태솔로 팀(도널 글리슨 분)은 성인이 된 날, 아버지(빌 나이 분)로부터 놀랄 만한 가문의 비밀을 듣게 된다. 
바로 시간을 되돌릴 수 있는 능력이 있다는 것! 
그것이 비록 히틀러를 죽이거나 여신과 뜨거운 사랑을 할 수는 없지만, 
여자친구는 만들어 줄 순 있으리.. 
꿈을 위해 런던으로 간 팀은 우연히 만난 사랑스러운 여인 메리에게 첫눈에 반하게 된다. 
그녀의 사랑을 얻기 위해 자신의 특별한 능력을 마음껏 발휘하는 팀. 
어설픈 대시, 어색한 웃음은 리와인드! 뜨거웠던 밤은 더욱 뜨겁게 리플레이! 
꿈에 그리던 그녀와 매일매일 최고의 순간을 보낸다.
하지만 그와 그녀의 사랑이 완벽해질수록 팀을 둘러싼 주변 상황들은 미묘하게 엇갈리고, 
예상치 못한 사건들이 여기저기 나타나기 시작하는데… 
어떠한 순간을 다시 살게 된다면, 과연 완벽한 사랑을 이룰 수 있을까?</p>
					 
					<input type="button" value="리뷰보기" onclick="location.href='2.html'">
					<input type="button" value="예매하기" onclick="location.href='ticket'">
					 
				</div>
			</div>

			<a href="#small-dialog6" class="thickbox play-icon popup-with-zoom-anim"><div class="col-md-4 work-column">
				<img src="images/six.jpg" alt="" class="img-cap">
				<div class="caption">
					  <div class="text">
					        <h3>어벤져스</h3>
					        <p>12세 / 조스 웨던 / 로버트 다우니 주니어,마크 러팔로 등<br><br>* 이미지클릭시 상세한정보 /예매하기 *</p>
					  </div>
				</div>
			</div>
			</a>
			<div id="small-dialog6" class="mfp-hide">

				<div class="image-top">
					 
					<img src="images/six.jpg"/>
					<p>쉴드가 세운 암흑 에너지 연구소에서는 테서랙트의 연구가 진행되는 중이었는데, 갑자기 테서랙트가 발동하며 로키가 등장한다.[41] 로키는 쉴드 요원들을 전멸시키고 호크아이, 셀빅을 포함한 일부 요원들을 세뇌하여 자기 부하로 만든 후 테서랙트를 가지고 떠난다. 연구소가 테서랙트의 폭주로 폭발하는 가운데 닉 퓨리와 마리아 힐은 간신히 탈출하고, 퓨리는 슈퍼 히어로들을 소집하는 '어벤져스 프로젝트'를 실행하기로 결정한다.
캡틴 아메리카는 오랜 수면 끝에 깨어나긴 했지만, 자신이 살던 시대와 너무나도 다른 모습에 적응하지 못하다가 퓨리가 임무를 주면서 세상 밖으로 나온다. 토니 스타크는 아크 리액터를 이용한 에너지 사업의 일환으로 페퍼와 함께 스타크 타워 설립을 기념하던 중 콜슨이 와서 토니를 쉴드로 호출한다. 블랙 위도우는 러시아에서 임무를 수행하던 중 콜슨에게서 호크아이가 배신했다는 얘기를 들은 후 임무를 순식간에 끝내고, 브루스 배너를 섭외하러 간다. 배너 박사는 여전히 각국을 떠돌며 도피하는 신세로, 어려운 사람들에게 의료 활동을 펼치면서 헐크를 억누르고 있었다. 그러던 와중 나타샤가 쉴드 요원들과 함께 나타나 그를 설득한다.</p>
					 
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