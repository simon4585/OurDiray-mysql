$(document).ready(function(){
    $('.c2_domestic').click(function(){
        $('.c2_overseas img').css('display','none');
        $('.c2_domestic img').css('display','inline');
        $('.b2').css('display','none');
        $('.b1').css('display','block');
        $('.c2_overseas').css('color','#8b8989');
        $('.c2_domestic').css('color','#000');
    });
    $('.c2_overseas').click(function(){
        $('.c2_domestic img').css('display','none');
        $('.c2_overseas img').css('display','inline');
        $('.b1').css('display','none');
        $('.b2').css('display','block');
        $('.c2_overseas').css('color','#000');
        $('.c2_domestic').css('color','#8b8989');
    });
    $('.c3_domestic').click(function(){
        $('.c3_overseas img').css('display','none');
        $('.c3_domestic img').css('display','inline');
        $('.c3_b2').css('display','none');
        $('.c3_b1').css('display','block');
        $('.c3_overseas').css('color','#8b8989');
        $('.c3_domestic').css('color','#000');
    });
    $('.c3_overseas').click(function(){
        $('.c3_domestic img').css('display','none');
        $('.c3_overseas img').css('display','inline');
        $('.c3_b1').css('display','none');
        $('.c3_b2').css('display','block');
        $('.c3_overseas').css('color','#000');
        $('.c3_domestic').css('color','#8b8989');
    });
});