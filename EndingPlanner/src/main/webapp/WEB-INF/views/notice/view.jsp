<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <title>ENDINGPLANNER</title>
  <link rel="stylesheet" href="../css/notice.css">
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
      <div class="n_view_box1">
         <div class="n_view_box2">
            <div class="n_view_box3">
               <div class="n_view_content1">
                  제목
               </div>
               <div class="n_view_content2">
                 ${notice.title}
               </div>
            </div>
            <div class="n_view_box4">
               <div class="n_view_content3">
                  <div class="n_view_content3_1">
                     작성자
                  </div>
                  <div class="n_view_content3_2">
                 관리자  
                  </div>
               </div>
               <div class="n_view_content4">
                  <div class="n_view_content4_1">
                     작성일
                  </div>
                  <div class="n_view_content4_2">
                     <fmt:formatDate value="${notice.regdate}"
											pattern="yyyy-MM-dd" />
                  </div>
               </div>
               <div class="n_view_content5">
                  <div class="n_view_content5_1">
                     조회수
                  </div>
                  <div class="n_view_content5_2">
                     ${notice.views}
                  </div>
               </div>
            </div>
            <div class="n_view_box5">
               <div class="n_view_content6">
                  첨부파일
               </div>
            </div>           
         </div>
         <div class="n_view_box6">
            <div class="n_view_content7">
	             ${notice.content}
            </div> 
         </div>
               <a href="list"><button type="submit" class="view_back">목록</button></a>
      </div>
    </div>      
    </body>
</html>
<%@ include file="../footer.jsp" %>