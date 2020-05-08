
$(document).ready(function () {
    var pageHtml = [
        "/mobile/mobile_notice.html", 
        "/mobile/mobile_mtm.html",
        "/mobile/mobile_qna.html",
        "/mobile/mobile_member_info.html",
        "/mobile/mobile_join_01.html",
        "/mobile/mobile_install_apply.html",
        "/mobile/mobile_find_account.html",
        "/mobile/mobile_company_info.html",
        "/mobile/mobile_company_deep.html",
        "/mobile/mobile_situation.html",
        "/mobile/mobile_login.html",
        "/mobile/mobile_product_info.html",
        "/mobile/mobile_as.html",
        "/mobile/mobile_check_list.html",
        "/mobile/mobile_about_us.html",
        "/mobile/mobile_background.html",
        "/mobile/mobile_introduction.html",
        "/mobile/mobile_diss.html",
        "/mobile/mobile_installation_case.html",
        "/mobile/mobile_mini_power_plant.html",
        "/mobile/mobile_fund.html",
        "/mobile/mobile_condition.html",
        "/mobile/mobile_find_password.html"
    ];
    var pageTitle = [
        "공지사항", 
        "1:1 문의",
        "자주하는 질문",
        "회원가입",
        "이용약관",
        "설치신청",
        "비밀번호 찾기",
        "보급업체정보",
        "보급업체정보",
        "진행 상황 조회",
        "로그인",
        "상품 정보",
        "A/S 신청",
        "사전 확인사항",
        "인사말",
        "설립배경",
        "소개 및 역할",
        "보급목표",
        "설치과정",
        "미니발전소란?",
        "보조금 정보",
        "이용약관",
        "비밀번호 찾기"
    ];
    
    pageHtml.forEach(function(item, index, array){
        if(item == location.pathname){
            var pageTitleName = pageTitle[index];
            $(".logo").text(pageTitleName);
        }      
    });
    
    
   $('.dropdown').click(function () {
       $(this).siblings('.dropdown').removeClass('active');
       if( $(this).hasClass('active') ){
           $(this).removeClass('active');
       }else {
           $(this).addClass('active');
       }
       $(this).siblings('.dropdown').removeClass('drop-open');
       if( $(this).hasClass('drop-open') ){
           $(this).removeClass('drop-open');
       }else {
           $(this).addClass('drop-open');
       }
   });
    
   $('header').mouseenter(function () {
       $(this).addClass('active');
       if( $(this).children('div').hasClass('sub-header-wrap') ){
       }
   });
    
    $('header').mouseleave(function () {
        $(this).removeClass('active');
    });
    
    $('.company-content-wrap-grid div button').click(function(){
        $('.pop-wrap').addClass('pop-open');
    });
    
    $('.pop-close').click(function(){
        $('.pop-wrap').removeClass('pop-open');
    });
    
    $('.pop-wrap').click(function(){
        $('.pop-wrap').removeClass('pop-open');
    });
    
    $('.qna-wrap').click(function(){
        $(this).addClass('on');
        if($(this).addClass('on')) {
            $(this).siblings().removeClass('on');
        }
        if($(this).hasClass('on')) {
            $(this).removeClass('border-show');
        }
        $(this).siblings().removeClass('border-show');
        $(this).prev().addClass('border-show');
        $(this).find('.qna-q').attr('src','img/qna-on-q.png');
        $(this).siblings().find('.qna-q').attr('src','img/qna-off-q.png');
        $(this).find('.arrow-bottom').attr('src','img/arrow-top.png');
        $(this).siblings().find('.arrow-bottom').attr('src','img/arrow-bottom.png');
    });
    /* alert pop */    
    
    $('.alert-pop').click(function(){
       alert("서비스 준비중 입니다.");
       return false;
    });
    
    
    $('.company-content-wrap-grid div button').click(function(){
        var wapperHeight = $('#wrapper').outerHeight();
        $('.pop-wrap').css('height',wapperHeight);
    });
    
    
    
    var tabs=$('.tabs').find('a');
    var panels=$('.panel');
    var lastTab=tabs.filter('.on');
    var lastPanel=$(lastTab.attr('href'));
    panels.hide();
    lastPanel.show();
    tabs.click(function(e){
        e.preventDefault();
        var thisTab=$(this);
        var thisPanel=$(thisTab.attr('href'));
        lastTab.removeClass('on');
        thisTab.addClass('on');
        lastPanel.hide();
        thisPanel.show();
        lastPanel=thisPanel;
        lastTab=thisTab;
    });
    
    var num=$('.num').find('a');
    var table=$('.table');
    var lastNum=num.filter('.on');
    var lastTable=$(lastNum.attr('href'));
    table.hide();
    lastTable.show();
    num.click(function(e){
        e.preventDefault();
        var thisNum=$(this);
        var thisTable=$(thisNum.attr('href'));
        lastNum.removeClass('on');
        thisNum.addClass('on');
        lastTable.hide();
        thisTable.show();
        lastTable=thisTable;
        lastNum=thisNum;
    });
    
    $('.id-content').find('div').click(function(){
        $(this).addClass('on');
        if($(this).hasClass('on')) {
            $(this).siblings().removeClass('on');
        }
    });

    $('#applicant2').change(function(){
        if($('#applicant2').is(':checked')){
            $('.hide-content').addClass('ib-content');
        }
    });
    $('#applicant1').change(function(){
        if($('#applicant1').is(':checked')){
            $('.hide-content').removeClass('ib-content');
        }
    });
    $('#h-name').change(function(){
        var state = $('#h-name option:selected').val();
        console.log(state);
        if (state === 'h-name02') {
            $('.details-02 input').prop('disabled',false);
            $('.details input').prop('disabled',true);
        }else {
            $('.details-02 input').prop('disabled',true);
            $('.details input').prop('disabled',false);
        }
    });
    
 
    $('.q-wrap-content').click(function(){
        $(this).siblings().slideToggle(200);
        $(this).toggleClass('rotate');
    });
    
    $('.last-item').click(function() {
    	$('html,body').animate({scrollTop: 9999});
    });
    
    $('.notice-search-button').click(function(){
        $(this).parent().addClass('on');
    });
    
    $('.search-box .cancle').click(function(){
        alert("test");
    });
    
    
//    $('.title-depth').click(function(){
//        $(this).siblings('.sub-depth').slideToggle(300);
//    });  메뉴토글
    
    $('.login-popup').hide();
    $('.login-popup .close').click(function(){
        $('.login-popup').hide();
    });
    
    
    $('.menu-section').hide();
    $('.nav-button').click(function(){
        $(this).siblings('.menu-section').show();
    });
    $('.menu-section > span').click(function(){
        $(this).parent().hide();
    });
    
    
    $('.top-button').click(function(){
        $('html,body').animate({scrollTop:'0'},250);
    });
    
    $(window).on('scroll',function() {
       if($(this).scrollTop() >= 100) {
            $('.top-button').show();
        }else if ( $(this).scrollTop() < 100 ){
            $('.top-button').hide();    
        }
    });
    $('.menu-section, .message-popup.mobile').on('show', function() {
        $('body').css('overflow', 'hidden');
    });
    $('.menu-section, .message-popup.mobile').on('hide', function() {
        $('body').css('overflow', 'auto');
    });
});
(function ($) {
    $.each(['show', 'hide'], function (i, ev) {
        var el = $.fn[ev];
        $.fn[ev] = function () {
            this.trigger(ev);
            return el.apply(this, arguments);
        };
    });
})(jQuery);
