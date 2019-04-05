/*// 이메일
$(document).ready(function() {

	// 이메일 domain선택 selectBox
	$('#em_option').change(function() {
		$("#em_option option:selected").each(function() {
			// 직접입력일 경우
			if ($(this).val() == 'self') {
				$("#em2").val(''); // textBox값 초기화
				$("#em2").attr("disabled", false); // textBox 활성화
			}
			else if ($(this).val() == 'select') {
				// 선택(초기값)일 경우
				$("#em2 ").val(''); // textBox값 초기화
				$("#em2 ").attr("disabled", false); // textBox 활성화
			}
			else {
				$("#em2").val($(this).text()); // selectBox에서 선택한 값을
													// textBox에 입력
				$("#em2").attr("disabled", true); // textBox 비활성화
			}
		});
	});
});
*/
// select textsend(회원가입/회원정보변경 email)
function checkemailaddy() {
	if (regist.em_option.value == 'edit') {
		regist.em2.readOnly = false;
		regist.em2.value = '';
		regist.em2.focus();
	} else {
		regist.em2.readOnly = true;
		regist.em2.value = regist.em_option.value;
	}
}

// 아이디 중복 여부를 판단
/*
 * function openConfirmId(regist){ // 아이디를 입력했는지 검사 if(regist.id.value == ""){
 * alert("아이디를 입력하세요"); return; } // url과 사용자 입력 id를 조합합니다. url =
 * "/memberShip/logon/confirmId.do?id="+regist.id.value; // 새로운 윈도우를 엽니다.
 * open(url, "confirm", "toolbar=no, location=no,
 * status=no,scrollbars=no,resizable=no,width=550,height=200"); }
 */

// 회원 가입 버튼
/*
 * $(document).ready(function(){ $('#registBtn').on('click', function(){
 * location.href="userInsert" location.href="loginForm" // 로그인 화면 }); //end on
 * });
 */

