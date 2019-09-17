<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="<c:url value='../css/notice.css' />" />
<link rel="stylesheet" href="css/header.css">

</head>
<body>
	<div class="header">
		<div class="title">
			<div class="titletext1">NOTICE</div>
			<div class="titletext2">공지사항</div>
		</div>
	</div>

	<div id="wrap">
		<c:choose>
			<c:when test="${list.size() >0}">
				<table>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성시간</th>
						<th>조회수</th>
					</tr>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.noticeid}</td>
							<td><a href="view?noticeid=${item.noticeid}" class="ho">${item.title}</a></td>
							<td>관리자</td>
							<td><fmt:formatDate value="${item.regdate}"
											pattern="yyyy-MM-dd" /></td>
							<td>${item.views}</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>작성된 공지가 없습니다.</c:otherwise>
		</c:choose>



		<div class="notice_footer">
			<a href="#" style="font-weight:bold">[1]</a>
		</div>

	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>