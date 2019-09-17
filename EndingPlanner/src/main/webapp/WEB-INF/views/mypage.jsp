<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ENDINGPLANNER</title>
<link rel="stylesheet" href="../css/mypage.css">
<link rel="stylesheet" href="../css/header.css">
<script src="../jquery/jquery-3.4.1.min.js"></script>
<script src="../js/mypage.js"></script>
</head>
<body>
	<div class="my_top">
		<img src="../images/my_img.png" alt="my_img" class="my_img">
		<div class="my_profil">
			epepyaya1 
			<div class="pro_updatebtn"><a href='/profile' class="profile">프로필 편집</a></div>
			<ul class="my_record">
				<li>4
					<p>앨범 제작</p>
				</li>
				<li>1
					<p>비밀 앨범</p>
				</li>
				<li>2
					<p>추모관 글</p>
				</li>
			</ul>
			<textarea class="my_write" placeholder="상태 메시지를 등록해주세요."></textarea>
		</div>
		<div class="my_infobox">
			<ul class="my_info">
				<li><img src="../images/my_name.png" alt="my_name"><span>방모양</span></li>
				<li><img src="../images/my_birth.png" alt="my_birth">1998.04.06
					女</li>
				<li><img src="../images/my_phone.png" alt="my_phone">010-9876-5432</li>
				<li><img src="../images/my_mail.png" alt="my_mail">epepyaya1@gmail.com</li>
			</ul>
		</div>
	</div>
	<div class="mypage_menubox">
		<div class="mypage_menu">
			<span class="view">앨범 제작</span> <span class="hide">비밀 앨범</span> <span
				class="hide">추모관 글</span>
		</div>
	</div>
	<div class="my_albumbox">
		<div class="album_contents">
			<img src="../images/album01.png" alt="album01">
			<div class="album_text">#2019 #daily #f4f</div>
		</div>
		<div class="album_contents">
			<img src="../images/album02.png" alt="album01">
			<div class="album_text">Global Friend</div>
		</div>
		<div class="album_contents">
			<img src="../images/album03.png" alt="album01">
			<div class="album_text">아둥이 두돌 촬영</div>
		</div>
		<div class="album_contents">
			<img src="../images/album04.png" alt="album01">
			<div class="album_text">첫 해외여행, 첫 트래킹</div>
		</div>
		<div class="album_pager">1</div>
	</div>
	<div class="my_secretbox">
		<div class="album_contents">
			<img src="../images/secret01.png" alt="album01">
			<div class="album_text">My Wedding day</div>
		</div>
		<div class="album_pager2">1</div>
	</div>
	<div class="my_hallbox">
		<table class="hall_table">
			<thead>
				<tr class="hall_head">
					<td class="hall_num">번호</td>
					<td class="hall_img">추모사진</td>
					<td class="hall_contentsbox">제목/내용</td>
					<td class="hall_date">작성일</td>
					<td class="hall_views">조회수</td>
				</tr>
			</thead>
			<tbody>
				<tr class="hall_body">
					<td class="hall_num"><p>2</p></td>
					<td class="hall_img"><div class="hall_imgbox">
							<img src="../images/my_hall02.png">
						</div></td>
					<td class="hall_contentsbox">
						<div class="hall_title">
							보고 싶은 우리 하늘이
							<div class="hall_content">보고 싶은 나의 하늘이... 처음 하늘이를 품에 안았을 때
								그 날씨와 공기내음 까지 아직도 잊히질 않네요.. 차를 태워 집에 가는데 멀미를 해서 그런지 엄청 끙끙거리더라고요
								그러다 잠이들어서 무사히 도착했지만요. 저희 집에서 개를 키워보는건 처음이지만 잘 키우겠습니다.</div>
						</div>
					</td>
					<td class="hall_date">19.05.04</td>
					<td class="hall_views">21</td>
				</tr>
				<tr class="hall_body">
					<td class="hall_num"><p>1</p></td>
					<td class="hall_img"><div class="hall_imgbox">
							<img src="../images/my_hall01.png">
						</div></td>
					<td class="hall_contentsbox">
						<div class="hall_title">
							엔드게임 *스포주의*
							<div class="hall_content">다들 엔드게임 보셨나요?? 저는 스포당할까봐 개봉 일주일
								전부터 예매한 뒤 개봉일날 보러 갔습니다 ㅎㅎ 진짜... 10년이라는 시간이 흐른 게 실감이 되니까 눈물이 마르질
								않았네요 ㅜㅜ 엔딩플래너와 취지가 너무 잘 맞는것 같아용!</div>
						</div>
					</td>
					<td class="hall_date">19.04.30</td>
					<td class="hall_views">89</td>
				</tr>
			</tbody>
		</table>
		<div class="album_pager">1</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
