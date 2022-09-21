<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    
</head>
<body>
<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f0d2fdfc61ee7b384c5695e9feca8816&libraries=services"></script>
<script>
//카카오 맵 관리 설정
//[x] 카카오 맵 API사이트에서 제공하는 기본 지도 HTML를 가져온다.
//[x] 카카오 개발자 사이트에가서 내 애플리케이션에 Test용도를 만들어준다.
//[x] 웹으로 만들거니깐 JavaScript 키값을 'appkey=발급받은 APP KEY를 사용하세요'라는 곳에 수정합니다.
//[x] 카카오 개발자 사이트에 플랙폼 탭에서 테스트 할 해당 주소를 추가해야 합니다. ex) http://127.0.0.1:5500

//카카오 맵 API 사용
//[x] 마커에 인포윈도우(말풍선) 표시하기
//[x] 마커 정보(data)가 담겨져 있는 JSON파일 만들기
//[x] JSON파일을 async await fetch를 통해서 가져와 화면에 뿌려줍니다.
//[x] 마커 클러스터러 라이브러리 사용하기 (카카오맵 API에서 제공)
//[x] 지도에서 마커 마우스 오버할때만 인포윈도우(말풍선)를 표시되게 하기

(() => {
 const mapContainer = document.getElementById('map'), // 지도를 표시할 div 
     mapOption = {
         center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
         level: 10, // 지도의 확대 레벨
         mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
     }; 

 // 지도를 생성한다 
 const map = new kakao.maps.Map(mapContainer, mapOption);
 
 // 마커 클러스터러를 생성합니다 
 const clusterer = new kakao.maps.MarkerClusterer({
     map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
     averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
 });

 function displayMarker(locPosition, message) {
     // 지도에 마커와 인포윈도우(말풍선)를 표시하는 함수입니다
     // 마커를 생성합니다
     const marker = new kakao.maps.Marker({  
         map: map, 
         position: locPosition
     }); 
     
     const iwContent = message, // 인포윈도우(말풍선)에 표시할 내용
         iwRemoveable = true;

     // 인포윈도우(말풍선)를 생성합니다
     const infowindow = new kakao.maps.InfoWindow({
         content : iwContent,
         removable : iwRemoveable
     });
     
     // 인포윈도우(말풍선)를 마커위에 표시합니다 
     infowindow.open(map, marker);
     
     // 지도 중심좌표를 접속위치로 변경합니다
     map.setCenter(locPosition);      
 }

 const geolocationT = () => {
     // geolocation true 기능 함수
     // GeoLocation을 이용해서 접속 위치를 얻어옵니다
      navigator.geolocation.getCurrentPosition((position) => {
         const {latitude, longitude} = position.coords
         const locPosition = new kakao.maps.LatLng(latitude, longitude), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
             message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우(말풍선)에 표시될 내용입니다
         
         // 마커와 인포윈도우(말풍선)를 표시합니다
         displayMarker(locPosition, message);
     });
 };

 const geolocationF = () => {
     // geolocation false 인경우 기능 함수
     const locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
     message = 'geolocation을 사용할수 없어요..'

     displayMarker(locPosition, message);
 };

 const makeOverListener = (map, marker, infowindow) => {
     // 인포윈도우(말풍선)를 표시하는 클로저를 만드는 함수입니다
     return function() {
         infowindow.open(map, marker);
     };
 };

 const makeOutListener = (infowindow) => {
      // 인포윈도우(말풍선)를 닫는 클로저를 만드는 함수입니다 
     return function() {
         infowindow.close();
     };
 }; 
		
 const base_url = './juso.json';
 const getData = async () => {
     const res = await fetch(base_url)
     return res.text();
 };

 const init = async () => {
     const markers = new Array;
     const db = JSON.parse(await getData())
     // HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
     if (navigator.geolocation) {
         geolocationT();
     } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우(말풍선) 내용을 설정합니다
         geolocationF();
     }

     // data.json있는 데이터 불러와 뿌려준다. //
     db.juso.forEach((item, i) => {
         const {RELAX_RSTRNT_NM, RELAX_ADD1} = item;

         // 지도에 마커를 생성하고 표시한다.
         const marker = new kakao.maps.Marker({
        	 RELAX_ADD1: new kakao.maps.LatLng(positions[0], positions[1]),
             map: map //마커를 표시할 지도 객체
         });

      // 주소-좌표 변환 객체를 생성합니다
         var geocoder = new kakao.maps.services.Geocoder();

         // 주소로 좌표를 검색합니다
         geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

             // 정상적으로 검색이 완료됐으면 
              if (status === kakao.maps.services.Status.OK) {

                 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                 // 결과값으로 받은 위치를 마커로 표시합니다
                 var marker = new kakao.maps.Marker({
                     map: map,
                     position: coords
                 });

                 // 인포윈도우로 장소에 대한 설명을 표시합니다
                 var infowindow = new kakao.maps.InfoWindow({
                     content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
                 });
                 infowindow.open(map, marker);

                 // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                 map.setCenter(coords);
             } 
         });    

         // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
         // 이벤트 리스너로는 클로저를 만들어 등록합니다 
         // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
     });
     // data.json있는 데이터 불러와 뿌려준다. //

     // 클러스터러에 마커들을 추가합니다
     clusterer.addMarkers(markers);
 }

 init();
})();
</script>
</body>
</html>