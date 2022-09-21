/* GNB */
function gnbUI() {
	
	$('.nav > ul > li').on('mouseenter touchend', function(e) {
		e.stopPropagation();
//		e.preventDefault();2022-02-04 DEL
        $(this).addClass('active').siblings().removeClass('active');
		$('header').addClass('open');
	});
	
	//2022-02-04 ADD
    $('.nav > ul > li > a').on('click touchend', function(e) {
        e.preventDefault();
    });

	$('body').on('focusin', function() {
		if($('.nav li a').is(':focus')){
			$('header').addClass('open');
		} else {
			$('header').removeClass('open');
		}
	});

	$('.nav').on('mouseleave', function() {
		$('header').removeClass('open');
	});

	// 서브 메뉴 current 추가시 부모 메뉴 current 자동 추가
	if ($('.nav > ul ul li').hasClass('current')){
		$('.nav > ul ul li.current').parent().parent().addClass('current');
	}

	// 서브 메뉴 클릭시 current 삭제 및 추가 
	$('.nav > ul ul li').on('click touchend', function() {
		$('.nav > ul ul li').removeClass('current');
		$(this).addClass('current').parent().parent().addClass('current').siblings().removeClass('current');

		$("header").addClass("header-sub");
		$("main").addClass("main-sub");
		$(".nav").removeClass("open");
		$("body").removeClass("no-scroll");
		// scrollMenu();
	});
}

/* 모바일 scroll menu - 12.09 */
function scrollMenu(){
	var widthBar = 0;
	$('.iscroll ul li').each(function(i) {
		widthBar += $(this).outerWidth(true);
	});

	$('.iscroll ul').css({'width': widthBar + 40 + 'px'});
	if (window.outerWidth <= 1024) {
		var myScroll = new IScroll('.iscroll .scroll-box', {
			mouseWheel: true,
			scrollbars: true,
			bounce: true,
			mouseWheel: true,
			scrollbars: false,
			scrollX: true,
			scrollY: false,
			//click: true
		});
	}else{
		$('.iscroll .scroll-bar').css('width','100%');
	}
}

/* dialog scroll menu - 12.09 */
function dialogScrollMenu(){
	var widthBar = 0;
	$('.iscroll.all-popup ul li').each(function(i) {
		widthBar += $(this).outerWidth(true);
	});

	$('.iscroll.all-popup ul').css({'width': widthBar + 40 + 'px'});
	var dialogMyScroll = new IScroll('.iscroll.all-popup .scroll-box', {
		mouseWheel: true,
		scrollbars: true,
		bounce: true,
		mouseWheel: true,
		scrollbars: false,
		scrollX: true,
		scrollY: false,
		// click: true
	});
}

$(document).ready(function() {

	gnbUI();

	// 모바일 class 추가 삭제
	if (window.outerWidth >= 1024) {
		$("header").removeClass("header-m");
		$("main").removeClass("main-m");
		$(".total-search").removeClass("open");
		$(".nav").removeClass("open");
		$("body").removeClass("no-scroll");
	} else {
		$("header").addClass("header-m");
		$("main").addClass("main-m");
	}

	// 모바일 토탈 검색바 버튼
	$(".btn-search").on("click",function(){
		$(".total-search").toggleClass("open");
	});

	/* LNB */
	$(".lnb li").on("click",function(e){
		e.preventDefault();
		e.stopPropagation();
		$(this).addClass('current').siblings().removeClass('current');
		$("header").addClass("header-sub");
		$("main").addClass("main-sub");
		// scrollMenu();
	});

	// 모바일 header 영역
	$(".logo").on("click",function(){
		$("header").removeClass("header-sub");
		$("main").removeClass("main-sub");
	});

	$(".btn-home .mu-btn").on("click",function(){
		$("header").removeClass("header-sub");
		$("main").removeClass("main-sub");
	});

	$(".btn-menu .mu-btn").on("click",function(){
		$(".nav").addClass("open");
		$("body").addClass("no-scroll");
	});

	$(".btn-close .mu-btn").on("click",function(){
		$(".nav").removeClass("open");
		$("body").removeClass("no-scroll");
	});

	// 모바일 scroll menu
	setTimeout(function(){
		scrollMenu();	/* 12.28 - iscroll 모션  */ 		
	}, 100);

    //datepicker
	$('.mu-datepicker .mu-input').datepicker({
        showOn:"both", //이미지로 사용 button , both : 엘리먼트와 이미지 동시사용
        buttonText: "",
        monthNames: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'], 
        //dayNamesMin: ["일","월","화","수","목","금","토"],
        yearSuffix: "년",
        dateFormat: 'yy-mm-dd',
        showMonthAfterYear: true,
        changeMonth: true,
        changeYear: true
      });
});

