<%@page import="java.io.InputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="org.w3c.dom.NodeList"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="org.w3c.dom.Element"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="java.net.URL"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="author" content="master">
  <meta name="description" content="예제">
  <title>MOREA</title>
  
<!-- CSS STYLE-->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/thismonth.css">
<!-- FONT -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!--일반 평폰트 font-family:  'Gothic A1', sans-serif;-->
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
<!--영어 font-family: 'Abril Fatface', cursive; -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<!--한국어 궁서같은거 font-family: 'Song Myung', serif; -->
</head>
<body>
</body>
  <div id="wrap">
    <div id="header">
      <div class="container">
	      <div class="header">
	        <div class="header-title">
	        	<img alt="html" src="title.png" href="#">
	        </div>
	        <!-- header-title-->
	        <div class="header-menu">
	        	<a href="#" class="search"><span class="ir_pm">search</span></a>
	        	<a href="#" class="login">로그인</a>
	        	<a href="#" class="join">회원가입</span></a>
	        </div>
	       </div>
      </div>
    </div>
    <!-- //header -->
     <div id="nav">
		<div class="container">
			<div class="nav">
				<div class="nav-menu">
					<div class="popluar">
						<a href="index.jsp">인기</a>
						<!-- <div class="nav-under"></div> -->
					</div>
					<div class="month">
						<a href="#">이달의 음식</a>
						<div class="nav-under"></div>
					</div>
					<div class="tv">
						<a href="video.jsp">VIDEO</a>
					</div>
					<div class="safe">
						<a href="#">안심식당</a>
					</div>
					<div class="sitemap">
						<a href="#">사이트맵</a>
					</div>
				</div>
				<!-- //nav-menu -->
			</div>
		</div>

     </div>
     <!-- //nav -->
    <div id="contents">
	    <div id="content1">
	    	<div class="container">
