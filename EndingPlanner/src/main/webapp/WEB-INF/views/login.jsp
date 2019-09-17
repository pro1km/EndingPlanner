<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/login.css">
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	var id_ch = 0;

	function check() {
		var id = $("#log_id").val();
		var pw = $("#log_pw").val();

		if (!id) {
			alert("아이디를 입력해 주세요.");
			$("#log_id").focus();
		} else if (!pw) {
			alert("비밀번호 입력해 주세요.");
			$("#log_pw").focus();
		} else {
			$.ajax({
				url : '/loginOk',
				data : {
					"id" : id,
					"password" : pw
				},
				success : function(data) {
					if (data == 1) {
						alert('로그인 되었습니다.');
						document.getElementById('login_ok').submit();
						id_ch = 1
					} else {
						alert('아이디 또는 비밀번호가 일치하지 않습니다.');
						$('#log_id').val('');
						$('#log_pw').val('');
						$('#log_id').focus();
					}
				}
			})
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
							<c:choose>
								<c:when test="${sessionScope.member eq null}">
									<li><a href="/">홈 </a></li>
									<li><a href="/login">로그인</a></li>
									<li><a href="/agree">회원가입</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/">홈 </a></li>
									<li><a href="logout">로그아웃</a></li>
									<li><a href="/mypage">마이페이지</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<a href="/" class="logo"><img src="../images/logo2.png"
						alt="logo">
						<p class="logo_text">
							ENDING<br>PLANNER
						</p></a>
					<div class="head_menu">
						<ul class="menu">
							<li><a href="/intro">소개</a></li>
							<li><a href="/make">제작</a></li>
							<li><a href="/memory">전시관</a></li>
							<li><a href="/notice">공지사항</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--contents start-->
		<div id="contents">
			<form class="login_wrap" action="login" method="post"
				onsubmit="return false;" id="login_ok">
				<div class="id">
					<label for="log_id"><img src="../images/people.png"
						alt="people"> </label>
					<div class="id_01">
						<input type="text" length="20" id="log_id" name="id"
							placeholder="UserId" maxlength="20" autofocus>
					</div>
				</div>
				<div class="passign">
					<div class="pass">
						<label for="log_pw"> <img src="../images/password.png"
							alt="password">
						</label>
						<div class="id_01">
							<input type="password" length="15" id="log_pw" name="password"
								placeholder="Password" maxlength="20">
						</div>
					</div>
				</div>
				<div class="passign">
					<input class="log_in" type="submit" value="Sign in"
						onclick="check()">
				</div>
				<!-- <p class="forgot">
				Forgot your <a href="#"><span>Username</span></a> or <a href="#"><span>Password?</span></a>
				| <a href="/add">Sign up</a>
			</p> -->
			</form>
		</div>
		<!--contents end-->
	</div>
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

</body>
</html>