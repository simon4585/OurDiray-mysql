$(document).ready(function(){
    slide();
});

function slide(){

    var $panel2 = $('.c2_panel>li');
    var $index2 = 0;
    var $dotli2 = $('.c2_dot>li');

    function init(){
        $panelLi2 = $panel2.length;
        $index2 = $('.c2_dot>li.c2_on').index();
    }

    function slideEvent(){
        $dotli2.click(function(){
            $index2 = $(this).index();
            CheckPlay();
        });
        $('.c2_next').click(function(){
            NexChkPly();
        });
        $('.c2_prev').click(function(){
            PevChkPly();
        });
    }

    function NexChkPly(){
        if($index2 == $panelLi2 - 1){
            $index2 = 0;       
        }else{
            $index2++;
        }
        CheckPlay();
    }

    function PevChkPly(){
        if($index2 == 0){
            $index2 = $panelLi2 -1;       
        }else{
            $index2--;
        }
        CheckPlay();
    }

    function CheckPlay(){
        $panel2.stop().fadeOut(1000);
        $panel2.eq($index2).stop().fadeIn(1000);
        $dotli2.removeClass('c2_on');
        $dotli2.eq($index2).addClass('c2_on');
        console.log($index2);
    }
    init();
    slideEvent();
}