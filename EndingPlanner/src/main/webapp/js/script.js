$(function (){

	local = typeof(localStorage['page']) == "undefined" ? init() : localStorage['page'];
	
	$("body").html(local);
	 
    $(".tour-wrap").eq(-2).hide();
   
	sort_ok();

	ind = typeof(localStorage['ind']) == "home" ? "home" : localStorage['ind'];

	if(ind != "home"){
		$("#photoViewSel").val(localStorage['easing']).attr("selected",true);
		imgSlide(false,localStorage['ind']);
	}

   $(document).on("click",".btn-tour-add",function(){ 
        $(this).parent().hide();
        $(".tour-wrap").eq(-2).show();
   })

   $(document).on("click",".last-form .btn",function(){  
	   
        if($(this).val()=="완료"){
            var val = $(".form-control").val();
            if(val == ""){					
                alert("앨범 제목을 입력하세요");
                return false;
            }else{                     
                $(".form-control").val('');
                $(".tour-wrap").eq(-2).hide(); 
                $(".tour-wrap").eq(-1).show();

                add_tour(val);
            }
        }else{  
           $(".form-control").val(''); 
           $(".tour-wrap").eq(-2).hide(); 
           $(".tour-wrap").eq(-1).show(); 
        }
   })

   $(document).on("click",".pa-del",function(){ 
      $(this).parent().parent().parent().hide("fade",1500,function(){$(this).remove(); add_local();})
   })
     	  
	 img_ok = true;  
	 pen_ok = false;  
	 line_ok = false;
	
    document.body.ondragover=function(event){
		return false;
	}

	document.body.ondrop=function(e){ 
		if(e.target.id == "image_area" && img_ok == true){	
			var file = e.dataTransfer.files[0]; 
			upfile(file);  
		}
			return false;  
	}
   
   $(document).on("click","#image_area",function(){  
		if(img_ok == true){
			$("#add_file").click();  
		}
   });
   
   $(document).on("change","#add_file",function(e){ 
	   	 var file = e.target.files[0]; 
		upfile(file);
   });
   
   $(document).on("click","#pl,#mi",function(e){
	   	 if($(this).val() == "+"){
			 $("#px").val(parseInt($("#px").val())+1);
		 }else{
			 if($("#px").val() == 1){
				alert("1px 미만의 값은 입력하실 수 없습니다.");
				return false; 
			 }
			 $("#px").val(parseInt($("#px").val())-1);
		 }
   });
   
   color = "#ff0000"; 
   $(document).on("change","#sel_shape",function(e){  
	   	 color = $(this).val();
   });
   
   $(document).on("click","#pen",function(e){  
	   	 if(img_ok==false){ 
		 	pen_ok = true; 
		 }
   });
   
   $(document).on("mousedown","#can",function(e){ 
	   	 if(pen_ok==true){     
			 line_ok = true;   
			 ctx.beginPath();
			 ctx.lineWidth = $("#px").val();  
			 ctx.strokeStyle = color;         
			 ctx.moveTo(e.offsetX,e.offsetY);   
		 }
   });
   
   $(document).on("mousemove","#can",function(e){  
	   	if(line_ok == true){       
		 ctx.lineTo(e.offsetX,e.offsetY);
		 ctx.stroke();
		}
   });
   
   $(document).on("mouseup mouseleave","#can",function(e){ 
	   if(line_ok== true){
			ctx.closePath();   
			line_ok = false; 
	   }
   });

   $(document).on("click",".th-del",function(e){  
	   $(this).parent().parent().hide("fade",1500,function(){
		   $(this).remove();
		   add_local();
	   });
   });
   
   // 이미지 미리보기
   $(document).on("click","#prev_btn, #next_btn",function(){
		var mode = $(this).attr('id');
		imgSlide(mode)
	});
	
	$(document).on("click","#photoViewPos li",function(){
		imgSlide(false, $(this).index());
	});
	

	$(document).on("click","#close_btn",function (){
		$("#photoViewBg").remove();
		localStorage['ind'] = "home";
		add_local();
	});

	$(document).on("change","#photoViewSel",function(){
		localStorage['easing'] = $(this).val();
	})
   
})
	
