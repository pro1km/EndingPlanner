<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ending Planner</title>
<link rel="stylesheet" href="css/main.css">
<script src="jquery/jquery-3.4.1.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<div id="wrap">
		<div class="page1">
			<div class="slide">
				<div class="slide_bg">
					<ul>
						<li class="active"></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<div class="header">
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
									<li><a href="logout" onClick="alert('로그아웃 되었습니다.');">로그아웃</a></li>
									<li><a href="/mypage">마이페이지</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					<a href="/" class="logo"><img src="../../images/logo.png"
						alt="logo">
						<p class="logo_text">
							ENDING<br>PLANNER
						</p></a>
					<div class="head_menu">
						<div class="dropdown_box">
							<div class="menu_dropdown">
								<p>메뉴 보기</p>
							</div>
							<div class="menu_ham">
								<span class="ham1"></span> <span class="ham2"></span> <span
									class="ham3"></span>
							</div>
						</div>
						<ul class="menu">
							<li><a href="intro.html">소개</a></li>
							<li><a href="make.html">제작</a></li>
							<li><a href="${pageContext.request.contextPath}/memory/list">전시관</a></li>
							<li><a href="${pageContext.request.contextPath}/notice/list">공지사항</a></li>
						</ul>
					</div>
				</div>
				<div class="main_box">
					<div class="main_text">
						<p class="text1">Remember me</p>
						<p class="text2">
							마지막의 나의 모습을<br>“엔딩플래너”와 함께 합시다
						</p>
					</div>
					<div class="main_btn">
						<ul>
							<li><img src="images/left_btn.png" alt="left_btn"
								class="left" onclick="animation('left')"></li>
							<li class="pick" onclick="animation('1')"></li>
							<li class="btn" onclick="animation('2')"></li>
							<li class="btn" onclick="animation('3')"></li>
							<li><img src="images/right_btn.png" alt="right_btn"
								class="right" onclick="animation('right')"></li>
						</ul>
					</div>
					<div class="main_contents">
						<ul>
							<li>
								<div class="main_conbox">
									<div class="main_imgbox">
										<img src="images/main01.png" alt="main01">
									</div>
									<div class="main_textbox">My Wedding day</div>
								</div>
							</li>
							<li>
								<div class="main_conbox">
									<div class="main_imgbox">
										<img src="images/main02.png" alt="main02">
									</div>
									<div class="main_textbox">#2019 #daily #f4f</div>
								</div>
							</li>
							<li>
								<div class="main_conbox">
									<div class="main_imgbox">
										<img src="images/main03.png" alt="main03">
									</div>
									<div class="main_textbox">아둥이 두돌 촬영</div>
								</div>
							</li>
							<li>
								<div class="main_conbox">
									<div class="main_imgbox">
										<img src="images/main04.png" alt="main04">
									</div>
									<div class="main_textbox">60년 지기 친구</div>
								</div>
							</li>
							<li>
								<div class="main_conbox">
									<div class="main_imgbox">
										<img src="images/main05.png" alt="main05">
									</div>
									<div class="main_textbox">Global Friend</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="page2">
			<div class="main_top">
				<div class="main_topcontents">
					<img src="images/top01.png" alt="top01">
					<div class="top_textbox">
						<div class="top_mini">
							<div class="top_minibox"></div>
						</div>
						<div class="top_text1">Ending Planner 소개</div>
						<div class="top_text2">
							<p>“잊혀질 권리”가 아닌 “기억될 권리”를 만들 것입니다.</p>
							<p>
								사진은 그날의 추억을 기억하고,<br>내가 생각하지 못한 아름다움까지 담아낼 수 있습니다.
							</p>
							<p>
								생을 마치는 마지막에는 아름다운 모습으로 사람들에게<br>기억되길 바라는 마음을 담아 시작하게 된
								프로젝트입니다.
							</p>
						</div>
					</div>
				</div>
				<div class="main_topbg"></div>
			</div>
			<div class="main_mid">
				<div class="main_function">Main Function</div>
				<div class="main_midbox" id="main_midbox1">
					<div class="mid_contents">
						<img src="images/mid01.png" alt="mid01"> <img
							src="images/mid_btn.png" alt="mid_btn" class="mid_imgbtn">
						<div class="mid_text01">앨범 제작</div>
						<div class="mid_text02">
							사진과 글을 업로드하고,<br> 업로드 된 사진들을 이어볼 수 있습니다.<br> 자신이 키우던
							애완동물이나 자기가 기억 또는 추억으로<br> 남기고 싶은 것을 제작하여 간직합시다.
						</div>
					</div>
				</div>
				<div class="main_midbox" id="main_midbox2">
					<div class="mid_contents">
						<img src="images/mid02.png" alt="mid02"> <img
							src="images/mid_btn.png" alt="mid_btn" class="mid_imgbtn"
							id="mid_btn2">
						<div class="mid_text01">암호글 작성</div>
						<div class="mid_text02">
							누군가에게는 이런 사진과 이런 말을,<br> 또 다른 사람에게는 이런 말을 남기며<br>
							특정인물에게 보이고 싶은 모습을 암호화하여<br> 해당 사람만 확인 가능할 수 있도록 해줍니다.
						</div>
					</div>
				</div>
				<div class="main_midbox3">
					<div class="mid_contents">
						<img src="images/mid03.png" alt="mid03"> <img
							src="images/mid_btn.png" alt="mid_btn" class="mid_imgbtn">
						<div class="mid_text01">사이버 추모관</div>
						<div class="mid_text02">
							살아생전 못다한 마음을 닿길 바라며<br> 댓글 게시판 형식으로 작성되는 인터넷에 건립된<br>
							평생 간직될 고인을 기리는 추억의 기념관입니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="page3">
			<div class="main_bottom">
				<div class="bottom_topbox">
					<img src="images/bottom_bg.png" alt="bottom_bg" class="bottom_bg">
					<div class="bottom_contents">
						<div class="bottom_infobox">
							<div class="bottom_infotop">
								<img src="images/bottom01.png" alt="bottom01" class="info_img">
								<img src="images/bottom(768).png" alt="bottom768"
									class="info_img768">
								<div class="bottom_infotext">
									<p class="info_text01">Customer Service</p>
									<p class="info_text02">1998 - 0604</p>
									<p>
										Fax <span>1820-0520-0801</span>
									</p>
									<p>
										Email <span>epepyaya@gmail.com</span>
									</p>
								</div>
								<div class="info_bottom">ENDING PLANNER</div>
								<img src="images/map(768).png" alt="map768" class="map768">
								<img src="images/map(480).png" alt="map480" class="map480">
								<div class="map768_text">
									Address
									<p>
										[도로명] 대전광역시 동구 우암로 352-21 한국폴리텍IV대학<br> [지번] 대전광역시 동구
										가양2동 91-2
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="bottom_noticebox">
						<div class="notice_text">
							Latest News <span>공지사항</span>
						</div>
						<a href="/notice/list" class="notice_btn">Read More</a>
					</div>
				</div>
				<div class="bottom_botbox">
					<div class="bot_text">
						마지막 나의 모습을 알리는 "엔딩 플래너"
						<p>
							의미가 좋은데다가 누구나 사용가능한 "엔딩플래너"의 앨범 제작방식을<br> 도입한 상조회사가 점차 늘어나고
							있습니다.<br> 멘티인 폴리텍 대학생과 산업에서 근무하는 멘토가 만나 현장실습과 같이 활동하였습니다.<br>
							한이음 프로젝트를 시작으로 창업경진대회까지 큰 수상을 하여 앞으로의 무궁한 발전이 기대가 됩니다.
						</p>
					</div>
					<img src="images/map.png" alt="map" class="map">
					<div class="map_text">
						Address
						<p>
							[도로명] 대전광역시 동구 우암로 352-21 한국폴리텍IV대학<br> [지번] 대전광역시 동구 가양2동
							91-2
						</p>
					</div>
				</div>
				<div class="bottom_saybox">
					<div class="bot_saytop">
						<span>이별에 대한 명언</span> <img src="images/say_left.png"
							alt="say_left" class="say_left"> <img
							src="images/say_right.png" alt="say_right" class="say_right">
					</div>
					<div class="bot_saytextbox">
						<ul>
							<li>
								<div class="bot_say01">
									나는 사람들에게 부끄럽지 않은 인간으로 기억되길 바란다.<br> 그러나, 내가 사랑했던 사람에게는 그저
									아름다운 한 여자로 기억되고 싶다.<br>
									<p>-그레이스 캘리</p>

									이 사랑의 꽃봉오리는 여름날 바람에 마냥 부풀었다가,<br> 다음 만날 때엔 예쁘게 꽃필 거에요.<br>
									<p>- 윌리엄 셰익스피어</p>
								</div>
								<div class="bot_say02">
									인간의 감정은 누군가를 만날 때와 헤어질 때 가장 순수하며 가장 빛난다.<br>
									<p>- 장 폴 리히터</p>

									떠날 때가 되었으니, 이제 각자의 길을 가자.<br> 나는 죽기 위해서, 당신들은 살기 위해<br>
									어느 편이 더 좋은 지는 오직 신만이 알 뿐이다.<br>
									<p>- 소크라테스</p>
								</div>
							</li>
							<li>
								<div class="bot_say01">
									작별 인사에 낙담하지 말라. 재회에 앞서 작별은 필요하다.<br> 그리고 친구라면 잠시 혹은 오랜 뒤라도
									꼭 재회하게 될 터이니<br>
									<p>- 리처드 파크</p>

									당신을 만나는 모든 사람이 당신과 헤어질 때는<br> 더 나아지고 더 행복해질 수 있도록 하라.<br>
									<p>- 마더 테레사</p>
								</div>
								<div class="bot_say02">
									아름다운 장미는 가시 위에서 피고 슬픔 뒤에는 반드시 기쁨이 있습니다.<br>
									<p>- 장 폴 리히터</p>

									사랑은 지배하는 것이 아니라 자유를 주는 것이다.<br>
									<p>- 에리히 프롬</p>

									태어난 모든 것들은 기약조차 없는 이별을 준비하고 있어야 한다.<br>
									<p>- 그라시안</p>
								</div>
							</li>
							<li>
								<div class="bot_say01">
									만나고, 알고, 사랑하고 그리고 이별하는 것이<br> 모든 인간의 공통된 슬픈 이야기다.<br>
									<p>- 섀무얼 콜리지</p>

									멀리 있는 친구만큼 세상을 넓어 보이게 하는 것은 없다.<br> 그들은 위도와 경도가 된다.<br>
									<p>- 헨리 데이비드 소로우</p>
								</div>
								<div class="bot_say02">
									우리가 다시 만날 그 날까지 행복한 여정이 되기를<br> 어떤 길은 기쁘고 또 어떤 길은 우울하니 그것이
									의미있는 길을 가는 법이지<br> 이제 기쁜 길을 떠나길.<br>
									<p>- 장 폴 리히터</p>

									인생이란 네가 다른 계획을 세우느라 바쁠 때 너에게 일어나는 것이다.<br>
									<p>- 존 레논</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="footer_gnbbox">
					<ul class="footer_gnb">
						<li><a href="index.html">홈 </a></li>
						<li><a href="page/intro.html">소개</a></li>
						<li><a href="page/make.html">제작</a></li>
						<li><a href="page/hall.html">전시관</a></li>
						<li><a href="page/notice.html">공지사항</a></li>
					</ul>
					<p>Ending Planner . 2019 Copyrihgt ⓒ All right reserved.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>