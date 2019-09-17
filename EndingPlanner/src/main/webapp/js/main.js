$(function() {
	slider.on();
	hambuger();//햄버거 메뉴 실행
	
});

ok = true;

var slider = {

	on : function() {

		this.timer = setTimeout(function() {
			animation('right');
		}, 5000);

	},
	off : function() {
		clearTimeout(this.timer);
	}

}

var pos = 1;

function animation(type) {

	if (ok == true) {

		ok = false;

		slider.off();

		switch (type) {

		case "left":
			pos = pos == 1 ? 3 : pos - 1;
			$('.main_contents > ul').stop().animate({
				'margin-left': '-0px'
			}, function() {
				$('.main_contents > ul > li:last-child').prependTo('.main_contents > ul');
				$('.main_contents > ul').css({
					'margin-left': '-252px'
				});
			});	
			break;
		case "right":
			pos = pos == 3 ? 1 : pos + 1;
			$('.main_contents > ul').stop().animate({
				'margin-left': '-504px'
			}, function() {
				$('.main_contents > ul > li:first-child').appendTo('.main_contents > ul');
				$('.main_contents > ul').css({
					'margin-left': '-252px'
				});
			});
			break;
		default:
			pos = parseInt(type);
			break;

        }
        $(".visual-slider ul li").removeClass('active');
        $(".main_btn ul li:nth-child(n+2):nth-child(-n+4").removeClass('pick');
        $(".main_btn ul li:nth-child(n+2):nth-child(-n+4").addClass('btn');
        

		$(".slide_bg").animate(
				{
					"left" : "-" + (pos - 1) * 100 + '%'
				},
				700,
				function() {          
                    $(".visual-slider ul li:nth-child(" + pos + ")").addClass('active');
                    $(".main_btn ul li:nth-child(" + (pos+1) + ") ").removeClass('btn');
					$(".main_btn ul li:nth-child(" + (pos+1) + ") ").addClass('pick');
				})

		slider.on();

		ok = true;

	}

}

var scrollEvent = false;
var count = 0;
var delta = 300;
var timer = null;

//창을 열었을때 바로 실행되는 스크립트
$("html,body").on("mousewheel DOMMouseScroll",function(e){
	//e.preventDefault();
	var m = e.originalEvent.wheelDelta;
	var window_size = $(window).width();

	//마우스 휠 업
	if(m > 1 && scrollEvent == false && count >= 1 && window_size >= 1000){
	   scrollEvent = true;
	   count--;
	   $("html,body").stop().animate({scrollTop:$('.page'+(count+1)).offset().top},
	   {duration:500, complete: function(){
		  scrollEvent = false;}
		});
	} 
	//마우스 휠 다운
	else if (m < 1 && scrollEvent == false && count < 2 && window_size >= 1000){
		scrollEvent = true;
		count++;
		$("html,body").stop().animate({scrollTop:$('.page'+(count+1)).offset().top},
		{duration:500, complete: function(){
			scrollEvent = false;}
		});
	}
});	

//창 사이즈가 변하면 실행되는 스크립트
function resizeDone(){
	$("html,body").on("mousewheel DOMMouseScroll",function(e){
		//e.preventDefault();
   		var m = e.originalEvent.wheelDelta;
		var window_size = $(window).width();

  		//마우스 휠 업
   		if(m > 1 && scrollEvent == false && count >= 1 && window_size >= 1000){
       		scrollEvent = true;
       		count--;
       		$("html,body").stop().animate({scrollTop:$('.page'+(count+1)).offset().top},
       		{duration:500, complete: function(){
	       		scrollEvent = false;}
    		});
   		} 
		//마우스 휠 다운
		else if (m < 1 && scrollEvent == false && count < 2 && window_size >= 1000){
			scrollEvent = true;
			count++;
			$("html,body").stop().animate({scrollTop:$('.page'+(count+1)).offset().top},
			{duration:500, complete: function(){
				scrollEvent = false;}
			});
		}
	});	
}

//창 사이즈가 변할 때
$( window ).on( 'resize', function( ) {
    clearTimeout( timer );
    timer = setTimeout( resizeDone, delta );
} );

//햄버거 메뉴
function hambuger(){
	var burger = $('.dropdown_box');

	burger.on('click', function(e){
		e.preventDefault();
		$(".menu_ham").toggleClass('active');
	});
}

$(document).ready(function(){
	$(".dropdown_box").click(function(){
		var submenu = $(this).next("ul");

		if(submenu.is(":visible")){
			submenu.slideUp();
		}else{
			submenu.slideDown();
		}
	});
});

$(document).ready(function() {
  $('.say_right').click(function() {
    $('.bot_saytextbox > ul').stop().animate({
      'margin-left': '-2000px'
    }, function() {
      $('.bot_saytextbox > ul > li:first-child').appendTo('.bot_saytextbox > ul');
      $('.bot_saytextbox > ul').css({
        'margin-left': '-1000px'
      });
    });
  });
  $('.say_left').click(function() {
    $('.bot_saytextbox > ul').stop().animate({
      'margin-left': '0px'
    }, function() {
      $('.bot_saytextbox > ul > li:last-child').prependTo('.bot_saytextbox > ul');
      $('.bot_saytextbox > ul').css({
        'margin-left': '-1000px'
      });
    });
  });
});

