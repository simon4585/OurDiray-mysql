$(document).ready(function(){
    Slide();
});
    
    function Slide(){
        var wid = 0;
        var now_num = 0;
        var $slide_length = 0;
        var $panel = $('.panel');
        var $dotli = $('.dot>li');
        var $panelLi = $panel.children('li');
        auto = null;

        function init(){
            wid = $('.slide').width();
            now_num = $('.dot>li.on').index();
            $slide_length = $dotli.length; 
        }

        function SlideEvent(){
            
            $dotli.click(function(){
                now_num = $(this).index();
                SlideMove();
            });

            $('.prev').click(function(){
                PrevChkPlay();
            });

            $('.next').click(function(){
                NextChkPlay();
            });

            AutoPlay();

            AutoPlayStop();

            AutoPlayReplay();

            resize();
        }

        function AutoPlay(){
            auto = setInterval(function(){
                NextChkPlay();
            },3000);
        }

        function AutoPlayStop(){
            $panelLi.mouseenter(function(){
                clearInterval(auto);
            });
        }

        function AutoPlayReplay(){
            $panelLi.mouseleave(function(){
                auto = setInterval(function(){
                    NextChkPlay();
                },3000);
            })
        }

        function PrevChkPlay(){
            if(now_num == 0){
                now_num = $slide_length-1;
            }else{
                now_num--;
            }
            SlideMove();
        }

        function NextChkPlay(){
            if(now_num == $slide_length-1){
                now_num = 0;
            }else{
                now_num++;
            }
            SlideMove();
        }

        function SlideMove(){
            $panel.stop().animate({
                'margin-left': -wid * now_num
            });
            $dotli.removeClass('on');
            $dotli.eq(now_num).addClass('on');
        }
        function resize(){
            $(window).resize(function() {
                init();
                $panel.css({
                  'margin-left': -wid * now_num
                });
              });
            }
        init();
        SlideEvent();
    }