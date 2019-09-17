<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ENDING PLANNER</title>
    <link rel="stylesheet" href="../css/signout.css">
    <script src="../jquery/jquery-3.4.1.min.js"></script>
    <script src="../js/sign.js"></script>
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
    <div id="contents">
        <div class="signout_box">
            <div class="list">
                <ul class="li_3">
                    <li id="1">프로필 편집</li>
                </ul>
                <ul>
                    <li id="2">비밀번호 변경</li>
                </ul>
                <ul>
                    <li id="3">회원 탈퇴</li>
                </ul>    
            </div>
            <div class="out_content" id="tab1">
                <div class="profile_box">
                    <div class="profile_img">
                    <img src="../images/fake.png">
                    </div>
                    <div class="profile_idbox">
                        <p class="profile_id">epepyaya1</p>
                        <a href=""><p class="profile_imgchn">프로필 사진 바꾸기</p></a>
                    </div>
                    <div class="profile_exbox">
                        <p class="name">이름<input value="  방모양"></p>
                        <p class="message">상태 메시지<textarea>엔딩플래너 너무 좋아요~!</textarea></p>
                        <p class="info">개인 정보</p>
                        <p class="phone">연락처<input value="  010-9876-5432"></p>
                        <p class="email">이메일<input value="  epepyaya1@gamil.com"></p>
                        <p class="gender">성별</p><p class="man"><input type="radio" name="gender" id="m"><label for="m">남성</label></p><p class="girl"><input type="radio" name="gender" id="w" checked><label for="w">여성</label></p>
                        <p class="birth">생년월일<input value="  1998.04.06"></p>
                    </div>
                </div>
                <div class="change_btn">
                    <button>변경하기</button>
                </div>
            </div>
            <div class="out_content" id="tab2">
                <div class="change_exbox">
                    <p>기존 비밀번호에서 새로운 비밀번호를 등록 후 사용해 주시기 바랍니다.</p>
                    <div class="change_ex">
                        <h3>※ 비밀번호 설정 안내</h3>
                        <p>비밀번호는 <span>8~20자의 영문 대소문자, 숫자, 특수기호</span>만 사용할 수 있습니다.</p>
                        <p><span>공백</span>이 들어가면 비밀번호로 설정할 수 없습니다.</p>
                        <p>유추하기 쉬운 비밀번호나 타 웹사이트와 동일한 비밀번호를 사용하시면 도용의 위험이 있습니다.</p>
                    </div>
                    <div class="change_input">
                        <p>아이디<span>epepyaya1</span></p>
                        <p>기존 비밀번호<input type="password"></p>
                        <p>새로운 비밀번호<input type="password"></p>
                        <p>새로운 비밀번호 확인<input type="password"></p>
                    </div>
                </div>
                <div class="change_btn">
                    <button>변경하기</button>
                </div>
            </div>
            <div class="out_content" id="tab3">
                <p>유의사항 확인 후 탈퇴 신청을 해주세요.</p>
                <div class="out_ex">
                    <img src="../images/feelmark.png">
                    <p>탈퇴 안내</p>
                    <ul>
                        <li>회원 탈퇴를 하시면 엔딩플래너로 가입된 모든 서비스를 사용할 수 없습니다.</li>
                        <li>또한 엔딩플래너로 서비스를 제작/사용하면서 축적된 정보 및 기록은 모두 삭제되며,
                        복구가 불가능합니다.</li>
                        <li>엔딩플래너의 발전을 위해 탈퇴 이유를 선택해 주시면 감사하겠습니다.</li>
                    </ul>
                </div>
                <div class="out_chk">
                    <p>엔딩플래너 탈퇴 이유를 선택해 주세요.(복수선택 가능)</p>
                    <div class="out_chkbox1"><input type="checkbox" id="out_chk"><label for="out_chk">이용할만한 기능/서비스 부족</label></div>
                    <div class="out_chkbox2"><input type="checkbox" id="out_chk2"><label for="out_chk2">시스템 품질에 대한 불만(잦은 오류, 오작동 등)</label></div>
                    <div class="out_chkbox3"><input type="checkbox" id="out_chk3"><label for="out_chk3">엔딩플래너 서비스 이용 안 함</label></div>
                    <div class="out_chkbox4"><input type="checkbox" id="out_chk4"><label for="out_chk4">제재조치로 이용 제한됨</label></div>
                    <div class="out_chkbox5"><input type="checkbox" id="out_chk5"><label for="out_chk5">이벤트 등의 목적으로 한시 사용</label></div>
                    <div class="out_chkbox6"><input type="checkbox" id="out_chk6"><label for="out_chk6">사생활 기록 삭제 목적</label></div>
                    <div class="out_chkbox7"><input type="checkbox" id="out_chk7"><label for="out_chk7">개인 정보 누출 우려</label></div>
                    <div class="out_chkbox8"><input type="checkbox" id="out_chk8"><label for="out_chk8">기타</label></div>
                </div>
                <div>
                    <input type="checkbox" id="out_chklast"><label for="out_chklast">위 내용을 모두 확인하였으며, 탈퇴 시 모든 정보가 복구 불가능함에 동의합니다.</label>
                </div>
                <div class="out_btn">
                    <button>탈퇴하기</button>
                </div>
            </div>
        </div>
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