function add_local(){
	localStorage['page'] = $("body").html(); 	
}

function sort_ok(){
	$(".card_list").sortable({
		connectWith: ".card_list",
		cursor:'pointer',
		placeholder:"ui-state-highlight",
		revert:true,
		start: function(e,ui){ ui.item.animate({backgroundColor:"rgba(0,255,255,.3);",borderRadius:"25px"},300)},
		stop:  function(e,ui){ui.item.animate({backgroundColor:"rgba(255,255,255,1);",borderRadius:"5px"},300,function(){		add_local();}); 
		}
	
	})	
}


function add_tour(t_name){   
    var str = "";
    str += '<div class="tour-wrap">'
        str += '<div>'
            str += '<div class="w100">'
				str += '<span class="title tour-title">'+t_name+'</span>'
                str += '<input type="button" value="X" class="btn btn-primary btn-delete pa-del" style="float:right">'
            str += '</div>'
            str += '<div class="w100">'
                str += '<input type="button" value="사진 이어보기" class="btn btn-tour-photoview" onclick="viewPhotoSlide(this);">'
				/*str += '<span class="lock" style="float:right" onclick="lock();">(비밀글 설정)</span>';
    			str += '<span class="locker" style="display:none; float:right" onclick="locker();">(비밀글 확인)</span>';	*/
            	/*str += '<img src="../images/lock-.png" id="lock_id" width="25" height="35" style="float:right; margin-right:5px;" onclick="lock(this);">'*/
			str += '</div>'
			str += '<div class="card_list"style="width:100%; min-height:10px;"></div>'
            str += '<input type="button" value="사진 추가" class="btn btn-primary btn-card-add" onclick="openPopupAddCard(this);">'
        str += '</div>'
    str += '</div>'

    $("#container").prepend(str);  
	$(".tour-wrap").eq(0).hide().show('fade',1500,function(){add_local(); sort_ok();});
	
}

function upfile(file){	
	f_type = file.type
	if(f_type != 'image/jpeg' && f_type != 'image/png' && f_type != 'image/gif'){
		alert('JP(E)G, PNG, GIF 이미지 파일만 사용 가능합니다.')
		return false;
	}
	var fr = new FileReader();
	fr.readAsDataURL(file);  
	fr.onload = function(e){
		img_ok = false;            
		img_data = e.target.result;
		in_img(img_data);  
	}	
}

function in_img(img_data){ 
	var img = new Image(); 
	img.src = img_data;
	img.onload = function(){
		re = resize(img.width, img.height, 500, 300);  
		re2 = resize(img.width,img.height,230,200); 
		$("#image_area").css({"width":+re[0]+"px","height":+re[1]+"px","border":"none"});  
		var add_div = "<canvas id='can' width='"+re[0]+"' height='"+re[1]+"' style='position:absolute; left:0; top:0'></canvas>";		
		$("#image_area").html(add_div);
		ctx = $('#can')[0].getContext("2d");
		ctx.drawImage(img,0,0,re[0],re[1]);  	
	}		
}

function resize(w,h,ww,hh){  
	var pw = w / ww;
	var ph = h / hh;
	if(pw > 1 || ph > 1){
		if(pw > ph){
			ph = ph / pw;
			pw = 1;
		} else {
			pw = pw / ph;
			ph = 1;
		}
	}
	return [pw*ww, ph*hh];
}

