<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>회원서비스 : 회원가입</title>

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
<script type="text/javascript" src="js/edit_JS.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

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


<script type="text/javascript">
    $(document).ready(function(){
        $('#checkbtn').on('click', 
        		function(){
        			
		        	var uid_pt = $("#userid").val();
		        
		        	
		        	//alert("버튼실행"+uid)
		            $.ajax({
		            	async : false,
		            	type: "POST",                 	
		            	data: {"userid":$('#userid').val()},
    	                dataType: "text",
		                url: "checkID",
		                
		                
		                success: function(data){
		                    if(data == ""){
		                       alert(uid_pt+" 사용가능");
		                    }
		                    else{
		                        alert(uid_pt + " 사용 불가능");
		                    }
                 		}, 
                 		
               		 	 error:function(xhr, status, e){
			               	alert("서버 에러"+e); 
               		//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)          	
               			}, // error
           			});    //end ajax
        		} // function end           			
        );    //end on    
    });// ready end 
</script> 


<!--header start here-->
<%@ include file="/WEB-INF/common/top.jsp" %>
<!--header end here-->
<!--work us start here-->

  


<div class="work-us">
	<div class="container2">
		<div class="work-us-main">
			<%@ include file="/WEB-INF/views/user/1-left.jsp"%>

			<div class="col-md-9 work-us-left">
				<div class="bt-ft-txt-css">
				<h3><u>회원가입</u></h3>
				<br><br><br>

					
					<form:form commandName="userVO" onsubmit="return regist_check();" action="userInsert" name="userVO" method="post">
					   <table width="940" style="padding:5px 0 5px 0; ">
					       <tr>
					         <th>*이름</th>
						     <td><input type="text" name="username" id="username" maxlength="5"></td>
						   </tr>
					       <tr>
					         <th>*아이디</th>
					         <td><input type="text" name="userid" id="userid" maxlength="16">
					          <input type="button" name="checkbtn" id="checkbtn" value="중복체크"></td>

					       </tr>
					       <tr>
					         <th>*비밀번호</th>
					         <td><input type="password" name="password" id="password" maxlength="20"> 대문자와 소문자를 포함한 영어알파벳과 숫자, 특수문자를 포함해주세요</td>
					       </tr>
					       <tr>
					         <th>*비밀번호 확인</th>
					         <td><input type="password" name="password2" id="password2" maxlength="20"></td>
					       </tr>
							 <tr>
															  
							  <th>*이메일</th>
							    <td>
								<input type='text' name="em1" id="em1" size="20" maxlength="16">@
								<input type='text'  name="em2" id="em2" size="20" maxlength="20" >
								  <select name="em_option" id="em_option" onChange="checkemailaddy();">
									 <option value="" selected>선택하세요</option>
									 <option value="naver.com">naver.com</option>
									 <option value="daum.net">daum.net</option>
									 <option value="gmail.com">gmail.com</option>
									 <option value="hanmail.net">hanmail.net</option>
									 <option value="nate.com">nate.com</option>
									 <option value="edit">직접입력</option>
								  </select>
									<script>
										function checkemailaddy() {
											if (userVO.em_option.value == 'edit') {
												userVO.em2.readOnly = false;
										  		userVO.em2.value = '';
										  		userVO.em2.focus();
										  		}
											else {
												userVO.em2.readOnly = true;
												userVO.em2.value = userVO.em_option.value;
												}
											}
									</script>
								</td>
							 </tr> 
					       <tr>
					          <th>*비밀번호 힌트/답변</th>
					          <td><select name="password_q" id="password_q">
							  <option value="" selected>선택하세요</option>
							  <option value="1">졸업한 초등학교 이름은?</option>
							  <option value="2">아버지 성함은?</option>
							  <option value="3">어머니 성함은?</option>
							  <option value="4">어릴 적 내 별명은?</option>
							  <option value="5">가장 아끼는 물건은?</option>
							  <option value="6">좋아하는 동물은?</option>
							  <option value="7">좋아하는 색깔은?</option>
							  <option value="8">좋아하는 음식은?</option>
							</select>
							</td>
							</tr>
							<tr>
							   <th>*비밀번호 답변</th>
							   <td><input type='text' name="password_a" id="password_a" size="35" maxlength="30"></td>
							</tr>
							<tr>
							 <th>*휴대폰 번호</th>
							   <td><input type="text" name="phone1" id="phone1" size="5" maxlength="3"> -
								   <input type="text" name="phone2" id="phone2" size="7" maxlength="4"> -
								   <input type="text" name="phone3" id="phone3" size="7" maxlength="4">
								</td>
							</tr>
							<tr>
							  <th>자택 연락처</th>
							   <td><input type="text" name="zphone1" id="zphone1" size="5" maxlength="3"> -
								   <input type="text" name="zphone2" id="zphone2" size="7" maxlength="4"> -
								   <input type="text" name="zphone3" id="zphone3" size="7" maxlength="4">
							   </td>
							  </tr>
													 <tr>
							   <th>*우편번호</th>
							   <td>								
								<input type="text" id="postcode" name="postcode">
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							   </td>
							 </tr>
							 
							 <tr>
							   <th>주소</th>
							   <td>
								 <input type="text" id="address" name="address" size="30">								 
							   </td>
							 </tr>
							  <tr>
							   <th>상세 주소</th>
							   <td>
								 <input type="text" id="detailAddress" name="detailAddress">								 
							   </td>
							 </tr>
							 <tr>
								<th>*생년월일</th>
								<td>
								<select name="YEAR" id="YEAR" title="년도" value=""></select>    
								<select name="MONTH" id="MONTH" title="월" value=""></select>
								<select name="DAY" id="DAY" title="일" value=""></select>
								</td>
									<script>
										$(document).ready(function(){
											DateBox();
										});    
										function DateBox(){
											var dt = new Date();
											var year = "";
											var com_year = dt.getFullYear();
											$("#YEAR").append("<option value=''>년도</option>");
											for(var y = (com_year-100); y <= (com_year); y++){
												$("#YEAR").append("<option value='"+ y +"'>"+ y + " 년" +"</option>");
											}
											var month;
											$("#MONTH").append("<option value=''>월</option>");
											for(var i = 1; i <= 12; i++){
												$("#MONTH").append("<option value='"+ i +"'>"+ i + " 월" +"</option>");
											}
											var day;
											$("#DAY").append("<option value=''>일</option>");
											for(var j = 1; j <= 31; j++){
												$("#DAY").append("<option value='"+ j +"'>"+ j + " 일" +"</option>");
											}
										}
								</script>
						   </tr> 
						   <tr>
							 <th>*성별</th>
							   <td>
								   <input type="radio" name="sex" id="sex" value="male"> 남&nbsp;&nbsp;
								   <input type="radio" name="sex" id="sex" value="female"> 여
								</td>
							 </tr>
							 
					 
							   
							   <tr>
								 <td colspan="2" align="center">
								   <input type="button" value="취소" action="#">
								   <input type="submit" value="회원가입">

								</td>
							   </tr>
							   </table>

							  <!-- </form> -->
							  </form:form>
				</div>
			</div>

		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--work us end here-->
<!--workus grid start here-->
<%@ include file="/WEB-INF/common/bottom.jsp" %>
	</body>
</html>