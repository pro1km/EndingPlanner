<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ending Planner</title>
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$("#logout").click(function() {
		alert("로그아웃 되었습니다.");
	});
</script>
</head>
<body>
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
						<li><a href="logout" id="logout">로그아웃</a></li>
						<li><a href="/mypage">마이페이지</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<a href="/" class="logo"><img src="../images/logo.png" alt="logo">
			<p class="logo_text">
				ENDING<br>PLANNER
			</p></a>
		<div class="head_menu">
			<ul class="menu">
				<li><a href="/intro">소개</a></li>
				<li><a href="/make">제작</a></li>
				<li><a href="${pageContext.request.contextPath}/memory/list">전시관</a></li>
				<li><a href="${pageContext.request.contextPath}/notice/list">공지사항</a></li>
			</ul>
		</div>
	</div>
</body>
</html>