/*$(function() {
    $( "#ybirth" ).datepicker({
    });
});
$(function() {
    $( "#mbirth" ).datepicker({
    });
});
*/
/*function check(){
	
	var question = $("#question").val();
	var answer = $("#answer").val();
	var ybirth = $("#ybirth").val();
	var mbirth = $("#mbirth").val();
	
	if(question == "" || answer == "" || ybirth == "" || mbirth == ""){   
		alert("필수 입력 항목입니다.");
		return false;
    }else{
    	alert("비밀글이 등록되었습니다.");
    	$("#question").val("dddd");
    	
    } 	
	
}*/

function lock(){
	
	alert("비밀글로 설정하시겠습니까??");
	
	var div = "<form class='lock' action='add' method='post' onsubmit='return check()'>";
	
	div += "<div title='잠금 설정'>";

		div += "<div class='form-group'>";
			div += "<input type='text' name='question' max='2' id='question' class='form-control' placeholder='질문을 입력해주세요.'>";
		div += "</div>";
		
		div += "<div class='form-group'>";
			div += "<input type='text' name='answer' id='answer' class='form-control' placeholder='답변을 입력해주세요.'>";
		div += "</div>";
		
		div += "<span style='color:#999;'>* 보안을 강화시키기 위해 입력 받는 생년월일입니다.</span>";
	
		div += "<div class='form-group'>";
			div += "<input type='text' name='ybirth' id='ybirth' class='form-control' placeholder='보여주고 싶은 사람의 생년월일을 입력해주세요.'>";
		div += "</div>";
		
		div += "<div class='form-group'>";
			div += "<input type='text' name='mbirth' id='mbirth' class='form-control' placeholder='본인의 생년월일을 입력해주세요.'>";
		div += "</div>";
		
		div += "<input type='submit' value='확인하기' class='btn btn-primary btn-delete th-del' style='margin:0 auto'>";

	div += "</div>";
	
	div += "</form>";
	
	$(div).dialog({
		resizable: false,
		modal: true,
		width: 500/*,
		buttons: {
			"등록" : function(){
				var question = $("#question").val();
				var answer = $("#answer").val();
				var ybirth = $("#ybirth").val();
				var mbirth = $("#mbirth").val();
				
				if(question == "" || answer == "" || ybirth == "" || mbirth == ""){   
					alert("제목, 설명, 사진은 필수 입력 항목입니다.");
					return false;  
			    }
			}
		}*/
	});
}


// 팝업으로 사진 추가
function openPopupAddCard(th){ 
	
	var div = "<div title='사진 추가'>";
		
		div += "<form action='add2' method='post'>";
        div += "<div class='form-group'>";
            div += "<input type='text' class='form-control' placeholder='사진 제목' id='c_title' name='title'>";
        div += "</div>";

        div += "<div class='form-group'>";
            div += "<textarea class='form-control' placeholder='사진 설명' rows='3' id='c_dis' name='dis'></textarea>";
        div += "</div>";

        div += "<div class='form-group'>";
            div += "<div id='image_area' style='position:relative'>사진 영역</div>";
			div += "<input type='file' id='add_file' style='display:none' name='file'>";
        div += "</div>";

		div += "<div class='form-group'>";
			div += "<input type='button' value='브러시' class='btn active' id='pen'> &nbsp;&nbsp;&nbsp;";
			div += "<select id='sel_shape'>";
				div += "<option value='#ff0000'>RED</option>";
				div += "<option value='#00ff00'>GREEN</option>";
				div += "<option value='#0000ff'>BLUE</option>";
				div += "<option value='#ffff00'>YELLOW</option>";
				div += "<option value='#ff00f0'>PINK</option>";
				div += "<option value='#00fff0'>SKY BLUE</option>";
			div += "</select> &nbsp;&nbsp;&nbsp;";
			div += "<input type='text' size='3' value='1' readonly='readonly' id='px'> ";
			div += "<input type='button' value='+' class='btn' id='pl'> ";
			div += "<input type='button' value='-' class='btn' id='mi'> (px)";
		div += "</div>";

	div += "</div>";
	div += "</form>";

    $(div).dialog({
      resizable: false,
      modal: true,
      width: 540,
      buttons: {
        "완료": function() {
        
        type : "submit";
        	
		var c_title = $("#c_title").val();
		var c_dis = $("#c_dis").val();
		
	    if(c_title == "" || c_dis == "" || img_ok == true){   
			alert("제목, 설명, 사진은 필수 입력 항목입니다.");
			return false;  
	    }
		  
		var i_data = $("canvas")[0].toDataURL(f_type);   
		  
		    var str = ""; 
			str+='<div class="card">';
				str+='<div class="w100">';
					str+='<span class="title">'+c_title+'</span>';
					str+='<input type="button" value="X" class="btn btn-primary btn-delete th-del">';
				str+='</div>';
				str+='<img src="'+i_data+'" width="'+re2[0]+'px" heigth="'+re2[1]+'px">';
				str+='<p>';
					str+=c_dis;
				str+='</p>';
			str+='</div>';
		  
		  $(th).siblings('.card_list').append(str);
		  $(th).siblings('.card_list').find(".card").eq(-1).hide().show('fade',1500,function(){ add_local(); sort_ok();});
		  		
          $( this ).remove();
		  img_ok = true;   
		  pen_ok = false;
		  line_ok = false;
		  color = "#ff0000";
        },
        "취소": function() {
          $( this ).remove();
		  img_ok = true;
		  pen_ok = false;
		  line_ok = false;
		  color = "#ff0000";
        }
      }
    });		
}


