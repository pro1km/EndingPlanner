// 아이디 유효성 검사(1 = 중복 / 0 != 중복)

function loginChk() {
	
	var btn = $(".ok2").val();	

	var formChk = false;
	
	var id = $('#id').val();

	var rege = /[^a-zA-Z0-9]+|^([a-z]+|[0-9]+|[A-Z]+)$/i;

	if (id.indexOf(" ") >= 0) {
		document.getElementById("id_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>아이디에 공백을 사용할 수 없습니다.</span>")
		return false;
	} else if (id.length < 6 || id.length > 20) {
		document.getElementById("id_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>아이디를 6~20자까지 입력해주세요.</span>")
		return false;
	} else if (rege.test(id) == true) {
		document.getElementById("id_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>영문과 숫자를 조합하여 주십시오.</span>");
		return false;
	} else if (join.id.value.length == 0) {
		document.getElementById("id_check").innerHTML = ("<span style='color:red; font-size:12px; font-weight:550;'>아이디를 입력해주세요</span>");
	} else {
		var id = $('#id').val();
		$
				.ajax({
					url : 'idCheck',
					data : {
						'id' : id
					},
					type : 'GET',
					success : function(data) {
						if (data == 1) {
							document.getElementById("id_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>이미 사용중인 아이디 입니다.</span>");
							return false;
						} else {
							document.getElementById("id_check").innerHTML = ("<span style = 'color:green; font-size:12px; font-weight:550;'>사용 가능한 아이디 입니다.</span>");
							document.join.sub.value = '1';
							$("#id").attr("readonly", true);
						}
					}
				});
	}
}
function PasswordChk() {
	if (join.password.value.length > 0) {
		if (join.password.value.length < 6 || join.password.value.length > 20) {
			document.getElementById("pw_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>비밀번호를 6~20자까지 입력해주세요.</span>");
			return false;
		} else
			document.getElementById("pw_check").innerHTML = ("<span style = 'color:green; font-size:12px; font-weight:550;'>사용 가능한 비밀번호 입니다.</span>");
	} else {
		document.getElementById("pw_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>비밀번호를 입력해 주세요.</span>");
		return false;
	}
}

function RePasswordChk() {
	if (join.pwch.value.length > 0) {
		if (join.password.value == join.pwch.value) {
			document.getElementById("pw_recheck").innerHTML = ("<span style = 'color:green; font-size:12px; font-weight:550;'>비밀번호가 일치합니다.</span>");
		} else {
			document.getElementById("pw_recheck").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>비밀번호를 확인해 주세요.</span>");
			return false;
		}
	} else {
		join.pwch.value = "";
		document.getElementById("pw_recheck").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>비밀번호를 다시 입력해 주세요.</span>");
		return false;
	}
}

function NameChk() {
	if (join.name.value.length == 0) {
		document.getElementById("name_check").innerHTML = ("<span style = 'color:red; font-size:12px; font-weight:550;'>이름을 입력해 주세요.</span>");
		return false;
	} else {
		document.getElementById("name_check").innerHTML = ("");
	}
}

function check_email() {
	if (join.add_select.value == '1') {
		join.email2.readonly = false;
		join.email2.value = '';
		join.email2.focus();
	} else {
		join.email2.readonly = true;
		join.email2.value = join.add_select.value;
	}
}

function check_input() {

	var formChk = false;
	var btn = $(".ok2").val();	
	var id = $("#id").val();
	var pw = $("#password").val();
	var pwch = $("#pwch").val();
	var name = $("#name").val();
	var tel1 = $("#tel1").val();
	var tel2 = $("#tel2").val();
	var regTel = /^[0-9]+$/;
	var email = $("#email").val();
	var email2 = $("#email2").val();
	var regEmail = /^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;
	
	if (!id) {
		alert('아이디를 입력해 주세요');
		$("#id").focus();
		return false;
	} else if (!pw) {
		alert('비밀번호를 입력해 주세요.');
		$("#password").focus();
		return false;
	} else if (pw.indexOf(" ") >= 0) {
		alert("비밀번호에 공백을 사용할 수 없습니다.")
		return false;
	} else if (pw.length < 6 || pw.length > 20) {
		alert("비밀번호를 6~20자까지 입력해주세요.")
		return false;
	} else if (!pwch) {
		alert('비밀번호 확인을 입력해 주세요.');
		$("#pwch").focus();
		return false;
	} else if (pw !== pwch) {
		alert('비밀번호가 일치하지 않습니다.');
		$("#pwch").focus();
		return false;
	} else if (!name || name.indexOf(" ") >= 0) {
		alert('이름을 입력해 주세요.');
		$("#name").focus();
		return false;
	} else if (!tel1 || tel1.indexOf(" ") >= 0) {
		alert("연락처를 입력해 주세요.");
		$("#tel1").focus();
		return false;
	} else if (!tel2 || tel2.indexOf(" ") >= 0) {
		alert("연락처를 입력해 주세요.");
		$("#tel2").focus();
		return false;
	} else if (!regTel.test(tel1) == true) {
		alert("연락처를 확인해 주세요.");
		$("#tel1").focus();
		return false;
	} else if (!regTel.test(tel2) == true) {
		alert("연락처를 확인해 주세요.");
		$("#tel2").focus();
		return false;
	} else if (!email || email.indexOf(" ") >= 0) {
		alert("이메일을 입력해 주세요.");
		$("#email").focus();
		return false;
	} else if (!email2 || email2.indexOf(" ") >= 0) {
		alert("이메일을 입력해 주세요.");
		$("#email2").focus();
		return false;
	} else if (email.length > 30) {
		alert("이메일을 30자 이내로 입력해주세요.");
		$("#email").focus();
		return false;
	} else if (email2.length > 30) {
		alert("이메일을 30자 이내로 입력해주세요.");
		$("#email2").focus();
		return false;
	} else if (!regEmail.test(email2) == true) {
		alert("이메일주소를 확인해 주세요.");
		$("#email2").focus();
		return false;
	} else if(btn == 0){
		alert("중복확인 버튼을 눌러주시길 바랍니다.");
		return false;
	} else {
		
		
		formChk = true;

		if (formChk) {
			alert("가입이 완료되었습니다.");
			document.getElementById('submit').submit();
		} else {
			alert("실패");
		}
	}
}