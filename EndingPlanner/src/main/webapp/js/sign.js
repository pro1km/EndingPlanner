$(function(){
    var pick = $(".list ul");

        pick.click(function(){
        pick.removeClass("li_3")
        $(this).addClass("li_3")

        var tab = $(this).find("li").attr("id");
        $(".out_content").css("display","none");
        $("#tab"+tab).css("display","inline-block");
    });
});