<%
//이달의음식 상세조회
if(request.getParameter("cntntsNo")!=null && !request.getParameter("cntntsNo").equals("")){
	//apiKey - 농사로 Open API에서 신청 후 승인되면 확인 가능
	String apiKey="20220701DXKFWCSZ3NCD56IZPICHPA";
	//서비스 명
	String serviceName="monthFd";
	//오퍼레이션 명
	String operationName="monthFdmtDtl";

	//XML 받을 URL 생성
	String parameter = "/"+serviceName+"/"+operationName;
	parameter += "?apiKey="+ apiKey;
	parameter += "&cntntsNo="+ request.getParameter("cntntsNo");

	//서버와 통신
	URL apiUrl = new URL("http://api.nongsaro.go.kr/service"+parameter);
	InputStream apiStream = apiUrl.openStream();

	Document doc = null;
	try{
		//xml document
		doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(apiStream);
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		apiStream.close();
	}

	//키값
	String cntntsNo = null;
	//식재료명
	String fdmtNm = null;
	//식재료유래
	String ctvtIndcDtl = null;
	//품종특성 구입요령
	String prchCheatDtl = null;
	//보관방법 손질법
	String cstdyMthDtl = null;
	//기타정보
	String etcInfoDtl = null;
	//섭취방법
	String ntkMthDtl = null;
	//영양성분효능
	String ntrIrdntEfcyDtl = null;
	//관련연구정보
	String rltRsrchInfoDtl = null;
	//소비량
	String cnsmpqyDtl = null;
	//이미지구분코드
	String rtnImgSeCode = null;
	//이미지 경로
	String rtnFileCours = null;
	//이미지 물리명
	String rtnStreFileNm = null;
	//이미지 설명
	String rtnImageDc = null;

	try{cntntsNo = doc.getElementsByTagName("cntntsNo").item(0).getFirstChild().getNodeValue();}catch(Exception e){cntntsNo = "";}
	try{fdmtNm = doc.getElementsByTagName("fdmtNm").item(0).getFirstChild().getNodeValue();}catch(Exception e){fdmtNm = "";}
	try{ctvtIndcDtl = doc.getElementsByTagName("ctvtIndcDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){ctvtIndcDtl = "";}
	try{prchCheatDtl = doc.getElementsByTagName("prchCheatDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){prchCheatDtl = "";}
	try{cstdyMthDtl = doc.getElementsByTagName("cstdyMthDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){cstdyMthDtl = "";}
	try{etcInfoDtl = doc.getElementsByTagName("etcInfoDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){etcInfoDtl = "";}
	try{ntkMthDtl = doc.getElementsByTagName("ntkMthDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){ntkMthDtl = "";}
	try{ntrIrdntEfcyDtl = doc.getElementsByTagName("ntrIrdntEfcyDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){ntrIrdntEfcyDtl = "";}
	try{rltRsrchInfoDtl = doc.getElementsByTagName("rltRsrchInfoDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){rltRsrchInfoDtl = "";}
	try{cnsmpqyDtl = doc.getElementsByTagName("cnsmpqyDtl").item(0).getFirstChild().getNodeValue();}catch(Exception e){cnsmpqyDtl = "";}
	try{rtnImgSeCode = doc.getElementsByTagName("rtnImgSeCode").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnImgSeCode = "";}
	try{rtnFileCours = doc.getElementsByTagName("rtnFileCours").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnFileCours = "";}
	try{rtnStreFileNm = doc.getElementsByTagName("rtnStreFileNm").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnStreFileNm = "";}
	try{rtnImageDc = doc.getElementsByTagName("rtnImageDc").item(0).getFirstChild().getNodeValue();}catch(Exception e){rtnImageDc = "";}
%>
	<div class="monthfood">
		
		<div class="monthfood-title">
			<h3><strong>| MONTH OF THE FOOD |<a><%=fdmtNm%></a></strong></h3>
		</div>	
		<input id="back" type="button" onclick="javascript:location.href='monthFd.jsp'" value="처음화면으로"/>&nbsp;
	<hr>
	<div class="monthfood-fdinfo-1">
		<h2> 기본정보</h2>
		<table  border="1" cellspacing="0" cellpadding="0">
			<colgroup>
				<col style="width:10%;">
				<col>
			</colgroup>
			<tr>
				<td>식재료유래</td>
				<td><%=ctvtIndcDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
				<td>품종특성구입요령</td>
				<td><%=prchCheatDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
				<td>보관법손질법</td>
				<td><%=cstdyMthDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
				<td>기타정보</td>
				<td><%=etcInfoDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
		</table>
	</div>
	<div class="monthfood-fdinfo-2">
		<h2>섭취정보</h2>
		<table  border="1" cellspacing="0" cellpadding="0">
			<colgroup>
				<col width="10%">
				<col width="*">
			</colgroup>
			<tr>
			<td>섭취방법</td>
			<td><%=ntkMthDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
			<td>영양성분효능</td>
			<td><%=ntrIrdntEfcyDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
			<td>관련연구정보</td>
			<td><%=rltRsrchInfoDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
			<tr>
			<td>소비량</td>
			td><%=cnsmpqyDtl.replaceAll("\n", "<br/>")%></td>
			</tr>
		</table>
		
	</div>
	</div>
	</div>
	<div class="thismonth-image">
	<ul>
<%
	String[] rtnStreFileNmArr = rtnStreFileNm.split("\\|");
	String[] rtnFileCoursArr = rtnFileCours.split("\\|");
	String[] rtnImageDcArr = rtnImageDc.split("\\|");
	for(int i=0; i<rtnStreFileNmArr.length; i++){

		int imgCnt =-1;
		String[] rtnImgSeCodeArr= rtnImgSeCode.split("\\|");
		for(int k=0; k < rtnImgSeCodeArr.length; k++){
			if("209002".equals(rtnImgSeCodeArr[k]) || "209006".equals(rtnImgSeCodeArr[k])){
				imgCnt = k;
			}
		}
		if(imgCnt > -1){
			String imgUrl = "http://www.nongsaro.go.kr/"+ rtnFileCoursArr[imgCnt] +"/"+ rtnStreFileNmArr[imgCnt];
			%>
			<li style="width: 33%;display: inline-block;"><a href="#">
			<img src="<%=imgUrl%>" alt=""  title="" style="width: 249px;height: 198px;"/>
			</a></li>
			<%
		}
	}
}
%>
	</ul>
	</div>


    </div>
    </div>
        </div>
    </div>
    </div>
    <!-- //footer -->
    <div id="footer">
    	<hr>
    	<div class="container">
            <div class="footer">
            	<div class="info">
            	
            	<ul>
            			<li><a href="#">사이트 도움말</a></li>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영규칙</a></li>
                        <li><a href="#"><strong>개인정보취급방침</strong></a></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">게시중단요청 서비스</a></li>
                        <li><a href="#">고객센터</a></li>
            		</ul>  
            	</div>
            	<div class="maker">
            		       	
            	</div>
            </div>
        </div>

	<!-- //footer -->
  </div>
    <!-- //wrap -->
</body>
</html>
