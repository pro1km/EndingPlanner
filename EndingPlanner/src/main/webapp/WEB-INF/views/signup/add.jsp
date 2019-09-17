<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header_w.jsp"%>
<link rel="stylesheet" href=../css/join.css>
<script type="text/javascript" src="/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
<script></script>
<div id="contents">
	<div class="con_wrap">
		<div class="number1-2">
			<p>1</p>
		</div>
		<div class="line1-2"></div>
		<div class="number2-2">
			<p>2</p>
		</div>
		<div class="line1-2"></div>
		<div class="number3-2">
			<p>3</p>
		</div>
	</div>
	<div class="t_text">
		<p class="t_text1-2">약관동의</p>
	</div>
	<div class="t_text">
		<p class="t_text2-2">정보입력</p>
	</div>
	<div class="t_text">
		<p class="t_text3-2">가입완료</p>
	</div>
	<div style="height: 600px;">
		<form name="join" action="/signup/add" method="POST" onsubmit="return false; loginChk()"  id="submit">
			<table class="write">
				<tr>
					<td class="left"><label for="id">아이디</label></td>
					<td><input type="text" id="id" name="id" class="id"	maxlength="20" minlength="6" autofocus placeholder="6~20자 이내로 입력">
						<span><button type="button" value="check" onclick="loginChk()" id="id_ch" class="id_chk">중복확인</button></span>
					<div id="id_check"></div></td>
				</tr>
				<tr>
					<td class="left"><label for="password">비밀번호</label></td>
					<td><input type="password" id="password" name="password"
						maxlength="20" minlength="6" class="password" autofocus	placeholder="6~20자 이내로 입력" onblur="PasswordChk();">
						<div id="pw_check"></div></td>
				</tr>
				<tr>
					<td class="left"><label for="pwch">비밀번호 확인</label></td>
					<td><input type="password" id="pwch" name="pwch" maxlength="20" class="pwch" autofocus placeholder="동일한 비밀번호 입력" onblur="RePasswordChk();">
						<div id="pw_recheck"></div></td>
				</tr>
				<tr>
					<td class="left"><label for="name">이름</label></td>
					<td><input type="text" id="name" name="name" autofocus onblur="NameChk();">
						<div id="name_check"></div></td>
				</tr>
				<tr>
					<td class="left"><label for="birth">생년월일</label></td>
					<td><select name="birth" style="width: 70px">
							<option value="2019" selected>2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
						</select> 년
						  <select name="month"
						style="width: 50px">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select>  월　<select name="date" style="width: 50px">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select> 일 </td>
				</tr>
				<tr>
					<td class="left"><label for="tel">연락처</label></td>
					<td class="user_phone"><select name="tel">
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="016">016</option>
					</select> - <input type="text" name="tel1" maxlength="4" minlength="4" id="tel1" > - <input
						type="text" name="tel2" maxlength="4" minlength="4" id="tel2"></td>
				</tr>
				<tr>
					<td class="left"><label for="email">이메일</label></td>
					<td><input type="text" id="email" name="email" autofocus style="width: 120px;"> @ <input type="text" id="email2"
						name="email2" autofocus style="width: 120px;"> <select
						class="select" id="add_select" name="add_select"
						onchange="check_email();">
							<option value="1" selected>직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.com">hanmail.com</option>
					</select></td>
				</tr>
				<tr>
					<td class="left">성별</td>
					<td class="gender"><input type="radio" name="gender"
						value="man" id="m" checked required> <label for="m">남성</label>
						&nbsp; <input type="radio" name="gender" value="woman" id="w">
						<label for="w">여성</label></td>
				</tr>
			</table>

			<button type="reset" class="cancel2" onclick="reset_focus()">다시
				작성하기</button>
			<button type="submit" onclick="check_input()" name="sub" class="ok2" value="0">가입하기</button>

		</form>
	</div>
</div>
<!--contents end-->
</div>
</body>
</html>
<%@include file="../footer.jsp"%>