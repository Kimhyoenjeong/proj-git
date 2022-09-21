<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>





 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />	
	<title>농림축산식품 공공데이터 포털</title>
	<link href="/css/common.css?v=20220323" rel="stylesheet" />
	<link href="/css/style.css?v=20220323" rel="stylesheet" />
	<link href="/css/style_dp.css" rel="stylesheet" />
	<link href="/css/mobile.css?v=20220323" rel="stylesheet" media="(max-width:1280px)" />
	<!-- HTLM5shiv ie6~8 -->
	<!--[if lt IE 9]> 
		<script src="/js/html5shiv.min.js"></script>
		<script src="/js/respond.min.js"></script>
		<script>
			alert("현재 당신이 보는 브라우저는 지원하지 않습니다. 최신 브라우저로 업데이트해주세요!");
		</script>
	<![endif]-->
	

 

<script src="/js/jquery-3.5.1.min.js?v=20220323"></script>
<script src="/js/jquery-ui.min.js?v=20220323"></script>
<script src="/js/swiper.min.js?v=20220323"></script>
<script src="/js/iscroll.js?v=20220323"></script>
<script src="/js/common.js?v=20220323"></script>
<script src="/js/common_renewal.js?v=20220323"></script>

<script src="/js/message.js?v=20220323"></script>
<script src="/js/popup.js?v=20220323"></script>
<script src="/js/popup_renewal.js?v=20220323"></script>

<script src="/js/jquery.alphanumeric.js?v=20220323"></script>


<script src="/js/jquery/jquery.cookie.js?v=20220323"></script>
<script src="/js/jquery/jquery.form.js?v=20220323"></script>


<script src="/js/jquery/jquery.waiting-0.1.1/dist/jquery.waiting.min.js?v=20220323"></script>
<link type="text/css" rel="stylesheet"  media="screen" href="/js/jquery/jquery.waiting-0.1.1/dist/waiting.css?v=20220323" />


<script src="/js/jquery/jquery.MultiFile.js?v=20220323"></script>

	
	<script>
		$(document).ready(function(){
			
		});
		
		function showAlertMessage(el, errorMessage) {
			$("#" + el).focus();
			alert(errorMessage);
		}
		
		function showErrorMessage(el, errorMessage) {
			$("#" + el).focus();
			alert(errorMessage);
		}
		function showConformMessage(ConformMessage) {
			
			return window.confirm(ConformMessage);
		}
		
	</script>

</head>
<body>
	<div id="wrap">
		<div class="skiptoContent">
			<a href="#main">본문 바로가기</a>
		</div>
		
		<header class="header-sub"><!-- sub page : header-sub class 추가 -->
			

 
<script>
	
	$(document).ready(function(){
// 		gnb();

		onInitMenu();
// 		$('.nav > ul > li').unbind();
	});
	
	/* 피씨 사이트맵 */ 
	$(function(){
        $(".link-sitemap").on("click",function(){
            $("#modal_sitemap").show();
        });
        $("#btn_sitemap_pop_close").click(function(){
            $("#modal_sitemap").hide();
        });
        $("#btn_sitemap_close").click(function(){
            $("#modal_sitemap").hide();
        });

	});
	
	function onInitMenu() {
		$('nav').find('li').removeClass('current');
		$('nav').find('li').removeClass('active');
		
		let path = $(location).attr('pathname');
		let pathFirst = path.substring(1, path.indexOf('/', 1))
		let $child = $("li[id='"+pathFirst+"']");
	
		if(path.indexOf('/bbs/') >= 0) {
			let mypageId = 'bbs'+path.substring(path.indexOf('/', 2)+1,path.lastIndexOf('/'))
			$child = $('#'+mypageId);
			$child.addClass('current');
			
			let $parent = $child.parent('ul').parent('li');
			$parent.addClass('current active');
			return ;
		}
		
		if(path.indexOf('/mypage/') >= 0) {
			let mypageId = 'mypage'+path.substring(path.indexOf('/', 2)+1,path.lastIndexOf('/'))
			if(mypageId == 'mypagedatadream' || mypageId == 'mypageopendatareqst' || mypageId == 'mypagestdmanage')
				mypageId = 'mypageopenapireqst';
			
			$child = $('#'+mypageId);
			$child.addClass('current');
			
			let $parent = $child.parent('ul').parent('li');
			$parent.addClass('current active');
			return ;
		}
		
		if(path.indexOf('/apply/') >= 0) {
			let mypageId = path.substring(path.lastIndexOf('/')+1, path.lastIndexOf('.'))
			$child = $('#'+mypageId);
			$child.addClass('current');
			
			let $parent = $child.parent('ul').parent('li');
			$parent.addClass('current active');
			return ;
		}
		
		if(path.indexOf('/indexTerms') >= 0) {
			return ;
		}
		
		if(path.indexOf('/indexPersonalInformation') >= 0) {
			return ;
		}
		
		if($child != null) {
			$child.addClass('current');
			
			let $parent = $child.parent('ul').parent('li');
			$parent.addClass('current active');
		}
	}
	
	//20151015kcr 메뉴별 접속 통계
	function menuConectStats(num1, num2, num3){
		var options = {
				url : "/conect/MenuConectStatsReg.do",
				data : { 
					menuUrl : num1,
					menuNm : num2,
					menuCode : num3
				},
				callBack : cbMenuConectStats
		};
     	ajax.call(options);
	}
	function cbMenuConectStats(result){
		var data = result.result_yn;
		if(data == "N"){
			alert("오류가 발생 하였습니다.");
		}
	}
	
	function goMain() {
		location.href="/main.do";
	}
	
	function goMenu(uri) {
		$("#menuForm").attr("action", uri);
		$("#menuForm").attr("method", "post");
		$("#menuForm").submit();
	}
	
