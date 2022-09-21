var message = {
	pattern : {
		'10000' : {
			'code' : '10000',
			'name' : '건강식단 추구형',
			'desc' : '저칼로리, 저염식, 저당식 등 건강한 식단에 관심이 많습니다.'
			},
		'01000' : {
			'code' : '01000',
			'name' : '안전성 중시형',
			'desc' : '원산지, 무농약, 유기농을 선호하고 인증여부를 확인하는 등 안전한 식단에 관심이 많습니다'
		},
		'00100' : {
			'code' : '00100',
			'name' : '경제성 추구형',
			'desc' : '가격정보를 확인하고, 저렴한 식재료를 구입하는 등 알뜰한 식단에 관심이 많습니다.'
		},
		'00010' : {
			'code' : '00010',
			'name' : '식생활 모험가형',
			'desc' : '새로운 음식, 새로운 요리, 이색적인 식당을 선호하는 등 새로운 식단에 관심이 많습니다.'
		},
		'00001' : {
			'code' : '00001',
			'name' : '로컬푸드 지향형',
			'desc' : '전통음식과 지역특산물, 향토음식점을 선호하는 전통적인 식단에 관심이 많습니다.'
		}
	},
	
	question : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "예"; 
			}else	 if("N" == val){
				return "아니오";
			}
		}else{
			return "";
		}
	},
	use : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "사용"; 
			}else	 if("N" == val){
				return "미사용";
			}
		}else{
			return "";
		}
	},
	confirm : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "승인"; 
			}else	 if("N" == val){
				return "승인대기";
			}
		}else{
			return "";
		}
	},
	open : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "공개"; 
			}else	 if("N" == val){
				return "비공개";
			}
		}else{
			return "";
		}
	},		
	apply : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "적용"; 
			}else	 if("N" == val){
				return "미적용";
			}
		}else{
			return "";
		}
	},
	reflct : function(val){
		if(val != undefined){
			if("Y" == val){
				return "반영"; 
			}else if("N" == val){
				return "미반영";
			}else if("F" == val){
				return "실패";
			}else{
				return "대기중";
			}
		}else{
			return "대기중";
		}
	},
	reception : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "수신"; 
			}else	 if("N" == val){
				return "미수신";
			}
		}else{
			return "";
		}
	},
	httpStatus : function(status){
		var msg = "";
		
		if(status == "601"){
			msg = "로그인이 필요합니다.";
		}else if(status == "602"){
			msg = "세션이 종료되었습니다.";
		}else if(status == "610"){
			msg = "권한오류";
		}else if(status == "631"){
			msg = "파일을 정보가 없음";
		}else if(status == "632"){
			msg = "파일이 존재하지 않음";
		}else if(status == "405"){
			msg = "요청타입오류";
		}else{
			msg = "시스템오류발생 : "+status;
		}	
		return msg;
	},
	mntnab : function(val){
		if(val != undefined){
			if("0" == val){
				return "사용";
			}else{
				return "미사용";
			}
		}else{
			return "";
		}
	},
	answer : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "삭제"; 
			}else	 if("N" == val){
				return "공개";
			}
		}else{
			return "";
		}
	},
	essntl : function(val) {
		if(val != undefined){
			if("Y" == val){
				return "필수"; 
			}else if("N" == val){
				return "선택";
			}else if("D" == val){
				return "기본";
			}
		}else{
			return "";
		}
	},
	myLife : function(val){
		if(val != undefined && val != ""){
			if(val.length == 5){
				var cnt = 0;
				var msg = "";
				
				if(val.substring(0,1) == "1"){
					msg += this.pattern['10000'].name;
					cnt++;
				}
				if(val.substring(1,2) == "1"){
					if(cnt > 0)	msg += ", ";
					
					msg += this.pattern['01000'].name;
					cnt++;
				}
				if(val.substring(2,3) == "1"){
					if(cnt > 0)	msg += ", ";

					msg += this.pattern['00100'].name;
					cnt++;
				}
				if(val.substring(3,4) == "1"){
					if(cnt > 0)	msg += ", ";

					msg += this.pattern['00010'].name;
					cnt++;
				}
				if(val.substring(4,5) == "1"){
					if(cnt > 0)	msg += ", ";

					msg += this.pattern['00001'].name;
					cnt++;
				}
				
				return msg;
			}else{
				return val;
			}
		}else{
			return "";
		}
	},
	
	myPattern:function (val) {
		var array = new Array();
		if(val != undefined && val != ""){
			if(val.length == 5){
				var cnt = 0;
				var msg = "";
				
				if(val.substring(0,1) == "1"){
					array.push(this.pattern['10000']);
				}
				if(val.substring(1,2) == "1"){
					array.push(this.pattern['01000']);
				}
				if(val.substring(2,3) == "1"){
					array.push(this.pattern['00100']);
				}
				if(val.substring(3,4) == "1"){
					array.push(this.pattern['00010']);
				}
				if(val.substring(4,5) == "1"){
					array.push(this.pattern['00001']);
				}
			}
		}
		
		return array;
	},
	
	getAllPattern:function() {
		return this.pattern;
	},
	
	relaxAditValue:function(frnchsRecomendAt, snitatGradAt, prgnRstrntAt) {
		var retVal = "";
		
		if("Y" == frnchsRecomendAt) {
			retVal = (retVal != "" ? retVal + " / " : "") + "프랜차이즈협회 우선추천매장";
		}
		
		if("Y" == snitatGradAt) {
			retVal = (retVal != "" ? retVal + " / " : "") + "위생등급제";
		}
		
		if("Y" == prgnRstrntAt) {
			retVal = (retVal != "" ? retVal + " / " : "") + "모범음식점";
		}
		
		return retVal;
	}
};