function viewPhotoSlide(th){	
	
	var div = "<div id='photoViewBg'>";

		div += "<div id='photoViewImage'>";
			
		div += "</div>";

		div += "<select id='photoViewSel'>";
			div += "<option value='bounce'>Bounce</option>";
			div += "<option value='fade'>Fade</option>";
			div += "<option value='flip'>Flip</option>";
		div += "</select>";

		div += "<input type='button' value='X' class='btn btn-primary' id='close_btn'>";
		div += "<input type='button' value='<' class='' id='prev_btn'>";
		div += "<input type='button' value='>' class='' id='next_btn'>";

		div += "<ul id='photoViewPos'>";
		div += "</ul>";

	div += "</div>";
	
	$("body").prepend($(div));
	$('<div class="box">').appendTo('body'); 
	
	
	$(th).parent().parent().find('img').each(function(index, element) {
        $(this).clone().appendTo('#photoViewImage');
    });
	
	total_img = $('#photoViewImage img').length-1;

	if(total_img < 0){
		alert("사진 이어보기 할 이미지가 없습니다.");
		$("#photoViewBg").remove();
		return false;
	}
	
	$("#photoViewImage img").each(function(index, el) {
        $("#photoViewPos").append($('<li>'));
    });
	
	start(true);
}


var idx = 0;
var time;
function start(mode){
	if(mode){
		imgSlide(false, 0);
		return false;
	}
	time = 	setTimeout(function(){
		imgSlide('next_btn')
	})
}
function slideReset(){
	clearTimeout(time);
	$('#photoViewImage img').stop(true);
	$('.box').stop(true);
}

