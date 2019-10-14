EndingPlanner
==============
마지막의 나의 모습을 담을 수 있는 웹 사이트

# 1. 프로젝트 소개
  * 마지막의 나의 모습을 담을 수 있는 웹 사이트인 "엔딩플래너"
  * 생전에 기쁘고 슬픈 일, 남기고 싶은 모든 것에 대한 사진과 글을 업로드
  * 글만으로는 표현할 수 없는 그 때 그 상황의 기분과 감정을 사진으로 표현
  * 장례식을 본인이 제작하지 못한다는 단점을 보완한 웹상의 추모관

****

# 2. 내 활동
이번 팀 프로젝트는 2019.04 ~ 2019.06 동안 진행하였고 퍼블리싱을 주로 담당하였습니다.
반응형 메인페이지, 캐러셀 자동 슬라이드, 원페이지 스크롤, 햄버거 메뉴 등을 만들며 Javascript와 Jquery를 활용해본 경험이 되었습니다.

## 2.1. 메인페이지 퍼블리싱

### 2.1.1. 메인페이지(PC)

![ED-pc-main](https://user-images.githubusercontent.com/51186886/65764049-acdfc680-e15f-11e9-8ee8-e58471b7dec1.png)
![메인1](https://user-images.githubusercontent.com/51186886/66738989-b892f300-eeaa-11e9-82db-29dcb922f62a.PNG)
![메인2](https://user-images.githubusercontent.com/51186886/66738990-b92b8980-eeaa-11e9-98e3-9b3afe77ac4f.PNG)
![메인3](https://user-images.githubusercontent.com/51186886/66738991-b92b8980-eeaa-11e9-88bd-6af89e42dbca.PNG)

pc사이즈 메인페이지입니다. 
퍼블리싱을 직접하고 Jquery로 캐러셀 자동 슬라이드를 만들어서 일정 시간마다 이미지가 넘어가고 화살표 버튼을 눌러도 넘어가지도록 하였습니다.
그리고 마우스 휠을 움직일 때마다 한 페이지씩 스크롤이 됩니다.

### 2.1.2. 메인페이지(태블릿)

![ED-tab-main](https://user-images.githubusercontent.com/51186886/65764552-dea55d00-e160-11e9-9932-9f1fd6e6c83c.png)

태블릿사이즈 메인페이지입니다. 캐러셀 자동 슬라이드와 햄버거 메뉴를 통해 메뉴가 드롭다운으로 보이도록 동적인 연출을 만들었습니다.

### 2.1.3 메인페이지(모바일)

![ED-mobile-main](https://user-images.githubusercontent.com/51186886/65765525-7906a000-e163-11e9-9356-8596df0a09cd.png)

모바일사이즈 메인페이지입니다. 기능은 태블릿과 동일합니다.

### 2.1.4 메인페이지 코드
[메인페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/index.jsp) / 
[메인페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/main.css) / 
[메인페이지.js](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/js/main.js)

## 2.2. 소개페이지 퍼블리싱

![ED-intro](https://user-images.githubusercontent.com/51186886/65765716-fb8f5f80-e163-11e9-8cb7-191bfab2b6c0.PNG)

### 2.2.1. 소개페이지 코드
[소개페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/intro.jsp) / 
[소개페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/intro.css)

## 2.3. 마이페이지 퍼블리싱

![ED-mypage](https://user-images.githubusercontent.com/51186886/65766305-93417d80-e165-11e9-95d2-eec98e45d739.png)

Jquery를 활용해서 탭메뉴를 만들었습니다.

### 2.3.1. 마이페이지 코드

[마이페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/mypage.jsp) / 
[마이페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/mypage.css) / 
[마이페이지.js](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/js/mypage.js)