// 회원가입 submit return funtion
function regist_check() {
	
	// var userid = $("#userid").val();

	return true;

	/*
	 * var name = document.getElementById("uname").value; var id =
	 * document.getElementById("uid").value; var pw =
	 * document.getElementById("upw").value; var pw2 =
	 * document.getElementById("upw2").value; var em1 =
	 * document.getElementById("em1").value; var em2 =
	 * document.getElementById("em2").value; var pwq =
	 * document.getElementById("pwq").value; var pwa =
	 * document.getElementById("pwa").value; var p1 =
	 * document.getElementById("phone1").value; var p2 =
	 * document.getElementById("phone2").value; var p3 =
	 * document.getElementById("phone3").value; var zp1 =
	 * document.getElementById("zphone1").value; var zp2 =
	 * document.getElementById("zphone2").value; var zp3 =
	 * document.getElementById("zphone3").value; var adr1 =
	 * document.getElementById("address1").value; var adr2 =
	 * document.getElementById("address2").value; var y =
	 * document.getElementById("YEAR").value; var m =
	 * document.getElementById("MONTH").value; var d =
	 * document.getElementById("DAY").value; // var s =
	 * document.getElementById("sex").value;
	 * 
	 * var s = $("input[type=radio][name=sex]:checked").val();
	 */

	/*
	 * var name = document.getElementById("uname").value; var id =
	 * document.getElementById("uid").value; var password =
	 * document.getElementById("upw").value; var pw2 =
	 * document.getElementById("upw2").value; var email =
	 * document.getElementById("em1").value; var em2 =
	 * document.getElementById("em2").value; var password_q =
	 * document.getElementById("pwq").value; var password_a =
	 * document.getElementById("pwa").value; var phone =
	 * document.getElementById("phone1").value; var p2 =
	 * document.getElementById("phone2").value; var p3 =
	 * document.getElementById("phone3").value; var phone_zip =
	 * document.getElementById("zphone1").value; var zp2 =
	 * document.getElementById("zphone2").value; var zp3 =
	 * document.getElementById("zphone3").value; var address =
	 * document.getElementById("address2").value; var adr2 =
	 * document.getElementById("address2").value; var y =
	 * document.getElementById("YEAR").value; var m =
	 * document.getElementById("MONTH").value; var d =
	 * document.getElementById("DAY").value; var birth ="1994-12-31";
	 * 
	 * var sex = document.getElementById("sex").value; var sex = "남";
	 */

	/*
	 * // 이름 유효성 검사 if ( name == "" ) { alert("이름을 입력하지 않았습니다."); return false; }
	 *  // 한글만 허용 (글자수제한) if(!name.match(/^[가-힣]{2,4}$/)) { alert("이름은 한글만
	 * 가능합니다.") document.regist.uname.focus() document.regist.uname.select()
	 * return false; }
	 * 
	 *  // 아이디 유효성 검사 if ( id == "" ) { alert("아이디를 입력하지 않았습니다."); return false; }
	 *  // 영문소문자, 숫자만 허용 for (i = 0; i < id.length; i++) { ch = id.charAt(i) if
	 * (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' &&
	 * ch <= 'Z')) { alert("아이디는 대소문자, 숫자만 입력가능합니다.")
	 * document.regist.uid.focus() document.regist.uid.select() return false; } }
	 * 
	 * //아이디 길이 (4~16자) if (id.length<4 || id.length>16) { alert("아이디를 4~16자까지
	 * 입력해주세요.") document.regist.uid.focus() document.regist.uid.select() return
	 * false; }
	 * 
	 * //비밀번호 유효성 검사 if (pw == "") { alert("비밀번호를 입력하지 않았습니다.")
	 * document.regist.upw.focus() return false;
	 * 
	 * //아이디와 같지않게 } if (pw == id) { alert("아이디와 비밀번호가 같습니다.")
	 * document.regist.upw.focus() return false; }
	 * 
	 * //비밀번호 길이 (8~16자) if (pw.length<8 || pw.length>16) { alert("비밀번호를
	 * 8~16자까지 입력해주세요.") document.regist.upw.focus()
	 * document.regist.upw.select() return false; }
	 * 
	 * //문자,숫자,특문 포함
	 * if(!pw.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
	 * alert("비밀번호는 문자, 숫자, 특수문자를 포함해야 합니다.") document.regist.upw.focus()
	 * document.regist.upw.select() return false; }
	 * 
	 * //pw1와 pw2 일치여부 if (pw != pw2) { alert("비밀번호가 일치하지 않습니다") pw2 = ""
	 * document.regist.upw2.focus() document.regist.upw2.select() return false; }
	 * 
	 * 
	 * 
	 * //이메일 유효성 검사 if (em1 == "" || em2 == "") { alert("이메일을 입력하지 않았습니다.")
	 * document.regist.em1.focus() return false; } //em1 + em2 patten에 의한 검사 var
	 * patten =
	 * /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	 * var em_sum = em1+"@"+em2; if (patten.test(em_sum) === false) { alert("잘못된
	 * 이메일 형식입니다."); document.regist.em1.focus() return false; } // select
	 * function은 top
	 * 
	 * 
	 * 
	 * //비밀번호질문,답변 유효성 검사 if (pwq == "" || pwa == "") { alert("비밀번호찾기 질문,답변을 하지
	 * 않았습니다.") document.regist.pwa.focus() return false; }
	 * 
	 * //답변한글만 (1~30자) if(!pwa.match(/^[가-힣]{1,30}$/)) { alert("비밀번호찾기 답변은 한글
	 * 30자이내 입력해주세요.") document.regist.pwa.focus() document.regist.pwa.select()
	 * return false; }
	 * 
	 * //답변 공백 제한 if (pwa.indexOf(" ") >= 0) { alert("비밀번호찾기 답변은 공백을 사용할 수
	 * 없습니다.") document.regist.pwa.focus() document.regist.pwa.select() return
	 * false; }
	 * 
	 * 
	 * 
	 * //휴대폰번호, 자택연락처 유효성 검사 if (p1 == "" || p2 == "" || p3 == "") { alert("휴대폰
	 * 번호를 입력해주세요.") document.regist.phone1.focus() return false; }
	 * 
	 * 
	 * 
	 * //if (zp1 == "" || zp2 == "" || zp3 == "") { // alert("자택연락처를 입력해주세요.") //
	 * document.regist.phone1.focus() // return false; //} // 자택연락처는 null 가능함,
	 * 대신 숫자랑 공백X
	 * 
	 * var p_sum=p1+p2+p3; var zp_sum=zp1+zp2+zp3; //번호 공백 제한 if
	 * (p_sum.indexOf(" ") >= 0 | zp_sum.indexOf(" ") >= 0) { alert("휴대폰/자택연락처는
	 * 공백을 사용할 수 없습니다.") document.regist.phone1.focus()
	 * document.regist.phone1.select() return false; }
	 * 
	 * //번호는 숫자만 if(!p_sum.match(/^[0-9]{1,20}$/) ||
	 * !zp_sum.match(/^[0-9]{1,20}$/) ) { alert("휴대폰/자택연락처는 숫자만 사용해주세요.")
	 * document.regist.phone1.focus() document.regist.phone1.select() return
	 * false; }
	 * 
	 * 
	 * 
	 * //주소 유효성 검사 //주소 if (adr1 == "" ) { alert("주소를 입력해주세요.")
	 * document.regist.address1.focus() return false; }
	 * 
	 * 
	 * //생년월일 유효성 검사 if (y == "" | m == "" | d == "") { alert("생년월일을 선택해주세요.")
	 * document.regist.YEAR.focus() return false; }
	 * 
	 * 완료
	 */
	// 성별 유효성 검사

	style = "text-align:right"
}

// 다음 주소
function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 조합된 참고항목을 해당 필드에 넣는다.
				// document.getElementById("sample6_extraAddress").value =
				// extraAddr;

			} else {
				// document.getElementById("sample6_extraAddress").value = '';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById("postcode").value = data.zonecode;
			document.getElementById("address").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("detailAddress").focus();
		}
	}).open();
}
