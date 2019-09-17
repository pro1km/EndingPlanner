<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>정보수정</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../css/signup.css">

<script language="JavaScript">
	function checkCapsLock(e) {
		var myKeyCode = 0;
		var myShiftKey = false;
		var myMsg = 'Caps Lock 키가 켜져 있습니다.\n\nCaps Lock 키를 끄고 암호를 입력해주시기 바랍니다.';

		if (document.all) {
			myKeyCode = e.keyCode;
			myShiftKey = e.shiftKey;

		} else if (document.layers) {
			myKeyCode = e.which;
			myShiftKey = (myKeyCode == 16) ? true : false;

		} else if (document.getElementById) {
			myKeyCode = e.which;
			myShiftKey = (myKeyCode == 16) ? true : false;

		}

		if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
			alert(myMsg);

		} else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
			alert(myMsg);

		}
	}
</script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<div class="h_wrap">
				<div class="head_box">
					<div class="head_gnb">
						<ul class="gnb">
							<li><a href="../index.html">홈 </a></li>
							<li><a href="login.html">로그인</a></li>
							<li><a href="join.html">회원가입</a></li>
						</ul>
					</div>
					<a href="../index.html" class="logo"><img
						src="../images/logo2.png" alt="logo">
					<p class="logo_text">
							ENDING<br>PLANNER
						</p></a>
					<div class="head_menu">
						<ul class="menu">
							<li><a href="intro.html">소개</a></li>
							<li><a href="make.html">제작</a></li>
							<li><a href="hall.html">전시관</a></li>
							<li><a href="notice.html">공지사항</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="contents">
			<div id="con_wrap">
				<div class="number1">
					<p>1</p>
				</div>
				<div class="line1"></div>
				<div class="number2">
					<p>2</p>
				</div>
				<div class="line1"></div>
				<div class="number3">
					<p>3</p>
				</div>
			</div>
			<div class="t_text">
				<p class="t_text1">약관동의</p>
			</div>
			<div class="t_text">
				<p class="t_text2">정보입력</p>
			</div>
			<div class="t_text">
				<p class="t_text3">가입완료</p>
			</div>
			<!-- header end -->

			<div style="height: 600px;">
				<form name="write_member" action="" method="post">
					<table class="write">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="user_id" maxlength="20" />
								<button class="id_chk" type="submit">중복확인</button> 영문과 숫자를 조합하여
								6~20자 이내로 입력</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="user_pw" maxlength="20" />
								6~20자 이내로 입력</td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="text" name="user_pw2" /> 비밀번호가 일치합니다.</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td class="user_phone"><select name="user_phone">
									<option value="016" selected>016</option>
									<option value="011" selected>011</option>
									<option value="010" selected>010</option>
							</select> - <input type="text" name="user_phone2" maxlength="4"> -
								<input type="text" name="user_phone3" maxlength="4"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="text" name="user_id" maxlength="20" /> @ <select
								name="email">
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.com</option>
							</select></td>
						</tr>
						<tr>
							<td>성별</td>
							<td class="sex"><input type="checkbox" name="man"
								value="man" /> 남성 <input type="checkbox" name="woman"
								value="woman" /> 여성</td>
						</tr>
					</table>
				</form>
			</div>
			<a href="join2.html"><input type="reset" name="reset"
				class="cancel" value="다시 작성" /></a> <a href="join3.html"><input
				type="submit" name="submit" class="ok" value="완 료" /></a>
		</div>
		<!--contents end-->
		<!--footer start-->
		<div id="footer">
			<div class="footer_gnbbox">
				<ul class="footer_gnb">
					<li><a href="index.html">홈 </a></li>
					<li><a href="page/login.html">소개</a></li>
					<li><a href="page/join.html">제작</a></li>
					<li><a href="page/join.html">전시관</a></li>
					<li><a href="page/join.html">공지사항</a></li>
				</ul>
				<p>Ending Planner . 2019 Copyrihgt ⓒ All right reserved.</p>
			</div>
		</div>
		<!--footer end-->
	</div>
</body>
</html>