/* 토글 */
$(function(){
	var $toggle_wrap = $(".toggle-wrap");
	var $toggle_btn = $(".toggle-btn > button");	
	var $toggle_con = $(".toggle-con");		

	$toggle_wrap.each(function(){
		$toggle_btn.on("click",function(){			
			var $toggle_con = $(this).parent().siblings('.toggle-con');			
			if($toggle_con.hasClass('open')){							
				$toggle_con.removeClass('open');	
				$toggle_con.slideUp(100);
				$(this).removeClass('active');	
				$(this).attr('title','열기');
			}else {
				$toggle_con.addClass('open');
				$toggle_con.slideDown(100);
				$(this).addClass('active');
				$(this).attr('title','닫기');
			}		
		});
	});
})

/* 테이블 토글 - 12.15 */
$(function(){	
	var $tbl_toggle_btn = $(".tbl-toggle-btn > button");	
	var $tbl_toggle_con = $(".tbl-toggle-con");	
	
	$tbl_toggle_btn.on("click",function(){				
		$tbl_toggle_con.slideToggle(0);			
	});
	
})

/* click open */
$(function(){
	var $open_wrap = $(".open-wrap");
	var $open_con = $open_wrap.find(".open-con");			
	var $open_btn = $open_wrap.find(".open-btn > button");			
	var $clo_btn = $open_wrap.find(".close-btn > button");
	
	$open_wrap.each(function(){
		$open_btn.on("click",function(){			
			$(this).parent().siblings('.open-con').addClass('open');						
		});
		$clo_btn.on("click",function(){			
			$(this).parent().parent('.open-con').removeClass('open');			
		});		
	});	
}) 

$(document).on("click", ".open-btn", function (e){	
	$(".open-con").addClass("open");
});  
$(document).mouseup(function (e){
	var LayerPopup = $(".open-con");
	if(LayerPopup.has(e.target).length === 0){
		LayerPopup.removeClass("open");
	}
});


/* 데이터 검색 aside */
$(function(){
	var $filter_btn = $(".sch-contents .filter-btn");
	var $filter_top = $(".sch-contents .filter-top");			
	var $mu_sec = $(".sch-contents .sort-section");			
	
	$filter_btn.on("click",function(){
		$filter_top.toggleClass('close')			
		$mu_sec.toggleClass('side-none');
	});		
})

/* 데이터 검색 mu-tab 모바일 width 가변 */
function iscrollWid(){
	var $winwid = $(window).width();	
	var $scroll_bar = $(".iscroll .scroll-bar");

	if(($winwid >= 930) && ($winwid <= 1024)) {            
		$scroll_bar.addClass('wid');
	}else{
		$scroll_bar.removeClass('wid');
	}
}  

/* tab */
$(function () {
	var $tab_area = $(".tab-area");			
	$tab_area.each(function(){		
		$(this).find(".tab-content").addClass("off");
		$(this).find(".tab-content:first").removeClass("off").addClass("on");
		
		var $tab_tit = $(this).find(".tab-tit");
		var $tab_con = $(this).find(".tab-content");
	
		$tab_tit.click(function (e) {
			e.preventDefault();
			$(this).siblings(".tab-tit").removeClass("active");
			$(this).siblings(".tab-tit").removeAttr("title");
			$(this).addClass("active");
			$(this).attr("title", "선택됨");
			$(this).parent().parent().siblings(".tab-content").removeClass("on").addClass("off");
			var activeTab = $(this).find("a").attr("class");			
			$("#" + activeTab).addClass("on").removeClass("off");
		});
	});    
});

/* 안내버튼 툴팁 */
$(function () {
	var tooltip_area = $(".mu-tooltip-control");//툴팁영역
	var tooltip_control = $(".mu-tooltip-control > button");//툴팁 열고닫는 버튼
	var tooltip_close = $(".mu-tooltip-close-btn button");//툴팁내부에 닫기아이콘버튼
	var LayerInfo = $(".mu-tooltip-info");//안내용툴팁

	tooltip_control.on('click', function(event) {
		event.stopPropagation();
		LayerInfo.toggleClass("open");
	});
	tooltip_close.on('click', function() {
		LayerInfo.removeClass("open");
	});

	// 외부영역 클릭시 툴팁닫기
	$(document).mouseup(function(e) {
		if (tooltip_area.has(e.target).length === 0) {
			LayerInfo.removeClass("open");
		}
	});
});

