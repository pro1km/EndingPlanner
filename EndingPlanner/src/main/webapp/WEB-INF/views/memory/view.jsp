<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사이버 추모관</title>
<link rel="stylesheet" href="<c:url value='../css/memory.css' />" />
<link rel="stylesheet" href="css/header.css">
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function del(){
	alert("삭제하시겠습니까?");
	return true;
}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
	var xhttp = new XMLHttpRequest();

	$(document)
			.ready(
					function() {
						//댓글 생성
						$(document)
								.on(
										'submit',
										'#addCom',
										function(e) {
											e.preventDefault();
											var actionUrl = $(this).attr(
													'action');
											var formData = $(this).serialize(); //form 안의 데이터를 양식으로 만듦	
											//console.log(formData);

											$.ajax({
														type : 'post',
														url : actionUrl,
														data : formData,
														dataType : 'json',
														success : function(data) {
															//console.log(data);
															var result = data.result;
															
															if (result.success) {

																var commentList = document
																		.getElementById('comment_list');

																var writer = document
																		.getElementById('writer').value;
																//console.log(writer);
																var content = document
																		.getElementById('content').value;
																//console.log(content);
																
																alert(result.message); 

																commentList.innerHTML += "<div class=\"comment\"><div class=\"c_writerbox\"><div class=\"c_writer\">작성자 |</div><div class=\"c_writer2\">";
																commentList.innerHTML +=  writer;    
																commentList.innerHTML += "</div><div class=\"regdate\">작성일 |</div><div class=\"regdate2\">작성일</div></div><div class=\"c_commentbox\">";
																commentList.innerHTML += content;
																commentList.innerHTML += "<a href=\"delComment?comid=${comment.comid}\"class=\"delComment\">삭제</a></div></div>";
																
																location.reload();

															} else {

															}
														}
													});
										});

						//책장 삭제
						//$(document).click()으로 하면 안됨
						$(document).on('click', '.delComment', function(e) {
							e.preventDefault();
							var actionUrl = $(this).attr('href');

							$.ajax({
								type : 'post',
								url : actionUrl,
								dataType : 'json',
								success : function(data) {
									console.log(data);
									var result = data.result;
									alert(result.message);

									if (result.success) {
										location.reload();
									} else {

									}

								}
							});
						});

					}); //전체 닫는 태그
</script>

</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="title">
				<div class="titletext">사이버 추모관</div>
			</div>
		</div>
		<div class="contents">
			<div class="c_box1">
				<div class="c_box2">
					<div class="c_c_text1">- ${memory.writer} 님 게시글 입니다.</div>
					<img src="${pageContext.request.contextPath}/uploadPath/${memory.picture}" class="c_c_box1">
				</div>
				<div class="c_box3">
					<div class="c_c_text2">${memory.content}</div>
				</div>
				<c:choose>
					<c:when test="${sessionScope.member eq memory.id}">
						<div class="update"><a href="update?memid=${memory.memid}">수정</a></div>
						<div class="delete"><a href="delete?memid=${memory.memid}"  onclick="del()">삭제</a></div>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="c_box4">
				<div class="letter">
					<div class="letter_logo"></div>
					<div class="letter_text">하늘 편지</div>
				</div>

				<form id="addCom" name="view_form"
					action="${pageContext.request.contextPath}/memory/addComment"
					method="post">
					<div class="form_box">
						<div class="writer">
							<%-- <input type="hidden" name="comid" value="${comment.comid}" /> --%>
							<input type="hidden" name="memid" value="${memory.memid}" /> <span
								class="c_wr_text">작성자 : </span> <input type="text" id="writer"
								name="writer" placeholder=" 작성자명" class="c_wr_name" required>
						</div>
						<div class="write_box">
							<textarea name="content" id="content" placeholder="내용을 입력하세요"
								class="c_wr_textarea" required></textarea>
							<button type="submit" class="wr_uplowd">등록</button>
						</div>
					</div>
				</form>
				<div id="comment_list">
					<c:choose>
						<c:when test="${comList.size() >0}">
							<c:forEach var="comment" items="${comList}">
							
								<div class="comment">
									<div class="c_writerbox">
										<div class="c_writer">작성자 |</div>
										<div id="writer" class="c_writer2"> ${comment.writer}</div>
										<div class="regdate">작성일 |</div>
										<div class="regdate2"><fmt:formatDate value="${comment.regdate}"
											pattern="yyyy-MM-dd HH:mm:ss" /></div>
									</div>

									<div class="c_commentbox">${comment.content}
									<a href="delComment?comid=${comment.comid}"
											class="delComment">삭제</a>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise><div class="otherwise">작성된 댓글이 없습니다.</div></c:otherwise>
					</c:choose>
				</div>
				<a href="list"><button type="button" class="wr_back2">목록</button></a>
			</div>
		</div>
	</div>

</body>
</html>
<%@ include file="../footer.jsp"%>