</script>
<form id="menuForm"></form>
<div class="header">					
	<div class="inner">
	    <h1 class="logo" onClick="goMain();"><a href="#"><span>농림축산식품 공공데이터포털</span></a></h1>
		<div class="gnb-area">
			<ul class="top-menu">
				<!-- 로그인 전 -->
				 
					<li><a href="/member/indexLogin.do">로그인</a></li>
					<li><a href="/member/join/indexJoinInit.do">회원가입</a></li>
                
                <!-- //로그인 전 -->
				<!-- 로그인 후 --> 
				
				<!-- //로그인 후 -->
			</ul>

			<div class="btn-menu">
				<button type="button" class="mu-btn mu-btn-icon-only mu-btn-bg-non"><i class="mu-icon-svg global-menu"></i><span>메뉴열기</span></button>
			</div>

			<nav class="nav">
				<div class="nav-top">
					<div class="btn-home">
						<button type="button" class="mu-btn mu-btn-icon-only mu-btn-bg-non" onClick="goMain();"><i class="mu-icon-svg mobile-home"></i><span>처음으로가기</span></button>
					</div>
					<ul class="top-menu">
						<!-- 로그인 전 -->
						 
							<li><a href="/member/indexLogin.do">로그인</a></li>
							<li><a href="/member/join/indexJoinInit.do">회원가입</a></li>
						
						<!-- //로그인 전 -->
						<!-- 로그인 후 -->
						
						<!-- //로그인 후 -->
					</ul>
				</div>
				<div class="btn-close">
					<button type="button" class="mu-btn mu-btn-icon-only mu-btn-bg-non"><i class="mu-icon-svg global-close"></i><span>메뉴닫기</span></button>
				</div>
				<ul>
					<li>
						<a href="javascript://">데이터 검색</a>
						<ul>
							<li id="opendata"><a href="/opendata/data/open/indexOpenDataList.do">통합 검색</a></li>
 							<li id="visualweb" class="pc-only"><a href="/visualweb/indexVisualizationList.do">시각화 검색</a></li>
							<li id="std"><a href="/std/stdwrd/indexStdWrdDicaryList.do">데이터 표준검색</a></li>						
						</ul>
					</li>
					<li>
						<a href="javascript://">데이터 활용</a>
						<ul>
							<li id="prcuse"><a href="/prcuse/indexPrcuseServiceList.do">데이터 활용사례</a></li>
							<li id="prent"><a href="/prent/indexPrentList.do">데이터 시각화</a></li>
							<li id="majorpublicdata"><a href="/majorpublicdata/indexMajorPublicData.do">주요 공공데이터</a></li>
							<li><a href="/contest/competitionNew.do" target="_blank">창업 경진 대회</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript://">데이터 신청</a>
						<ul>
							<li id="datadream"><a href="/datadream/indexDataDreamList.do">데이터 분석신청</a></li>
							
							<li id="indexApiPrcuseReqst"><a href="/apply/indexApiPrcuseReqst.do">오픈API 신청</a></li>
							<li id="indexDataOpenReqst"><a href="/apply/indexDataOpenReqst.do">공공데이터 제공신청</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript://">참여&amp;소통</a>
						<ul>
							<li id="bbsnotice"><a href="/bbs/notice/indexNoticeList.do">공지사항</a></li>
							<li id="bbsfaq"><a href="/bbs/faq/indexFaqList.do">FAQ</a></li>
							<li id="bbsqna"><a href="/bbs/qna/indexQnaList.do">문의하기</a></li>
							<li id="intro"><a href="/intro/indexPortalIntroduce.do">포털소개</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript://">마이페이지</a>
						<ul>
							<li id="mypageopenapireqst"><a href="/mypage/openapireqst/indexOpenApiList.do">신청현황</a></li>
							<li id="mypageprcuse"><a href="/mypage/prcuse/indexPrcuseList.do">내 활용사례</a></li>
							<li id="mypageqna"><a href="/mypage/qna/indexQnaList.do">문의내역</a></li>
							<li id="mypageintrst"><a href="/mypage/intrst/indexIntrstInfoList.do">관심 공공데이터</a></li>
							<li id="mypageinfo"><a href="/mypage/info/indexMyInfo.do">내 정보관리</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<div class="nav-dim"></div>
			<p class="link-sitemap"><a href="#">사이트맵</a></p><!-- 2021-11-26 MOD : 사이트맵 -->			
			
			<div class="mu-modal" id="modal_sitemap" style="display:none;">
            <div class="mu-dialog-background"></div>
            <div class="mu-dialog sitemap-dialog"><!-- 사이즈는 sitemap-dialog  -->
                <div class="mu-dialog-head">
                    <h5 class="title">전체 메뉴</h5>	
                </div>
                <div class="mu-dialog-body">	
                    <nav class="sitemap">                        
                        <ul>
                            <li>
								<a href="javascript://">데이터 검색</a>
                                <ul>
                                    <li><a href="/opendata/data/open/indexOpenDataList.do">통합 검색</a></li>
									<li><a href="/visualweb/indexVisualizationList.do">시각화 검색</a></li>
									<li><a href="/std/stdwrd/indexStdWrdDicaryList.do">데이터 표준검색</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript://">데이터 활용</a>
                                <ul>
                                    <li><a href="/prcuse/indexPrcuseServiceList.do">데이터 활용사례</a></li>
                                    <li><a href="/prent/indexPrentList.do">데이터 시각화</a></li>
                                    <li><a href="/majorpublicdata/indexMajorPublicData.do">주요 공공데이터</a></li>
									<li><a href="/contest/competitionNew.do" target="_blank">창업 경진 대회</a></li>                                    
                                </ul>
                            </li>
                            <li>
                                <a href="javascript://">데이터 신청</a>
                                <ul>
                                    <li><a href="/datadream/indexDataDreamList.do">데이터 분석신청</a></li>
                                	
                                    <li><a href="/apply/indexApiPrcuseReqst.do">오픈API 신청</a></li>
									<li><a href="/apply/indexDataOpenReqst.do">공공데이터 제공신청</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript://">참여&amp;소통</a>
								<ul>
									<li><a href="/bbs/notice/indexNoticeList.do">공지사항</a></li>
									<li><a href="/bbs/faq/indexFaqList.do">FAQ</a></li>
									<li><a href="/bbs/qna/indexQnaList.do">문의하기</a></li>
									<li><a href="/intro/indexPortalIntroduce.do">포털소개</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript://">마이페이지</a>
                                <ul>
                                    <li><a href="/mypage/openapireqst/indexOpenApiList.do">신청현황</a></li>
									<li><a href="/mypage/prcuse/indexPrcuseList.do">내 활용사례</a></li>
									<li><a href="/mypage/qna/indexQnaList.do">문의내역</a></li>
									<li><a href="/mypage/intrst/indexIntrstInfoList.do">관심 공공데이터</a></li>
									<li><a href="/mypage/info/indexMyInfo.do">내 정보관리</a></li>
                                </ul>
                            </li>							
                        </ul>
                        <ul class="etc-map">
                            
                                <li><a href="/member/join/indexJoinInit.do">회원가입</a></li>
                            
                            <li><a href="/intro/indexTerms.do">이용약관</a></li>
                            <li><a href="/intro/indexPersonalInformation.do">개인정보처리방침</a></li>
                            <li><a href="https://www.mafra.go.kr/mafra/309/subview.do" target="_blank">저작권정책</a></li>
                            <li><a href="mailto:privacy@mifaff.go.kr">개인정보침해 신고센터</a></li>
                        </ul>
                    </nav>  
                </div>
                <!-- // mu-dialog-body -->
                
                <div class="mu-dialog-foot">
                    <div class="mu-button-wrap">
                        <button type="button" class="mu-btn" id="btn_sitemap_close"><span>닫기</span></button> 
                    </div>
                </div>               

                
                <!-- 접근성 : 내용을 읽고 나서 닫기 나중으로 빼준다  -->  
                <div class="mu-dialog-close-btn">
                    <button type="button" class="mu-btn mu-btn-icon-only mu-btn-bg-non" title="해당 팝업 닫기" id="btn_sitemap_pop_close"><i class="mu-icon-svg window-close"></i><span>팝업닫기</span></button>
                </div>
            </div>    
            </div><!-- // mu-modal --> 
		</div>
	</div>
