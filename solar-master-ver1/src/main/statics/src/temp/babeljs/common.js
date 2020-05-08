
$(document).ready(function () {
    var pageHtml = ["/about_us.html", "/background.html", "/introduction.html", "/mini_power_plant.html", "/diss.html", "/installation_case.html", "/service.html", "/check_list.html", "/company_info.html", "/product_info.html", "/fund.html", "/situation.html", "/situation_as.html", "/as.html", "/notice.html", "/mtm.html", "/mtm_list.html", "/qna.html", "/install_apply.html", "/install_apply_step2.html"];
    var pageTitle = ["인사말", "설립배경", "소개 및 역할", "태양광 미니발전소란?", "보급목표", "설치사례", "서비스 소개", "사전 확인 사항", "보급업체 정보", "상품 정보", "보조금 정보", "진행 상황 조회", "진행 상황 조회", "AS 신청", "공지사항", "1:1문의", "1:1문의", "자주하는질문", "설치신청", "설치신청"];

    pageHtml.forEach(function (item, index, array) {
        if (item == location.pathname) {
            var pageTitleName = pageTitle[index];
            $(".sub-content-title").text(pageTitleName);
        }
    });

    $('.dropdown').click(function () {
        $(this).siblings('.dropdown').removeClass('active');
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).addClass('active');
        }
        $(this).siblings('.dropdown').removeClass('drop-open');
        if ($(this).hasClass('drop-open')) {
            $(this).removeClass('drop-open');
        } else {
            $(this).addClass('drop-open');
        }
    });

    $('header').mouseenter(function () {
        $(this).addClass('active');
        if ($(this).children('div').hasClass('sub-header-wrap')) {}
    });

    $('header').mouseleave(function () {
        $(this).removeClass('active');
    });
    $('.top-button').click(function () {
        $('html,body').animate({ scrollTop: '0' }, 250);
    });
    $(window).scroll(function () {
        if ($(this).scrollTop() >= 400) {
            $('.top-button').fadeIn(50);
        } else {
            $('.top-button').fadeOut(50);
        }
    });

    $('.company-content-wrap-grid div button').click(function () {
        $('.pop-wrap').addClass('pop-open');
    });

    $('.pop-close').click(function () {
        $('.pop-wrap').removeClass('pop-open');
    });

    $('.pop-wrap').click(function () {
        $('.pop-wrap').removeClass('pop-open');
    });

    $('.qna-wrap').click(function () {
        $(this).addClass('on');
        if ($(this).addClass('on')) {
            $(this).siblings().removeClass('on');
        }
        if ($(this).hasClass('on')) {
            $(this).removeClass('border-show');
        }
        $(this).siblings().removeClass('border-show');
        $(this).prev().addClass('border-show');
        $(this).find('.qna-q').attr('src', 'img/qna-on-q.png');
        $(this).siblings().find('.qna-q').attr('src', 'img/qna-off-q.png');
        $(this).find('.arrow-bottom').attr('src', 'img/arrow-top.png');
        $(this).siblings().find('.arrow-bottom').attr('src', 'img/arrow-bottom.png');
    });
    /* alert pop */

    $('.alert-pop').click(function () {
        alert("서비스 준비중 입니다.");
        return false;
    });

    $('.company-content-wrap-grid div button').click(function () {
        var wapperHeight = $('#wrapper').outerHeight();
        $('.pop-wrap').css('height', wapperHeight);
    });

    var tabs = $('.tabs').find('a');
    var panels = $('.panel');
    var lastTab = tabs.filter('.on');
    var lastPanel = $(lastTab.attr('href'));
    panels.hide();
    lastPanel.show();
    tabs.click(function (e) {
        e.preventDefault();
        var thisTab = $(this);
        var thisPanel = $(thisTab.attr('href'));
        lastTab.removeClass('on');
        thisTab.addClass('on');
        lastPanel.hide();
        thisPanel.show();
        lastPanel = thisPanel;
        lastTab = thisTab;
    });

    var num = $('.num').find('a');
    var table = $('.table');
    var lastNum = num.filter('.on');
    var lastTable = $(lastNum.attr('href'));
    table.hide();
    lastTable.show();
    num.click(function (e) {
        e.preventDefault();
        var thisNum = $(this);
        var thisTable = $(thisNum.attr('href'));
        lastNum.removeClass('on');
        thisNum.addClass('on');
        lastTable.hide();
        thisTable.show();
        lastTable = thisTable;
        lastNum = thisNum;
    });

    $('.id-content').find('div').click(function () {
        $(this).addClass('on');
        if ($(this).hasClass('on')) {
            $(this).siblings().removeClass('on');
        }
    });

    $('#applicant2').change(function () {
        if ($('#applicant2').is(':checked')) {
            $('.hide-content').addClass('ib-content');
        }
    });
    $('#applicant1').change(function () {
        if ($('#applicant1').is(':checked')) {
            $('.hide-content').removeClass('ib-content');
        }
    });
    $('#h-name').change(function () {
        var state = $('#h-name option:selected').val();
        console.log(state);
        if (state === 'h-name02') {
            $('.details-02 input').prop('disabled', false);
            $('.details input').prop('disabled', true);
        } else {
            $('.details-02 input').prop('disabled', true);
            $('.details input').prop('disabled', false);
        }
    });

    $('.plus-table div').click(function () {
        $(this).parent().siblings('.number').addClass('check');
        if ($(this).parent().siblings('.number').hasClass('check')) {
            $(this).parent().parent().siblings('.main-item').find('.number').removeClass('check');
        }
        if ($('.number1').hasClass('check')) {
            $('.focus-content').addClass('check-content');
            $('.number2-1').removeClass('check-content');
        }
        if ($('.number2').hasClass('check')) {
            $('.focus-content').addClass('check-content');
            $('.number1-1').removeClass('check-content');
        }
    });

    $('.lg-btn').click(function () {
        $('.login-popup').show();
    });
    $('.login-popup .close').click(function () {
        $('.login-popup').hide();
    });
});