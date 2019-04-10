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

				<%@ include file="/WEB-INF/views/etc/5-left.jsp" %>
			</div>

			<div class="col-md-9 work-us-left bt-ft-txt-css">
				<h3><u>공지/뉴스</u></h3>
				영화관의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.<br>
				<div class="col-md-9 work-us-left">
				<input type="text" name="#" placeholder="검색어를 입력하세요." style="width:200px;"><input type="submit" value="검색"><br>


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-uys7{border-color:inherit;text-align:center}
.tg .tg-aj9k{background-color:#f9f9f9;border-color:inherit;text-align:center}
.tg .tg-dzk6{background-color:#f9f9f9;text-align:center;vertical-align:top}
.tg .tg-abip{background-color:#f9f9f9;border-color:inherit;text-align:center;vertical-align:top}
</style>


<table class="tg" style="undefined;table-layout: fixed; width: 790px">
<colgroup>
<col style="width: 100px">
<col style="width: 100px">
<col style="width: 360px">
<col style="width: 130px">
<col style="width: 100px">
</colgroup>
  <tr>
    <th class="tg-uys7">번 호</th>
    <th class="tg-uys7">구 분</th>
    <th class="tg-uys7">제 목</th>
    <th class="tg-baqh">등 록 일 자</th>
    <th class="tg-c3ow">조 회 수</th>
  </tr>
  <tr>
    <td class="tg-aj9k"></td>
    <td class="tg-aj9k"></td>
    <td class="tg-aj9k"></td>
    <td class="tg-dzk6"></td>
    <td class="tg-abip"></td>
  </tr>
  <tr>
    <td class="tg-uys7"></td>
    <td class="tg-uys7"></td>
    <td class="tg-uys7"></td>
    <td class="tg-baqh"></td>
    <td class="tg-c3ow"></td>
  </tr>
</table>


				<input type="button" value="글쓰기" style="position: absolute; right: 0;" onclick="location.href='5-2-1.jsp'">
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