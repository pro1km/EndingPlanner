<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사이버 추모관</title>
<link rel="stylesheet" href="<c:url value='../css/memory.css' />" />
<link rel="stylesheet" href="css/header.css">
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
/* window.onload =function(){
    var userName = "${member}";
	
	if(!userName){
		alert("로그인 후 이용해주시길 바랍니다.");
		location.href = '/login';
	}
} */
</script>
</head>
<body>
  <div id="wrap"> 
        <div class="header">
                <div class="title">
                  <div class="titletext">사이버 추모관</div>
                 </div>
             </div>
               <div class="review_box1">
               <c:choose>
               <c:when test="${list.size() >0}">
               <c:forEach var="item" items="${list}">
               <div class="review_box2">
                     <a href="view?memid=${item.memid}" onclick="check()">
                     <img src="${pageContext.request.contextPath}/uploadPath/${item.picture}" class="review_imgbox1"></a>
                     <div class="review_imgtext1">${item.writer} 님</div>
                     <div class="review_imgtext2">${item.title}</div>
                 </div>
               </c:forEach>
               </c:when>
               <c:otherwise>
              	추모글이 없습니다.
               </c:otherwise>
               </c:choose>               
               <a href="add"><button type="submit" class="write">작성하기</button></a>
             </div>
             
             <div class="review_footer">${pager.pagination}</div>
    </div>      
    </body>
</html>

<%@ include file="../footer.jsp" %>