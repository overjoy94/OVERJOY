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

<!--header end here-->
 <%@ include file="/WEB-INF/common/top.jsp"%>
<!--work us start here-->
<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<div class="col-md-3 work-us-left">

				<%@ include file="/WEB-INF/views/etc/5-left.jsp" %>
			</div>

			<div class="col-md-9 work-us-left bt-ft-txt-css">
				<h3><u>공지사항 등록하기</u></h3>
				<br>
				<div class="col-md-9 work-us-left">
	<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-s6z2{text-align:center}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-buh4{background-color:#f9f9f9;text-align:left;vertical-align:top}
.tg .tg-spn1{background-color:#f9f9f9;text-align:center}
.tg .tg-mrzz{background-color:#f9f9f9;text-align:left}
.tg .tg-s268{text-align:left}
.tg .tg-0lax{text-align:left;vertical-align:top}
.tg .tg-dzk6{background-color:#f9f9f9;text-align:center;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 780px">
<colgroup>
<col style="width: 121px">
<col style="width: 659px">
</colgroup>
  <tr>
    <th class="tg-s6z2">분 류</th>
    <th class="tg-s268">
	<select name="notice">
    <option value="" selected="selected">분류선택</option>
    <option value="시스템점검">시스템점검</option>
    <option value="극장" >극장</option>
    <option value="기타">기타</option>
</select>
	</th>
  </tr>
  <tr>
    <td class="tg-spn1">작성자</td>
    <td class="tg-mrzz"><input type="text" name="writer" style="width:200px;"></td>
  </tr>
  <tr>
    <td class="tg-baqh">제 목</td>
    <td class="tg-0lax"><input type="text" name="subject" style="width:600px;"></td>
  </tr>
  <tr>
    <td class="tg-dzk6">내 용</td>
    <td class="tg-buh4"><textarea name="content" cols="40" rows="8" ></textarea></td>
  </tr>
</table>
<br>
<input type="submit" value="올리기" style="position: absolute; right: 0;">
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