</div>

		</header>
		<main id="main" class="main-sub"><!-- sub page : main-sub class 추가 -->
			

 

<script src="/prent/html2canvas.js" type="text/javascript"></script>
<script src="/prent/html2canvas.svg.js" type="text/javascript"></script>
<script src="/prent/FileSaver.js" type="text/javascript"></script>
<script src="/prent/Blob.js" type="text/javascript"></script>
<script src="/js/kakao.js" type="text/javascript"></script>
<script src="/js/sns.js" type="text/javascript"></script>
<script src="/js/popup_renewal.js" type="text/javascript" ></script>
<script src="/js/common.js"></script>        

<script>
    $(document).ready(function(){

    });     
    
    $(function() {
    	$(document).mouseup(function (e){
			var LayerPopup = $("#div_sns_tooltip");
       		if(LayerPopup.has(e.target).length === 0){
       			LayerPopup.hide();
       		}
		});
    	
        //목록 버튼
        $("#prent_detail_btn_list").click(function(){
        	goPrentList();
        });
        
        //이미지 다운로드
        $("#prent_detail_btn_img_download").click(function(){
            
            var tyId = 'PRENT20160009';
            
                // Firefox 1.0+
            var isFirefox = typeof InstallTrigger !== 'undefined';
                // Safari 3.0+ "[object HTMLElementConstructor]" 
            var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0 || (function (p) { return p.toString() === "[object SafariRemoteNotification]"; })(!window['safari'] || safari.pushNotification);
                // Internet Explorer 6-11
            var isIE = /*@cc_on!@*/false || !!document.documentMode;
                // Chrome 1+
            var isChrome = !!window.chrome && !!window.chrome.webstore;

            isFirefox == false;
            isSafari == false;
            isIE == false;
            isChrome == false;
            
            // Chrome 1+
            if (isChrome == true) {     
                if(tyId == 'PRENT20160005' || tyId == 'PRENT20160006'){
                    html2canvas($("#draw_chart"), {
                        onrendered: function(canvas) {                      
                            if (typeof FlashCanvas != "undefined") {
                                   FlashCanvas.initElement(canvas);
                               }                        
                            $("#imgDown_data").val(canvas.toDataURL("image/png"));
                            $("#imgDown_tyId").val(tyId);
                            $("#imgForm").submit();
                        }
                    });
                    
                }else{                  
                    d3.selectAll("svg").attr("version", 1.1).attr("xmlns","http://www.w3.org/2000/svg");
                    var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';                    
                    var source = (new XMLSerializer()).serializeToString(d3.select('#draw_chart').node());      
                    var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                    saveAs(imgBlob, tyId+".svg");
                    
                }
                
            // Internet Explorer 6-11
            }else if(isIE == true){
                
                //hexagon, levelLabel
                if(tyId == 'PRENT20160005'){
                        
                    html2canvas($("#draw_chart"), {
                        onrendered: function(canvas) {                      
                            if (typeof FlashCanvas != "undefined") {
                                   FlashCanvas.initElement(canvas);
                               }                        
                            $("#imgDown_data").val(canvas.toDataURL("image/png"));
                            $("#imgDown_tyId").val(tyId);
                            $("#imgForm").submit();
                        }
                    });
                }else{
                    d3.selectAll("svg").attr("version", 1.1).attr("xmlns","http://www.w3.org/2000/svg");
                    var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';
                    var source = (new XMLSerializer()).serializeToString(d3.select("#draw_chart").node());                       
                    var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                    saveAs(imgBlob, tyId+".svg");   
                }   
                
            // Safari 3.0+ "[object HTMLElementConstructor]"    
            }else if(isSafari == true){
                
                //treemap
                if(tyId == 'PRENT20160005'){
                    html2canvas($("#draw_chart"), {
                        onrendered: function(canvas) {                      
                            if (typeof FlashCanvas != "undefined") {
                                   FlashCanvas.initElement(canvas);
                               }                        
                            $("#imgDown_data").val(canvas.toDataURL("image/png"));
                            $("#imgDown_tyId").val(tyId);
                            $("#imgForm").submit();
                        }
                    }); 
                    
                }else if(tyId == 'PRENT20160006'){
                    d3.selectAll("svg").attr("version", 1.1).attr("xmlns","http://www.w3.org/2000/svg");
                    var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';
                    var source = (new XMLSerializer()).serializeToString(d3.select("svg").node());                       
                    var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                    saveAs(imgBlob, tyId+".svg");        
                    
                }else{
                    d3.selectAll("svg").attr("version", 1.1).attr("xmlns","http://www.w3.org/2000/svg");
                    var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';
                    var source = (new XMLSerializer()).serializeToString(d3.select("#draw_chart").node());                       
                    var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                    saveAs(imgBlob, tyId+".svg");       
                }
                
            // Firefox 1.0+
            }else if(isFirefox == true){
                //levelLabel, treemap
                if(tyId == 'PRENT20160005'){
                    html2canvas($("#draw_chart"), {
                        onrendered: function(canvas) {
                            if (typeof FlashCanvas != "undefined") {
                                   FlashCanvas.initElement(canvas);
                               }                        
                            $("#imgDown_data").val(canvas.toDataURL("image/png"));
                            $("#imgDown_tyId").val(tyId);
                            $("#imgForm").submit();
                        }
                    });     
                    
                }else{  
                    d3.selectAll("svg").attr("xmlns","http://www.w3.org/2000/svg");
                    var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';
                    var source = (new XMLSerializer()).serializeToString(d3.select("#draw_chart").node());                       
                    var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                    saveAs(imgBlob, tyId+".svg");
                                
                }
                
            }else{
                d3.selectAll("svg").attr("xmlns","http://www.w3.org/2000/svg");
                var doctype = '<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">';
                var source = (new XMLSerializer()).serializeToString(d3.select("#draw_chart").node());                       
                var imgBlob = new Blob([ doctype + source], { type: 'image/svg+xml;charset=utf-8' });
                saveAs(imgBlob, tyId+".svg");
            }
        });

        //소스코드 공유
        $("#prent_detail_btn_code_share").click(function(){
            var params = {
                    dataId : '20200713000000001391',
                    tyId : 'PRENT20160009',
                    prentSn : '1'
            };
            prentCopyPop.open(params);
        });

        //데이터 정보
        $("#prent_detail_btn_data_info").click(function(){
            var params = {
                    dataId : '20200713000000001391',
                    tyId : 'PRENT20160009',
                    prentSn : '1',
                    entityId : 'TI_RELAX_RSTRNT'
            };
            prentInfoPop.open(params);
        });
    });
    
    function goOpenDataDetailView(){	
		$("#recent_url").val(location.href);
		$("#myForm").attr("action", "/opendata/data/indexOpenDataDetail.do");
		$("#myForm").submit();
	}
    function goPrentList(){	
		$("#recent_url").val(location.href);
		$("#myForm").attr("action", "/prent/indexPrentList.do");
		$("#myForm").submit();
	}
	function facebookOpen(str) {
		var titl =  "[농식품 공공데이터] "+str;
		titl = titl.replace (/'/gi,"´");
		titl = titl.replace (/"/gi,"˝");
		titl = encodeURIComponent(titl);
		
		var link = encodeURIComponent("https://data.mafra.go.kr/prent/indexPrentDetail.do?dataId="+$("#mafra_prent_dataId").val()+"&tyId="+$("#mafra_prent_tyId").val()+"&prentSn="+$("#mafra_prent_prentSn").val());
		var url = "http://www.facebook.com/sharer/sharer.php?u=" + link + "&title="+titl;
		window.open(url, "sns_win","width=500, height=350, resizable=no, scrollbars=no, status=no;");	
	}
	function twitterOpen(str) {
		var titl = "[농식품 공공데이터] "+str;
		titl = titl.replace (/'/gi,"´");
		titl = titl.replace (/"/gi,"˝");
		titl = encodeURIComponent(titl);
		var link = encodeURIComponent("https://data.mafra.go.kr/prent/indexPrentDetail.do?dataId="+$("#mafra_prent_dataId").val()+"&tyId="+$("#mafra_prent_tyId").val()+"&prentSn="+$("#mafra_prent_prentSn").val());
		var url = "http://twitter.com/share?text=" + titl + "&url=" + link;
		window.open(url, "sns_win","width=500, height=370, resizable=no, scrollbars=no, status=no;");
	}
	function storyOpen(str){
		Kakao.Story.share({
			url: "https://data.mafra.go.kr/prent/indexPrentDetail.do?dataId="+$("#mafra_prent_dataId").val()+"&tyId="+$("#mafra_prent_tyId").val()+"&prentSn="+$("#mafra_prent_prentSn").val(),
			text: "[농식품 공공데이터] "+str
		});
	}
</script>

<form id="imgForm" action="/prent/imgDown.do" method="post">
    <input type="hidden" name="imgDown_data" id="imgDown_data" />
    <input type="hidden" name="imgDown_tyId" id="imgDown_tyId" />
</form>
<form id="myForm" name="myForm" method="post">
	<input type="hidden" id="data_id" name="data_id" value="20200713000000001391" /> 
	<input type="hidden" id="recent_url" name="recent_url" value="" /> 
	<input type="hidden" id="searchText" name="searchText" value="" /> 
	<input type="hidden" id="cur_page" name="cur_page" value="" />
	<input type="hidden" id="mafra_prent_dataId" value="20200713000000001391" />
	<input type="hidden" id="mafra_prent_prentSn" value="1" />    
	<input type="hidden" id="mafra_prent_tyId" value="PRENT20160009" />    
</form>
<div class="main-contents">
   <h2 class="blind">데이터 활용</h2><!-- 각 메뉴마다 메뉴명이 달라져야합니다. -->
   <div class="contents-wrap">
       
       <!-- contents-top -->
       <div class="contents-top">
           <div class="breadcrumbs-wrap">
               <div class="breadcrumbs">
                   <ol class="mu-path">
                       <li class="home"><a href="/main.do">홈</a></li> 
	                   <li><a href="javascript://">데이터 활용</a></li>
	                   <li><a href="/prent/indexPrentList.do">데이터 시각화</a></li>
                   </ol>
                   <div class="mu-sns-group">
                       <button type="button" class="mu-btn mu-btn-icon-only mu-btn-circle tip-btn" id="prent_detail_btn_code_share"><i class="mu-icon-svg copy"></i><span>copy</span></button>  
                        <!-- mu-tip : tip-btn 마우스오버시 -->
                        <div class="mu-tip arrow-ct" style="right:15px;top:40px;">
                           <p>소스코드공유</p>
                        </div>
                        <!-- //mu-tip -->                                       
                       <button type="button" class="mu-btn mu-btn-icon-only mu-btn-circle" onclick="$('#div_sns_tooltip').toggle();"><i class="mu-icon-svg share"></i><span>SNS공유하기</span></button> 
                       <!-- mu-tooltip arrow-rt : contents-top에서는 arrow-rt : 클릭시 SNS링크툴팁 -->               
                       <div class="mu-tooltip arrow-rt" id="div_sns_tooltip" style="right:0;top:35px;display:none;">
                           <div class="mu-tooltip-inner">
                               <div class="sns-link-group">
									<a target="_blank" title="새창열기" class="sns-btn"><i class="mu-icon-img facebook" onclick="$('#div_sns_tooltip').hide();facebookOpen('안심식당 지도')"></i><span>페이스북 공유</span></a>
	                                <a target="_blank" title="새창열기" class="sns-btn"><i class="mu-icon-img twitter" onclick="$('#div_sns_tooltip').hide();twitterOpen('안심식당 지도')"></i><span>트위터 공유</span></a> 
	                                <a target="_blank" title="새창열기" class="sns-btn"><i class="mu-icon-img kakao" onclick="$('#div_sns_tooltip').hide();storyOpen('안심식당 지도')"></i><span>카카오 공유</span></a> 
	                            </div>
                           </div>	
                       </div>
                       <!-- mu-tooltip arrow-ct -->
                   </div>
               </div> 
           </div>                

           <div class="subject-wrap">							
               <div class="subject">
                   <div class="menu-img-box"><i class="menu use"></i></div><!-- 2021-12-28 : 디자인이미지 메뉴별로 분리됨 menu-img-box >  menu + (해당아이콘들) -->
                   <div class="subject-title">
                       <h3>데이터 시각화</h3>
                       <p class="subject-desc">공공데이터를 활용한 데이터 분석 결과를 쉽게 이해할 수 있도록 시각화를 기반으로 한 유스케이스(UseCase)를 제공합니다. </p>  
                       <ul class="support-explain">
                           <li>일부 시각화 데이터는 IE10.0 이상 및 Chrome, FireFox, Safari등 HTML5를 지원하는 브라우저에서만 조회 가능합니다.</li>
                       </ul>                                      
                   </div>                                                           
               </div> 
           </div>
       </div>

       <!-- contents -->
       <div class="contents">
           <div class="inner">
               
                <!-- card-detail-wrap.visual-type 시각화상세 - 기본 DASHBOARD, GIS, LEVELLABLE용 -->
                <div class="card-detail-wrap visual-type"> 
                   <!-- card-box : 목록에 카드박스가 링크만 빠지고 오면됨/ inner-badge,inner-img도 삭제 -->
                   <div class="card-box">
                       <div class="inner-data">
                           <strong class="card-title">안심식당 지도</strong>
                           <p class="card-desc">시각화 유형 : GIS</p>
                           <div class="mu-item-group pc-only">
                               <button type="button" class="mu-btn-sm" id="prent_detail_btn_data_info"><span>데이터 정보</span></button>
                               <button type="button" class="mu-btn-sm" id="prent_detail_btn_img_download"><i class="mu-icon-svg download"></i><span>이미지</span></button>
                           </div> 
                       </div> 
                   </div>
                   <!-- //card-box -->
                   <!-- card-detail-body -->
                   <div class="card-detail-body">                                                                              
                       <!-- PC에서만 시각화정보 제공 : 내용은 예시 -->
                       <div class="detail-view pc-only" id="draw_chart_box" >
		 					            
		                    <div id="draw_chart" class="stacked-chart-container js-stacked-chart-container" style="position: relative;" align="center">
		                    </div>
                       </div>                                                          
                       
                       <!-- 모바일전용 콘텐츠 12.09 -->
                       <div class="info-visual mobile-only">
                           모바일에서는 시각화 미리보기를 지원하지 않습니다.
                       </div>
                       <!-- 모바일전용 콘텐츠 -->
                       <!-- mu-formbox-row -->
                       <div class="mu-formbox-row">
                           <div class="mu-col">
                               <div class="th">시각화유형</div>
                               <div class="td">좌표값으로 위치를 표시하는 지도입니다.</div>
                           </div>
                           <div class="mu-col">
                               <div class="th">시각화 설명</div>
                               <div class="td">안심식당 위치를 지도에 표시합니다.</div>
                           </div>
                           <div class="mu-col">
                               <div class="th">활용 공공 데이터</div>
                               <div class="td"><a class="link-bl arrow" title="활용 공공 데이터 바로가기" onclick="goOpenDataDetailView()" style="cursor:pointer;">안심식당 정보</a></div>
                           </div>
                       </div>
                       <!-- //mu-formbox-row -->
                   </div>
                   <!-- //board-body-->
               </div>
               <!-- //card-detail-wrap -->
               
               <!-- mu-button-wrap -->
               <div class="mu-button-wrap">
                   <button type="button" class="mu-btn-lg right-btn" id="prent_detail_btn_list"><span>목록</span></button>
               </div>
               <!-- //mu-button-wrap -->
           </div>
       </div>
       <!-- //contents -->
    </div>
</div>				

<!-- d3 chart script -->
<div>   
    
               
        
        
        
           
           
        
        
        
        
            <script>
            // d3 라이브러리를 사용하지 않는 시각화 자료를 기능 버튼을 숨김 
            $("#prent_detail_btn_img_download").hide();
            $("#prent_detail_btn_code_share").hide();
            $("#prent_detail_btn_data_info").hide();
            
            $("#draw_chart_box").attr("style", "width:100%; padding:0px; margin:20px auto;");
            $("#draw_chart").height(500);
            $("#draw_chart").append("<iframe id='draw_chart_frame' src='/prent/indexPrentGisDetail.do?dataId=20200713000000001391&tyId=PRENT20160009&prentSn=1' style='width:100%; height:100%; border:none;' scrolling='no'></iframe>");
            </script>
               

    
</div>
<!--// d3 chart script -->


			<!-- 2021-12-29 : ADD - 문의하기 및 top 버튼 추가 / 22-02-16 MOD : position 빼고 이동 -->
            <div class="floating-button-wrap">
                <button type="button" class="mu-btn mu-btn-icon-only que-quick-button" title="문의하기" onclick="location.href='/bbs/qna/indexQnaInsert.do'" style="display:none;"><i class="mu-icon-svg question"></i><span>문의하기</span></button>
                <button type="button" class="mu-btn mu-btn-icon-only go-top-button" title="위로가기"><i class="mu-icon-svg arrow-top"></i><span>위로가기</span></button>
            </div>
            <!-- //2021-12-29 --> 
		</main>
		
		<footer>
			

 
<script>
	$(document).ready(function(){
		
	});	
	$(function() {

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
	});
	
</script>

<div class="footer-top">
	<div class="inner">
		<div class="footer-menu">
			<ul>
				<li><a href="/main.do">농림축산식품 공공데이터 포털</a></li>
				<li><a href="/intro/indexTerms.do">이용약관</a></li>
				<li class="privacy"><a href="/intro/indexPersonalInformation.do">개인정보처리방침</a></li>
				<li><a href="https://www.mafra.go.kr/mafra/309/subview.do" target="_blank">저작권정책</a></li>
				<li><a href="mailto:privacy@mifaff.go.kr">개인정보침해 신고센터</a></li>
				<!--<li><a href="#none">전자우편무단수집거부</a></li> 2021-12-28 DEL: 공통삭제(기획)  -->
			</ul>
		</div>
		<div class="family-site">
			<div class="mu-selectbox mu-selectbox-up">
				<button class="mu-value"><span>관련사이트</span></button>
				<ul class="mu-list">
					<li><a href="https://www.mafra.go.kr" target="_blank" title="새창열기">농림축산식품부</a></li>
					<li><a href="https://www.naqs.go.kr" target="_blank" title="새창열기">국립농산물품질관리원</a></li>
					<li><a href="https://www.seed.go.kr" target="_blank" title="새창열기">국립종자원</a></li>
					<li><a href="https://www.qia.go.kr" target="_blank" title="새창열기">농림축산검역본부</a></li>
					<li><a href="https://www.krei.re.kr" target="_blank" title="새창열기">한국농촌경제연구소</a></li>
					<li><a href="https://www.af.ac.kr" target="_blank" title="새창열기">한국농수산대학</a></li>
					<li><a href="https://www.ati.go.kr" target="_blank" title="새창열기">농식품공무원교육원</a></li>
					<li><a href="https://www.ekr.or.kr" target="_blank" title="새창열기">한국농어촌공사</a></li>
					<li><a href="https://www.at.or.kr/home/apko000000/index.action" target="_blank" title="새창열기">한국농수산식품유통공사</a></li>
					<li><a href="https://www.ekape.or.kr" target="_blank" title="새창열기">축산물품질평가원</a></li>
					<li><a href="https://www.epis.or.kr" target="_blank" title="새창열기">농림수산식품교육문화정보원</a></li>
					<li><a href="https://www.fris.go.kr" target="_blank" title="새창열기">농림수산식품기술기획평가원</a></li>
					<li><a href="http://www.kra.co.kr" target="_blank" title="새창열기">KRA</a></li>
					<li><a href="http://www.rda.go.kr" target="_blank" title="새창열기">농촌진흥청</a></li>
					<li><a href="https://www.forest.go.kr" target="_blank" title="새창열기">산림청</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="footer-bottom">
	<div class="inner">
		<div class="footer-logo"><span>농림축산식품부</span></div>
		<div class="footer-info">
			<address>
				<p>세종특별자치시 국책연구원 5로(반곡동 722-3) (우 30148)</p><!--  issues/11 2022-02-03 DEL: 주소 text 공통삭제 -->
				<p>농식품 지식정보서비스(공공데이터) 오아시스 운영센터<br> (평일 09:00~18:00, 점심시간 12:00~13:00) <br>대표번호 : 1661-5159 <span class="sect">/</span><span>Fax : 044-861-8749</span><span class="sect">/</span><span>E-mail : opendata@epis.or.kr</span></p>
			</address>
			<p class="copyright"><span>Copyright © </span><span>2022 by MAFRA. All Rights Reserved.</span></p>
		</div>
		<div class="footer-logo epis"><span>농립수산식품교육문화정보원</span></div>
	</div>
</div>

<!-- Matomo -->
<script type="text/javascript">
  var _paq = window._paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
  _paq.push(["setCookieDomain", "*.data.mafra.go.kr"]);
  _paq.push(["setDomains", ["*.data.mafra.go.kr","*.data.mafra.go.kr"]]);
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//weblog.epis.or.kr/piwik/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '15']);
    
    if(window.location.href.indexOf('/datafreezone/') > 0){
        _paq.push(['addTracker', '//biglog.epis.or.kr/matomo/matomo.php', '5']);	
    }
    
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript><p><img src="//weblog.epis.or.kr/piwik/matomo.php?idsite=15&amp;rec=1" style="border:0;" alt="" /></p></noscript>
<!-- End Matomo Code -->

		</footer>
		
	</div>
	<div id="popupAlertMessage"></div>
</body>
</html>