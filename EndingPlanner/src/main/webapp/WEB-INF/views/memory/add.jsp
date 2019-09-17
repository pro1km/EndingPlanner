<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>추모글 작성하기</title>
<link rel="stylesheet" href="../css/memory.css">
<link rel="stylesheet" href="css/header.css">
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function check() {
		var writer = $("#writer").val();
		var title = $("#title").val();
		var file = $("#wr_file").val();
		var dis = $("#wr_textarea").val();

		if (!writer) {
			alert("작성자를 입력해주세요.");
			$('#writer').focus();
			return false;
		}else if (!title) {
			alert("제목 입력해주세요.");
			$('#title').focus();
			return false;
		}else if (!file) {
			alert("파일을 넣어주세요.");
			return false;
		}else if (!dis) {
			alert("내용을 입력해주세요.");
			$('#wr_textarea').focus();
			return false;
		}else{
			alert("글이 작성되었습니다.");
			return true;
		}
	}
</script>
</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="title">
				<div class="titletext">사이버 추모관</div>
			</div>
		</div>
		<form action="add" method="post" enctype="multipart/form-data"
			onsubmit="return check()">
			<table frame="hsides" rules="all" class="write_table">
				<tr class="wr_tr1">
					<td class="wr_td1"><label for="writer"><span
							class="wr_text">작성자</span></label></td>
					<td><span class="wr_text2"><input id="writer"
							name="writer" class="wr_text3" placeholder="작성자를 입력하세요."></span></td>
				</tr>
				<tr class="wr_tr1">
					<td><label for="title"><span class="wr_text">제목</span></label></td>
					<td><input type="text" id="title" name="title"
						placeholder="목록에 보여질 제목을 입력하세요." class="wr_name"></td>
				</tr>
				<tr>
					<td><label for="wr_file"><span class="wr_text">사진</span></label></td>
					<td>
						<div class="wr_upload">
							<!-- <label for="wr_file" class="wr_fileup">첨부파일</label> -->
							<input type="file" name="file" id="wr_file">
						</div>
					</td>
				</tr>
				<tr>
					<td><label for="wr_textarea"><span class="wr_text">내용</span></label></td>
					<td><textarea name="content" placeholder="내용을 입력하세요"
							class="wr_textarea" id="wr_textarea"></textarea></td>
						
				</tr>
			</table>
				<input type="hidden" name="id" value="${sessionScope.member}">
			<div class="writefooter">
				<ul class="wr_move">
					<li><a href="list"><button type="button" class="wr_back">뒤로가기</button></a></li>
					<li><input type="submit" class="wr_add" value="작성하기"></li>
				</ul>

			</div>
		</form>
	</div>
</body>
</html>
<%@ include file="../footer.jsp" %>