/* selectbox */
$(".mu-selectbox .mu-value").click(function (e) {
    e.preventDefault();
	if ($(this).parent().hasClass("disabled") == true){
		return false;
	}

	$(this).next(".mu-list").slideToggle("fast");
	$(this).parent().toggleClass("on");

	$(this).next(".mu-list").children("li").click(function(){
		if ($(this).hasClass("disabled") == true){
			//return false;
		} else if ($(this).children().hasClass("mu-checkbox") == true){
			//return false;
			//$(this).parent().siblings(".mu-value").text($(this).children(".mu-checkbox").children("input:checked").siblings("label").text() + " 외 1개");
		} else {
			$(this).parent().siblings(".mu-value").text($(this).text());
			
			$(this).addClass("active").siblings().removeClass("active");
			$(this).parent().hide();
			$(this).parent().parent().removeClass("on");
		}
	});

});

/* selectbox 외에 영역 클릭시 */
 $('#wrap').click(function(e){
  if( !$('.mu-selectbox').has(e.target).length ) $('.mu-selectbox').find(".mu-list").hide();
  
});

/* header scroll shadow */
$(function () {
	var header = $('.header');
	$(window).scroll(function(e){
	    if(header.offset().top !== 0){
	        if(!header.hasClass('header-shadow')){
	            header.addClass('header-shadow');
	        }
	    }else{
	        header.removeClass('header-shadow');
	    }
	});
});

/* 메인 motion - 12.03 -2 */
function animateSvg() {
	var cNum1 = 40;
	var cNum2 = 65;
	var cNum3 = 35;
	var cNum4 = 65;

	$('.circular-chart.chart-01 .circle').css({'stroke-dashoffset':'100'}).animate({'stroke-dashoffset':'100' - cNum1},1000, 'easeOutBounce');
	$('.circular-chart.chart-02 .circle').css({'stroke-dashoffset':'100'}).animate({'stroke-dashoffset':'100' - cNum2},1000, 'easeOutBounce');
	$('.circular-chart.chart-03 .circle').css({'stroke-dashoffset':'100'}).animate({'stroke-dashoffset':'100' - cNum3},1000, 'easeOutBounce');
	$('.circular-chart.chart-04 .circle').css({'stroke-dashoffset':'100'}).animate({'stroke-dashoffset':'100' - cNum4},1000, 'easeOutBounce');
}
animateSvg();

function visualRoll(){
	$(function() {
		var swiper = new Swiper('.right-channel.swiper-container', {			
			spaceBetween: 30,
			touchRatio: 0,//드래그 금지
			effect: 'fade',// 페이드 효과 사용
            speed : 2500,// 슬라이드 속도 설정 2022-01-26 ADD
            loop : true, // 무한 반복 2022-01-26 ADD
            //자동 2022-01-26 ADD    
            autoplay: {
               delay: 5000, //5초                 
            },
			pagination: {
				el: ".right-channel .swiper-pagination",
				clickable: true,
			},
            on: {
                slideChange:function() {
                    numRolling();
                    animateSvg(); 
                }
            },//active시 이벤트 활성화된 슬라이드가 바뀔때마다 호출됨 2022-01-26 ADD        		
		});	
		$(".right-channel .swiper-pagination-bullet").eq(0).click(function(){
			numRolling();
			animateSvg(); 
		});	
		
       //mouseover 2022-01-26 ADD
        $('.right-channel.swiper-container .swiper-slide').on('mouseover', function(){
            swiper.autoplay.stop();
          })
          $('.right-channel.swiper-container .swiper-slide').on('mouseout', function(){
            swiper.autoplay.start();
        })

	}); 	
}  

/* banner */	
function bannerRoll(){
	$(function() {
		var swiperBanner = new Swiper('.banner .swiper-container', {
				slidesPerView: 1,
				spaceBetween: 0,
				slidesPerGroup: 1,
				loop: true,
				loopFillGroupWithBlank: true,
				autoplay: {
				delay: 2500,
				disableOnInteraction: false,				
			},
			navigation: {
				nextEl: '.banner .swiper-button-next',
				prevEl: '.banner .swiper-button-prev',
			  },
			pagination: {
				el: ".banner .swiper-pagination",
				clickable: true,
			}
		});
		
		$(".swiper-button-pause").click(function(){
			swiperBanner.autoplay.stop();
			$(".swiper-button-pause").css({"display":"none"})
			$(".swiper-button-play").css({"display":"block"})
			//$('.banner').toggleClass('stop')
		});
	
		$(".swiper-button-play").click(function(){
			swiperBanner.autoplay.start();
			$(".swiper-button-play").css({"display":"none"})
			$(".swiper-button-pause").css({"display":"block"})
			//$('.banner').toggleClass('stop')
		});		
	});
}
/* //12.03-2 */

