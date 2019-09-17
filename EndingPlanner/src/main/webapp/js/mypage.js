$(function(){

    var pick01 = $(".mypage_menu span:nth-child(1)");
    var pick02 = $(".mypage_menu span:nth-child(2)");
    var pick03 = $(".mypage_menu span:nth-child(3)");

    pick01.on("click", function(){
        pick01.removeClass('hide');
        pick01.addClass('view');
        pick02.removeClass('view');
        pick02.addClass('hide');
        pick03.removeClass('view');
        pick03.addClass('hide');
        $(".my_albumbox").css('display','block');
        $(".my_secretbox").css('display','none');
        $(".my_hallbox").css('display','none');
    });

    pick02.on("click", function(){
        pick02.removeClass('hide');
        pick02.addClass('view');
        pick01.removeClass('view');
        pick01.addClass('hide');
        pick03.removeClass('view');
        pick03.addClass('hide');
        $(".my_secretbox").css('display','block');
        $(".my_albumbox").css('display','none');
        $(".my_hallbox").css('display','none');
    });

    pick03.on("click", function(){
        pick03.removeClass('hide');
        pick03.addClass('view');
        pick01.removeClass('view');
        pick01.addClass('hide');
        pick02.removeClass('view');
        pick02.addClass('hide');
        $(".my_hallbox").css('display','block');
        $(".my_albumbox").css('display','none');
        $(".my_secretbox").css('display','none');
    });
});