$(document).ready(function(){
    $('.c2_domestic').click(function(){
        $('.c2_overseas img').css('display','none');
        $('.c2_domestic img').css('display','inline');
        $('.b2').css('display','none');
        $('.b1').css('display','block');
    });
    $('.c2_overseas').click(function(){
        $('.c2_domestic img').css('display','none');
        $('.c2_overseas img').css('display','inline');
        $('.b1').css('display','none');
        $('.b2').css('display','block');
    });
});