/* 메인 count 애니메이션 */
function numberWithCommas(x) {
	return x;
}
function numRolling(){
	$(function() {
		var dataSet1 = $('#main_dataset_cnt').val();
		var dataSet2 = $('#main_openapi_cnt').val();
		var dataSet3 = $('#main_file_cnt').val();
		var dataSet4 = $('#main_link_cnt').val();
		var dataSet5 = $('#main_std_cnt').val();
		var dataSet6 = $('#main_bbs_cnt').val();
		var dataSet7 = $('#main_data_cnt').val();

		$({ val : 0 }).animate({ val : dataSet1, val1 : dataSet7}, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				var num2 = numberWithCommas(Math.floor(this.val1));
				$(".count-01").css("font-size", "31.5px");
				$(".data-info-txt .count-01").text(num+ "/"+ num2);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				var num2 = numberWithCommas(Math.floor(this.val1));
				$(".count-01").css("font-size", "31.5px");
				$(".data-info-txt .count-01").text(num+"/"+num2);
			}
		});
		$({ val : 0 }).animate({ val : dataSet2 }, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-02").text(num);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-02").text(num);
			}
		});

		$({ val : 0 }).animate({ val : dataSet3 }, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-03").text(num);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-03").text(num);
			}
		});
		$({ val : 0 }).animate({ val : dataSet4 }, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-04").text(num);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-04").text(num);
			}
		});
		$({ val : 0 }).animate({ val : dataSet5 }, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-05").text(num);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-05").text(num);
			}
		});
		$({ val : 0 }).animate({ val : dataSet6 }, {
			duration: 2000,
			step: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-06").text(num);
			},
			complete: function() {
				var num = numberWithCommas(Math.floor(this.val));
				$(".data-info-txt .count-06").text(num);
			}
		});
	});
}
/**/

/* 메인 인기검색어 */ 
$(function(){
	$popular_tit = $(".popular-word > dl");
	$popular_sub = $(".popular-word > dl > dd");	

	$popular_tit.bind("mouseenter focusin", function() {
		$(this).addClass("on").siblings().removeClass("on");		
		$(this).find($popular_sub).css({"height":"auto"});		
	});
	$popular_tit.bind("mouseleave focusout", function() {
		$(this).removeClass("on");		
		$(this).find($popular_sub).css({"height":"0"});
	});
});

/* FAQ - 12.10-2*/
/*
$(function(){
	var $faq_que = $('.faq-que a');
	var $faq_ans = $('.faq-ans');
	
	$faq_que.click(function(e){	
		e.preventDefault();
		$next_ans = $(this).parent().parent($faq_que).next($faq_ans);

		$(this).parent().parent($faq_que).toggleClass("on");
		$(this).parent().parent().siblings($faq_que).removeClass("on");
		$next_ans.slideToggle(0);	
		$faq_ans.not($next_ans).slideUp(0);	
	})
})
*/
/* FAQ */
/* $(function(){
	var $faq_que = $('.faq-que a');
	var $faq_ans = $('.faq-ans');
	var $faq_que_first = $('.faq-que:nth-of-type(1)');
	var $faq_ans_first = $('.faq-ans:nth-of-type(2)');

	$faq_que_first.addClass("on");
	$faq_ans_first.slideDown(0);	
	
	$faq_que.click(function(e){	
		e.preventDefault();
		$next_ans = $(this).parent().parent($faq_que).next($faq_ans);

		$(this).parent().parent($faq_que).toggleClass("on");
		$(this).parent().parent().siblings($faq_que).removeClass("on");
		$next_ans.slideToggle(0);	
		$faq_ans.not($next_ans).slideUp(0);	
	})
}) */

/* Top 버튼 */
$(function(){
	var $go_top = $('.go-top-button');	
	
	$go_top.click(function(){
		window.scrollTo({
			top: 0,
			left: 0,
			behavior: 'smooth'
		});		
	})
})

