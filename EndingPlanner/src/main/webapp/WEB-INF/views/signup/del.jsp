<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원탈퇴</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <link rel="stylesheet" href="../css/out.css">   
</head>
<body>
<div id="wrap">
   <!-- header start -->
    <div id="header">
       <div class="gray_bg">
           <div class="bar_wrap">
               <!-- sns start -->
               <div class="sns">
                    <a href="http://www.youtube.com"><div class="sns_icon"><img src="../images/youtube.png" alt="youtube"></div></a>
                    <a href="http://www.twitter.com"><div class="sns_icon"><img src="../images/twitter.png" alt="twitter"></div></a>
                    <a href="http://www.instagram.com"><div class="sns_icon"><img src="../images/instagram.png" alt="instagram"></div></a>
                    <a href="http://www.facebook.com"><div class="sns_icon"><img src="../images/facebook.png" alt="facebook"></div></a>
                </div>
                <!-- sns end -->
                
                <!-- login start -->
                <div class="login_box" ${sessionScope.user}>
                    <ul>
                       <c:choose>
                     <c:when test="${sessionScope.user eq null}">
                        <li style="width:45%; height:20px; margin:15px 0px 15px 25px;float:left;"><a href="login">로그인</a></li>
                        <li style="width:30%; height:20px; padding:15px 0px 15px 5px; float:left;"><a href="join">회원가입</a></li>
                     </c:when>
                     <c:otherwise>
                     <li style="width:45%; height:20px; margin:15px 0px 15px 25px;float:left;"><a href="logout">로그아웃</a></li>
                     <li style="width:45px; height:40px; padding:10px 10px 10px 15px; float:left;"><a href="/signup/list"><img src="../images/user2.png"></a></li>
                     </c:otherwise>
                  </c:choose>
                    </ul>
                </div>
                <!-- login end -->
            </div>
        </div>
        <div class="logo_wrap">
           <div class="logo"><a href="/"><img src="../images/logo.png" alt="logo"></a></div>
            <div class="menu">
                <ul>
                    <li><a href="/location">행사정보</a></li>
                    <li><a href="/map/area">행사장위치</a></li>
                    <li><a href="/freeboard/list">자유게시판</a></li>
                    <li><a href="/servicecenter/list">고객문의</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- header end -->
   </div>
       
    <!-- contents start -->
    <div id="contents">
            <!-- banner start -->
            <div class="visual">
                <div class="banner_box">
                <p class="signup_text">회원 탈퇴</p>
                <p style="color:#ffffff; font-size:14pt; text-align:center;">회원 탈퇴를 원하시면 신청해주세요.</p>
                </div>
            </div>
            <!-- banner end -->
            <!-- signup_input start -->
            <div class="signup_wrap">
                <div class="signup_box2">
                    <div class="signup_h1">
                        <p>회원 탈퇴</p>
                    </div>
                <form class="signup" method="post" action="delete">
                    <ul style="font-size:14pt;">
                <p style="text-align:center; padding-top:30px;">
                    정말로 회원에서 탈퇴 하시겠습니까?</p>
                    <p style="text-align:center; padding-top:10px; padding-bottom:30px;">
                   탈퇴를 하시면 더 이상 서비스를 제공 받지 못합니다.
                    </p>
                        </ul>
            
           
                    <div class="user_wrap2">
                    <div class="user_box1">
                            <a href="delete"><img src="../images/out_01.png" ></a></div>
                   
                    <div class="user_box2">
                        <div class="user_img">
                            <a href="/"><img src="../images/out_02.png"></a></div>
                    </div>
                     </div>
            </div>
        </div>
    </div>
    </form>
    <!-- contents end -->
    
<!-- footer start -->
    <div id="footer">
        <div class="gray_bg3">
            <div class="foot_wrap">
                <div class="foot_logo">
                    <a href="/"><img src="../images/logo_btm.png"></a>
                </div>
                <div class="foot_box">
                        <table class="foot_tb">  
                            <tr class="foot_up">
                                <td style="text-align:left;"><a href="/enjoy">이용약관</a></td>
                                <td style="border-left:2px solid #666666;"><a href="/info">개인정보 취급방침</a></td>
                                <td style="border-left:2px solid #666666; padding-left:70px; padding-right:70px;"><a href="/email">이메일 무단수집 거부</a>
                                <td style="border-left:2px solid #666666; padding-left:70px;"><a href="/come">오시는 길</a></td>
                            </tr>
                            <tr class="foot_bt">
                                <td colspan="3" style="padding-top: 27px;">대전광역시 동구 우암로 352-21 한국폴리텍대학 대전캠퍼스</td>
                            </tr>
                            <tr class="foot_bt">
                                <td colspan="2">Copyright(c) Chung Fe co., Ltd.All Rights Reserverd.</td>
                            </tr>
                        </table>
                </div>
            </div> 
        </div>
    </div>
    <!-- footer end -->       
</body>
</html>
