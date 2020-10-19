$(document).ready(function(){
    var $nav_t1 = $('.nav_t1').children('li');
    var now_num = 0;

    fade();
    
    function fade(){
        $nav_t1.mouseenter(function(){
            now_num = $(this).index();
            $('.fade_common').stop().fadeOut(500);
            $('.nav>ul').eq(now_num+1).stop().fadeIn(1000);
        });
        $('.nav, fade_common>li').mouseleave(function(){
        $('.fade_common').stop().fadeOut(500);
    });
    }

    var $nav_t2 = $('.nav2_t1').children('li');
    var now_num2 = 0;

    fade2();
    
    function fade2(){
        $nav_t2.mouseenter(function(){
            now_num2 = $(this).index();
            $('.fade_common2').stop().fadeOut(500);
            $('.nav2>ul').eq(now_num2+1).stop().fadeIn(1000);
        });
        $('.nav2, fade_common2>li').mouseleave(function(){
        $('.fade_common2').stop().fadeOut(500);
    });
    }
});
$(document).ready(function(){
    
    var a = 0;
    $(window).scroll(function(){
        a = $(document).scrollTop();
        if(a < 100){
        $('.header2').stop().fadeOut();
        $('.header').stop().fadeIn();
        }else{
        $('.header').stop().fadeOut();
        $('.header2').stop().fadeIn();
        }
        
    });
});