function imgSlide(type, num){
	
	slideReset();
	easing = $("#photoViewSel").val();	
	idx = type ? idx : num;
	
	if(type=="prev_btn"){
		if(idx<=0){
			idx = $('#photoViewImage img').length-1;	
		}else{
			--idx;
		}
	}else if(type=="next_btn"){
		if(idx >= $('#photoViewImage img').length-1){
			idx = 0;	
		}else{
			++idx;
		}
	}
	
	$('#photoViewImage img').removeAttr('style').hide();
	$('#photoViewImage img').eq(idx).show();
	
	$("#photoViewPos li").removeClass("active");
	$("#photoViewPos li").eq(idx).addClass("active");

	localStorage['easing'] = easing;
	localStorage['ind'] = idx;
	add_local();	

// 이미지 슬라이드
	
	switch(easing){
		case "bounce":
			$('#photoViewImage img').eq(idx)
			.stop(true).css({'marginTop':'-1500px'})
			.animate({"marginTop":"60px"},200)
			.animate({"marginTop":"-60px"},200)
			.animate({"marginTop":"0"},300).delay(1500)
			.animate({"marginTop":"60px"},200)
			.animate({"marginTop":"-1500px"},300,function(){
				start();
			});
		break;

		case "fade":
			$('#photoViewImage img').eq(idx)
			.stop(true).css({'marginTop':'-600px', 'opacity':0})
			.animate({"marginTop":"0","opacity":"1"},500).delay(1500)
			.animate({"marginTop":"600px", 'opacity':0},500,function(){
				start();
			});
		break;

		case "flip":
				
			$('#photoViewImage img').parent().css({'perspective':'1200px'});
			$('.box').css({'width': 90,'opacity' : 0}).stop(true).animate(
				{'width' : '0'},
				{duration : 1500, easing:'easeOutBounce', progress : function(){
					var now = $(this).width();
					
					$('#photoViewImage img').eq(idx).css({
						'transform' : 'rotateX('+now+'deg)',
						'opacity' : 1-(now/90)
					});

				}}
			).delay(1500).animate(
				{'width' : '90'},
				{duration : 1500, easing:'easeInBounce', progress : function(){
					var now = $(this).width();
					$('#photoViewImage img').eq(idx).css({
						'transform' : 'rotateX('+now+'deg)',
						'opacity' : 1-(now/90)
					});
				}, complete : function(){
					start();
				}}
			)
		break;
	}
}

function init(userName){
	
	var str = "";
	
	str += '<div class="head_box">';
		str += '<div class="head_gnb">';
		str += '<ul class="gnb">';
			if('${sessionScope.member}' == null){
				str += '<li><a href="/">홈 </a></li>';
				str += '<li><a href="/login">로그인</a></li>';
				str += '<li><a href="/agree">회원가입</a></li>';
			}else{
				str += '<li><a href="/">홈 </a></li>';
				str += '<li><a href="logout">로그아웃</a></li>';
				str += '<li><a href="/mypage">마이페이지</a></li>';
			}
		str += '</ul>';
		str += '</div>';
	
		str += '<a href="/" class="logo"><img src="../images/logo.png" alt="logo">';
		str += '<p class="logo_text">ENDING <br> PLANNER</p></a>';
		str += '<div class="head_menu">';
			str += '<ul class="menu">';
				str += '<li><a href="/intro">소개</a></li>';
				str += '<li><a href="/make">제작</a></li>';
				str += '<li><a href="/memory/list">전시관</a></li>';
				str += '<li><a href="/notice/list">공지사항</a></li>';
			str += '</ul>';
		str += '</div>';
	str += '</div>';

		str += '<nav class="navbar">';
	        str += '<div class="navbar-header">';
	            str += '<a class="navbar-brand">앨범 제작하기</a>';
	        str += '</div>';
	    str += '</nav>';

		str += '<div id="container">';
			str += '<div class="tour-wrap" id="add_form">';
	            str += '<div>';
	                str += '<form>';
	                    str += '<div class="form-group">';
	                        str += '<input type="text" class="form-control" placeholder="앨범 제목">';
	                    str += '</div>';
	                    str += '<div class="form-group last-form">';
	                        str += '<input type="button" value="완료" class="btn btn-primary"> &nbsp;';
	                        str += '<input type="button" value="취소" class="btn btn-primary">';
	                    str += '</div>';
	                str += '</form>';
	            str += '</div>';
	        str += '</div>';

	        str += '<div class="tour-wrap">';
	            str += '<input type="button" value="앨범 추가" class="btn btn-cancel btn-tour-add"">';
	        str += '</div>';

        str += '</div>';
		return str;
}