/* 메인 검색 input focus,blur 22-02-04/22-02-15 DEL
$(function(){
    var $input_focus = $(".main-m .total-channel-search .mu-input-icon .mu-input");
    var $floating_btn = $(".floating-button-wrap");   

    $input_focus.on({
        focus:function(){
            $floating_btn.animate({right:'-100px'}, 300);
        },
        blur:function(){
            $floating_btn.animate({right:'20px'}, 300);
        }
    });
    
})*/

/* 페이지내부링크이동 21-01-04 */
function linkMove(seq){
    var offset = $("#public" + seq).offset();
    $('html, body').animate({scrollTop : offset.top-60+"px"}, 300);/* Haeder때문에 px추가 */
}

/* 비밀번호 마스킹 토글버튼 22-01-24 */
$(function(){
    var $pw = $(".mu-input-pw");
    var $mask = $(".mu-input-pw .btn-pw-mask");

    $mask.on('click',function(){
        $pw.toggleClass("show");
        if($(".mu-input-pw").hasClass("show")){
            $(this).children("i").toggleClass("eye-on eye-off");
            $(this).children("span").text("비밀번호 숨김 처리");
            $pw.find("input").attr("type","text");
        }else{        
            $(this).children("i").toggleClass("eye-off eye-on");
            $(this).children("span").text("비밀번호 숨김 해제");
            $pw.find("input").attr("type","password");
        }
    })
})

/* 만족도 별점선택하기 22-01-24 */
function rateStar(){
    var $rate = $(".reviews-mark button.rate-star");
    $rate.on('click', function() {
        $(this).siblings().removeClass("on");
        $(this).addClass("on").prevAll($rate).addClass("on");
    })
}

$(window).on("load",function() {	
	iscrollWid(); //iscroll 
	visualRoll(); //main-visial
	bannerRoll(); //main-banner	
	numRolling(); /* 12.03 */				
	animateSvg(); /* 12.03 */
	dialogScrollMenu();	/* 12.09 */
});

$(window).on("resize",function() {
	// 모바일 class 추가 삭제
	if (window.outerWidth >= 1024) {
		$("header").removeClass("header-m");
		$("main").removeClass("main-m");
		$(".total-search").removeClass("open");
		$(".nav").removeClass("open");
		$("body").removeClass("no-scroll");
	} else {
		$("header").addClass("header-m");
		$("main").addClass("main-m");	
	}	
	
	scrollMenu();// 모바일 scroll menu
	iscrollWid(); //iscroll 	
});

/* 0510 메인카드뉴스 슬라이드추가 */	
$(function() {
	var swiperCard = new Swiper('.card-slide-1 .swiper-container', {
			slidesPerView: 1,
			spaceBetween: 0,
			slidesPerGroup: 1,
			loop: true,
			loopFillGroupWithBlank: true,
			autoplay: {
			delay: 2500,
			disableOnInteraction: false,				
		},
		navigation: {
			nextEl: '.card-slide-1 .swiper-button-next',
			prevEl: '.card-slide-1 .swiper-button-prev',
		  }
	});
});

$(function() {
	var swiperCard = new Swiper('.card-slide-2 .swiper-container', {
			slidesPerView: 1,
			spaceBetween: 0,
			slidesPerGroup: 1,
			loop: true,
			loopFillGroupWithBlank: true,
			autoplay: {
			delay: 2500,
			disableOnInteraction: false,				
		},
		navigation: {
			nextEl: '.card-slide-2 .swiper-button-next',
			prevEl: '.card-slide-2 .swiper-button-prev',
		  }
	});
});

$(function() {
	var swiperCard = new Swiper('.card-slide-3 .swiper-container', {
			slidesPerView: 1,
		    spaceBetween: 0,
			slidesPerGroup: 1,
			loop: true,
			loopFillGroupWithBlank: true,
			autoplay: {
			delay: 2500,
			disableOnInteraction: false,				
		},
		navigation: {
			nextEl: '.card-slide-3 .swiper-button-next',
			prevEl: '.card-slide-3 .swiper-button-prev',
		  }
	});
});

$(function() {
	var swiperCard = new Swiper('.card-slide-4 .swiper-container', {
			slidesPerView: 1,
			spaceBetween: 0,
			slidesPerGroup: 1,
			loop: true,
			loopFillGroupWithBlank: true,
			autoplay: {
			delay: 2500,
			disableOnInteraction: false,				
		},
		navigation: {
			nextEl: '.card-slide-4 .swiper-button-next',
			prevEl: '.card-slide-4 .swiper-button-prev',
			
		  }
	});
});
/* 0510 메인카드뉴스 슬라이드추가 끝 */
