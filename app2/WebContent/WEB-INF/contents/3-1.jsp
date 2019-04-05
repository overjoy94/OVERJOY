<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title> Photographica-Final Bootstrap Website Template| Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<!--js-->
<!-- <script src="js/jquery.min.js"></script> @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--> 
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"  media="all"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 

<script type="text/javascript" src="js/3js.js"></script>



<!-- //end-smoth-scrolling -->
</head>
<body>

<c:if test="${empty sessionId }">
	<script>
		alert("로그인을 먼저 해주세요.")
		history.go(-1);
	</script>
</c:if>




<!-- <script type="text/javascript">
	function movie_select(){
		alert(document.getElementById("movie_name").value+"를 선택하셨습니다.")
	}
</script> -->


<script>
/* $(document).ready(function(){
	var yyy = $("[name=movie_list]")
	yyy.find("[name=extreme_job]").click(function(){
	     select('extreme_job');
	})
	yyy.find("[name=dragon]").click(function(){
	     select('dragon');
	})
	
}) */

function select_name(){
	alert(event.srcElement.value+" 선택하셨습니다.");
	document.getElementById("movie_name").value = event.srcElement.value; //영화이름 데이터받기
}


	/* $(document).ready(function(){
		var yyy = $("[name=movie_list]")
		yyy.find("[name=extreme_job]").click(function(){
		     select('extreme_job');
		})
		yyy.find("[name=dragon]").click(function(){
		     select('dragon');
		})
		
	})
	var name = "";
	function select(result){
		  var yyy = $("[name=movie_list]")
		  
                   if(result=='extreme_job' ) {			
			  		name=yyy.find("[name=extreme_job]").val();
		   }
                  if(result=='dragon')  {                     
                    name=yyy.find("[name=dragon]").val();
		  }		  
		  document.getElementById("movie_name").value = name;
		  document.getElementById("3-1date").value = yyy.find("[name=3-1date]").val(); 
		  return true;
		 
		  
   	} */
	
	/*  $.ajax({
  	async : true,
  	type: "GET",                 	
  	data: {"movie_name":name, "3-1date":$('#3-1date').val()},
      dataType: "text",
      url: "timeSeat",    
      //contentType:"application/json; charset=UTF-8",
      success: function(data){            	  
    	  alert("성공");
    	
    	  
		}, 
		
		 	 error:function(xhr, status, e){
           	alert("서버 에러"+e); 
		//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)          	
			}, // error
		});    //end ajax  */
   	
   

</script>


 <%@ include file="/WEB-INF/common/top.jsp"%>
 <!--work us start here-->
 <%@ include file="/WEB-INF/contents/3-left.jsp"%>
<!-- DIV -->
			<div class="col-md-9 work-us-left">
				<h3><u>빠른예매</u></h3>
				<br><br><br>
							
					<div class="col-md-6 movie-table bt-ft-txt-css"> <!-- movie-table css /form-->
					
						<form method="get" id="movie_list" name="movie_list" action="timeSeat">
							<table border=1 style="text-align:center;width:1000px">
								<tr>
									<td style="padding:1em" width="20%">영화명</td><td width="10%">날짜</td><td width="20%">시간</td>
								</tr>
								<tr>									
									<td>
										<ul id="name" style="list-style:none;text-align:left">
											<input type="hidden" id="movie_name" name="movie_name" value="1">
											<!-- <li><input type="submit" id="extreme_job" name="extreme_job" value="극한직업" ></li>																					
											<li><input type="submit" id="dragon" name="dragon" value="드래곤 길들이기"></li> -->
											<li><input type="submit" onclick="return select_name()" value="극한직업" ></li>																					
											<li><input type="submit" onclick="return select_name()" value="드래곤 길들이기"></li>
											<li><input type="submit" onclick="return select_name()" value="명량"></li>
											<li><input type="submit" onclick="return select_name()" value="어바웃타임"></li>
											<li><input type="submit" onclick="return select_name()" value="국제시장"><li>
											<li><input type="submit" onclick="return select_name()" value="어벤져스"><li>										
										</ul>						
									</td>
																		
									<td>
									
									<input type="date" id="3-1date" name="3-1date" > <!-- value="${watch_date}" -->
									
									
									
									</td>					
											
									<td>
									
									<c:forEach var="seat" items="${seat}">
										
										<a href="selectSeat?movie_name=${movie_name}&watch_date=${watch_date}&time=${seat.time_start}">${seat.time_start}</a>&nbsp;&nbsp; ${seat.getSeat()}<br>
										<!-- 제목/시간을 입력받아 시간을 눌러 값전달하며  selectSeat -->
									</c:forEach>
									
									</td>
									<%-- <td style="padding:20px">
										<input type="button" id="mtime_1" value="07:00" onclick=""> ${300-seat1}
										<input type="button" id="mtime_2" value="09:20" onclick=""> ${300-seat2}<br>
										<input type="button" id="mtime_3" value="11:40" onclick=""> ${300-seat3}
										<input type="button" id="mtime_4" value="14:00" onclick=""> ${300-seat4}<br>
										<input type="button" id="mtime_5" value="16:20" onclick=""> ${300-seat5}
										<input type="button" id="mtime_6" value="18:40" onclick=""> ${300-seat6}<br>
										<input type="button" id="mtime_7" value="21:00" onclick=""> ${300-seat7}
										<input type="button" id="mtime_8" value="23:20" onclick=""> ${300-seat8}<br>
										<input type="button" id="mtime_9" value="25:40" onclick=""> ${300-seat9}										
									</td> --%>
								</tr>
							</table>
						</form>
					</div>
		  			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--work us end here-->
 <%@ include file="/WEB-INF/common/bottom.jsp"%>
</body>
</html>