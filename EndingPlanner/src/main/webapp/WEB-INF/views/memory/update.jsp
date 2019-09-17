<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>추모글 작성하기</title>
<link rel="stylesheet" href="../css/memory.css">
<link rel="stylesheet" href="css/header.css">
</head>
 <body>
  <div id="wrap">
    <div class="header">
       <div class="title">
          <div class="titletext">사이버 추모관</div>
      </div>
    </div>
    
    <form action="update" method="post" enctype="multipart/form-data">
    
    <table frame="hsides" rules="all" class="write_table">
        <%-- <tr class="wr_tr1">
           <td class="wr_td1"><span class="wr_text">작성자</span></td>
           <td><span class="wr_text2"><input type="hidden" name="writer" value="${sessionScope.user}"></span></td>
        </tr> --%>
        <input type="hidden" name="memid" value="${memory.memid}">
         <%-- value를 ${sessionScope.user}로 바꿔줘야 함 --%>
        <input type="hidden" name="writer" value="${memory.writer}">
        <tr class="wr_tr1">
           <td><span class="wr_text">제목</span></td>
           <td><input type="text" name="title" value="${memory.title}" placeholder="목록에 보여질 제목을 입력하시길 바랍니다." class="wr_name"></td>
        </tr>
        <tr>
           <td><span class="wr_text">사진</span></td>
           <td>
               <div class="wr_upload">
               <!-- <label for="wr_file" class="wr_fileup">첨부파일</label> -->
               <input type="file" name="file" value="${memory.picture}" id="wr_file" multiple>
            </div>
           </td>
        </tr>
        <tr>
           <td><span class="wr_text">내용</span></td>
           <td><textarea name="content" placeholder="내용을 입력하세요" class="wr_textarea">${memory.content}</textarea></td>
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