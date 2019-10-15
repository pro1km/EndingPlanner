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

![메인1](https://user-images.githubusercontent.com/51186886/66738989-b892f300-eeaa-11e9-82db-29dcb922f62a.PNG)
![메인2](https://user-images.githubusercontent.com/51186886/66738990-b92b8980-eeaa-11e9-98e3-9b3afe77ac4f.PNG)
![메인3](https://user-images.githubusercontent.com/51186886/66738991-b92b8980-eeaa-11e9-88bd-6af89e42dbca.PNG)

pc사이즈 메인페이지입니다. 
퍼블리싱을 직접하고 Jquery로 캐러셀 자동 슬라이드를 만들어서 일정 시간마다 이미지가 넘어가고 화살표 버튼을 눌러도 넘어가지도록 하였습니다.
그리고 마우스 휠을 움직일 때마다 한 페이지씩 스크롤이 됩니다.

### 2.1.2. 메인페이지(태블릿)

![엔딩플래너-태블릿](https://user-images.githubusercontent.com/51186886/66810777-e2135380-ef6a-11e9-8385-ddfbab6255c8.png)

태블릿사이즈 메인페이지입니다. 캐러셀 자동 슬라이드와 햄버거 메뉴를 통해 메뉴가 드롭다운으로 보이도록 동적인 연출을 만들었습니다.

### 2.1.3 메인페이지(모바일)

![ED-모바일](https://user-images.githubusercontent.com/51186886/66821975-4c81bf00-ef7e-11e9-858c-17bd7890ecc5.png)

모바일사이즈 메인페이지입니다. 기능은 태블릿과 동일합니다.

### 2.1.4 메인페이지 코드
[메인페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/index.jsp) / 
[메인페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/main.css) / 
[메인페이지.js](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/js/main.js)

## 2.2. 소개페이지 퍼블리싱

![ED-intro](https://user-images.githubusercontent.com/51186886/66816834-b6e23180-ef75-11e9-8136-065064e915fc.png)

### 2.2.1. 소개페이지 코드
[소개페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/intro.jsp) / 
[소개페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/intro.css)

## 2.3. 마이페이지 퍼블리싱

탭메뉴 1
![ED-mypage](https://user-images.githubusercontent.com/51186886/66818073-b5b20400-ef77-11e9-95e6-eccd3a1e5ae2.png)
탭메뉴 2
![ED-mypage2](https://user-images.githubusercontent.com/51186886/66818308-18a39b00-ef78-11e9-93e5-d81efe098832.png)
탭메뉴 3
![ED-mypage3](https://user-images.githubusercontent.com/51186886/66818310-18a39b00-ef78-11e9-97cd-62c094f5240b.png)

Jquery를 활용해서 탭메뉴를 만들었습니다.

### 2.3.1. 마이페이지 코드

[마이페이지.jsp](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/WEB-INF/views/mypage.jsp) / 
[마이페이지.css](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/css/mypage.css) / 
[마이페이지.js](https://github.com/pro1km/EndingPlanner/blob/master/EndingPlanner/src/main/webapp/js/mypage.js)
