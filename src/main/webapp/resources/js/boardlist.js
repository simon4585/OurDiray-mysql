$(document).ready(function(){
     var br_nav1 = $('.korea_foodnav>h2>img');
     var br_nav2 = $('.overseas_foodnav>h2>img');
     var br_nav3 = $('.korea_tripnav>h2>img');
     var br_nav4 = $('.overseas_tripnav>h2>img');
     var br_nav5 = $('.accommodation_view>h2>img')
     var br_nav6 = $('.accommodation_comment>h2>img')

    $('.korea_foodnav').click(function(){
        $('.ko_fdnav_1').stop().slideToggle(500);
        if(br_nav1.is('.trigger1')){
            br_nav1.attr('src','/resources/img/hamburger.png');
            br_nav1.removeClass('trigger1')
        }else{
            br_nav1.attr('src','/resources/img/up.png');
            br_nav1.addClass('trigger1');
        }
        
    });
    $('.overseas_foodnav').click(function(){
        $('.se_fdnav_1').stop().slideToggle(500);
        if(br_nav2.is('.trigger2')){
            br_nav2.attr('src','/resources/img/hamburger.png');
            br_nav2.removeClass('trigger2')
        }else{
            br_nav2.attr('src','/resources/img/up.png');
            br_nav2.addClass('trigger2');
        }
    })

    $('.korea_tripnav').click(function(){
        $('.ko_trnav_1').stop().slideToggle(500);
        if(br_nav3.is('.trigger3')){
            br_nav3.attr('src','/resources/img/hamburger.png');
            br_nav3.removeClass('trigger3')
        }else{
            br_nav3.attr('src','/resources/img/up.png');
            br_nav3.addClass('trigger3');
        }
        
    });
    $('.overseas_tripnav').click(function(){
        $('.se_trnav_1').stop().slideToggle(500);
        if(br_nav4.is('.trigger4')){
            br_nav4.attr('src','/resources/img/hamburger.png');
            br_nav4.removeClass('trigger4')
        }else{
            br_nav4.attr('src','/resources/img/up.png');
            br_nav4.addClass('trigger4');
        }
    })

    $('.accommodation_view').click(function(){
        $('.ac_viewnav_1').stop().slideToggle(500);
        if(br_nav5.is('.trigger5')){
            br_nav5.attr('src','/resources/img/hamburger.png');
            br_nav5.removeClass('trigger5')
        }else{
            br_nav5.attr('src','/resources/img/up.png');
            br_nav5.addClass('trigger5');
        }
        
    });
    $('.accommodation_comment').click(function(){
        $('.ac_commentnav_1').stop().slideToggle(500);
        if(br_nav6.is('.trigger6')){
            br_nav6.attr('src','/resources/img/hamburger.png');
            br_nav6.removeClass('trigger6')
        }else{
            br_nav6.attr('src','/resources/img/up.png');
            br_nav6.addClass('trigger6');
        }
    })
});