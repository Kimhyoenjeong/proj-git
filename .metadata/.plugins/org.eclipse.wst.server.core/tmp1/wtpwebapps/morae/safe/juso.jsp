<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>�ּҷ� ��� ǥ���ϱ�</title>
    
</head>
<body>
<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            Ȥ�� �ּ� ����� �߸� ������ ��쿡�� ���⿡ �������ּ���.
        </a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f0d2fdfc61ee7b384c5695e9feca8816&libraries=services"></script>
<script>
//īī�� �� ���� ����
//[x] īī�� �� API����Ʈ���� �����ϴ� �⺻ ���� HTML�� �����´�.
//[x] īī�� ������ ����Ʈ������ �� ���ø����̼ǿ� Test�뵵�� ������ش�.
//[x] ������ ����Ŵϱ� JavaScript Ű���� 'appkey=�߱޹��� APP KEY�� ����ϼ���'��� ���� �����մϴ�.
//[x] īī�� ������ ����Ʈ�� �÷��� �ǿ��� �׽�Ʈ �� �ش� �ּҸ� �߰��ؾ� �մϴ�. ex) http://127.0.0.1:5500

//īī�� �� API ���
//[x] ��Ŀ�� ����������(��ǳ��) ǥ���ϱ�
//[x] ��Ŀ ����(data)�� ����� �ִ� JSON���� �����
//[x] JSON������ async await fetch�� ���ؼ� ������ ȭ�鿡 �ѷ��ݴϴ�.
//[x] ��Ŀ Ŭ�����ͷ� ���̺귯�� ����ϱ� (īī���� API���� ����)
//[x] �������� ��Ŀ ���콺 �����Ҷ��� ����������(��ǳ��)�� ǥ�õǰ� �ϱ�

(() => {
 const mapContainer = document.getElementById('map'), // ������ ǥ���� div 
     mapOption = {
         center: new kakao.maps.LatLng(37.56682, 126.97865), // ������ �߽���ǥ
         level: 10, // ������ Ȯ�� ����
         mapTypeId : kakao.maps.MapTypeId.ROADMAP // ��������
     }; 

 // ������ �����Ѵ� 
 const map = new kakao.maps.Map(mapContainer, mapOption);
 
 // ��Ŀ Ŭ�����ͷ��� �����մϴ� 
 const clusterer = new kakao.maps.MarkerClusterer({
     map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
     averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
 });

 function displayMarker(locPosition, message) {
     // ������ ��Ŀ�� ����������(��ǳ��)�� ǥ���ϴ� �Լ��Դϴ�
     // ��Ŀ�� �����մϴ�
     const marker = new kakao.maps.Marker({  
         map: map, 
         position: locPosition
     }); 
     
     const iwContent = message, // ����������(��ǳ��)�� ǥ���� ����
         iwRemoveable = true;

     // ����������(��ǳ��)�� �����մϴ�
     const infowindow = new kakao.maps.InfoWindow({
         content : iwContent,
         removable : iwRemoveable
     });
     
     // ����������(��ǳ��)�� ��Ŀ���� ǥ���մϴ� 
     infowindow.open(map, marker);
     
     // ���� �߽���ǥ�� ������ġ�� �����մϴ�
     map.setCenter(locPosition);      
 }

 const geolocationT = () => {
     // geolocation true ��� �Լ�
     // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
      navigator.geolocation.getCurrentPosition((position) => {
         const {latitude, longitude} = position.coords
         const locPosition = new kakao.maps.LatLng(latitude, longitude), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
             message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ����������(��ǳ��)�� ǥ�õ� �����Դϴ�
         
         // ��Ŀ�� ����������(��ǳ��)�� ǥ���մϴ�
         displayMarker(locPosition, message);
     });
 };

 const geolocationF = () => {
     // geolocation false �ΰ�� ��� �Լ�
     const locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
     message = 'geolocation�� ����Ҽ� �����..'

     displayMarker(locPosition, message);
 };

 const makeOverListener = (map, marker, infowindow) => {
     // ����������(��ǳ��)�� ǥ���ϴ� Ŭ������ ����� �Լ��Դϴ�
     return function() {
         infowindow.open(map, marker);
     };
 };

 const makeOutListener = (infowindow) => {
      // ����������(��ǳ��)�� �ݴ� Ŭ������ ����� �Լ��Դϴ� 
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
     // HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ� 
     if (navigator.geolocation) {
         geolocationT();
     } else { // HTML5�� GeoLocation�� ����� �� ������ ��Ŀ ǥ�� ��ġ�� ����������(��ǳ��) ������ �����մϴ�
         geolocationF();
     }

     // data.json�ִ� ������ �ҷ��� �ѷ��ش�. //
     db.juso.forEach((item, i) => {
         const {RELAX_RSTRNT_NM, RELAX_ADD1} = item;

         // ������ ��Ŀ�� �����ϰ� ǥ���Ѵ�.
         const marker = new kakao.maps.Marker({
        	 RELAX_ADD1: new kakao.maps.LatLng(positions[0], positions[1]),
             map: map //��Ŀ�� ǥ���� ���� ��ü
         });

      // �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
         var geocoder = new kakao.maps.services.Geocoder();

         // �ּҷ� ��ǥ�� �˻��մϴ�
         geocoder.addressSearch('����Ư����ġ�� ���ֽ� ÷�ܷ� 242', function(result, status) {

             // ���������� �˻��� �Ϸ������ 
              if (status === kakao.maps.services.Status.OK) {

                 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                 // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
                 var marker = new kakao.maps.Marker({
                     map: map,
                     position: coords
                 });

                 // ����������� ��ҿ� ���� ������ ǥ���մϴ�
                 var infowindow = new kakao.maps.InfoWindow({
                     content: '<div style="width:150px;text-align:center;padding:6px 0;">�츮ȸ��</div>'
                 });
                 infowindow.open(map, marker);

                 // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
                 map.setCenter(coords);
             } 
         });    

         // ��Ŀ�� mouseover �̺�Ʈ�� mouseout �̺�Ʈ�� ����մϴ�
         // �̺�Ʈ �����ʷδ� Ŭ������ ����� ����մϴ� 
         // for������ Ŭ������ ����� ���� ������ ������ ��Ŀ���� �̺�Ʈ�� ��ϵ˴ϴ�
         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
     });
     // data.json�ִ� ������ �ҷ��� �ѷ��ش�. //

     // Ŭ�����ͷ��� ��Ŀ���� �߰��մϴ�
     clusterer.addMarkers(markers);
 }

 init();
})();
</script>
</body>
</html>