var dialog = {
	create : function(targetId, options){
		
		$('#'+targetId).dialog({
			autoOpen: options.autoOpen || false,
			width: options.width || 500,
			height: options.height || 300,
			draggable : options.draggable || false,
			resizable : options.resizable || false,
			modal : options.modal || true,
			
			buttons: options.buttons || ''
		});

	},
	open : function(targetId){
		$('#'+targetId).dialog("open");
	},
	close : function(targetId){
		$('#'+targetId).dialog("close");
	},
	destory : function(targetId){
		$('#'+targetId).dialog( "destroy" );	
	}
	
};

var pop = {
	open : function(id, options){
		
		var popParam = {
			pop_id : "",
			call_back_fnc : "" 
		};
		
		var popUrl = options.url || "";
		var popWidth = options.width || 500;
		var popHeight = options.height || 500;
		var popModal;
		
		if(options.modal == undefined){
			popModal = true;
		}
		
		popParam = options.params;
		popParam.pop_id = id;
		popParam.call_back_fnc = options.call_back_fnc || "";
		
		$("body").append("<div id=\""+id+"\" style=\"display:none;\" class=\"pop-bx\" title=\"\"></div>");
		
		dialog.create(id, {autoOpen:true, width:popWidth, height:popHeight, modal: popModal});
		
		$("#"+id).dialog({
			close : function(event, ui){
				dialog.destory(id);
				$("#"+id).remove();
			}
		});
		
		pop.title(id, options.title);
		
		$("#"+id).parent("div.ui-dialog").addClass("pop-area");
		$("#"+id).parent("div.ui-dialog").children("div.ui-dialog-titlebar").addClass("title");
		
		if(popUrl != ""){
			ajax.load(id, popUrl, popParam);	
		}
		
	},
	title : function(id, title){
		$("#"+id).prev("div.ui-dialog-titlebar").children("span.ui-dialog-title").html(title);
	},
	close : function(id){
		dialog.close(id);
	}
};

var commPop = {
	/*
	 * 우편번호 팝업
	 */
	post : function(){
		
	},
	/*
	 * 기관 팝업
	 * @params
	 *    1. instt_nm : 기관명
	 *    2. call_back_fnc : 콜백함수
	 */
	instt : function(params){
		var urlParam = {
			instt_nm : params.instt_nm || ""
		};
		
		var options = {
			title : "기관검색",
			url : "/common/instt/popupInstt.do",
			params : urlParam,
			width:700,
			height:530,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupInstt", options);
	},	
	
	/*
	 * 기관 팝업
	 * @params
	 *    1. instt_nm : 기관명
	 *    2. call_back_fnc : 콜백함수
	 */
	sortColumn : function(params){
		var urlParam = {
				sort_column : params.sort_column || "",
				entity_id : params.entity_id || ""
		};
		
		var options = {
			title : "컬럼검색",
			url : "/common/instt/popupColumn.do",
			params : urlParam,
			width:700,
			height:530,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupSortColumn", options);
	},	
	/*
	 * 기관코드 팝업
	 * @params
	 *    1. instt_nm : 기관명
	 *    2. call_back_fnc : 콜백함수
	 *    3. provd_instt_at : 제공기관코드만 조회  (Y or '')	 
	 */
	insttCode : function(params){
		var urlParam = {
			instt_nm : params.instt_nm || "",
			provd_instt_at : params.provd_instt_at || ""
		};
		
		var options = {
			title : "기관코드검색",
			url : "/common/instt/code/popupInsttCode.do",
			params : urlParam,
			width:800,
			height:550,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupInsttCode", options);
	},
	/*
	 * 분류체계 팝업
	 * @params
	 *    1. cl_se_code : 분류코드
	 *    2. call_back_fnc : 콜백함수
	 */
	clsystm : function(params){
		if(params.cl_se_code == null || params.cl_se_code == undefined || params.cl_se_code == ""){
			alert("분류체계가 지정되지 않았습니다.");
			return;
		}
		var urlParam = {
			cl_se_code : params.cl_se_code
		};
		
		var options = {
			title : "분류체계검색",
			url : "/common/clsystm/popupClSystm.do",
			params : urlParam,
			width:400,
			height:400,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupClSystm", options);
		
	},
	/*
     * 엔터티 팝업
     * @params
     *    1. entity_nm : 엔터티명
     *    2. call_back_fnc : 콜백함수
     */
    entity : function(params){
        var urlParam = {
            entity_nm : params.entity_nm || ""
        };
        
        var options = {
        	title : "엔티티검색",
            url : "/common/entity/popupEntity.do",
            params : urlParam,
            width:600,
            height:580,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupEntity", options);
    },
    /*
     * API 선택 목록 팝업
     * @params
     *    1. api_nm : API명
     *    2. call_back_fnc : 콜백함수
     */
    api : function(params){
        var urlParam = {
            api_nm : params.api_nm || ""
        };
        
        var options = {
        	title : "OpenAPI검색",
            url : "/common/api/popupOpenApi.do",
            params : urlParam,
            width:600,
            height:580,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupOpenApi", options);
    },
    /*
     * Data 선택 목록 팝업
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
    openData : function(params){
        var urlParam = {
            data_nm : params.data_nm || "",
            service_ty : params.service_ty || "",
            realm_code : params.realm_code || ""
        };
        
        var options = {
        	title : "Data검색",
            url : "/common/opendata/popupOpenData.do",
            params : urlParam,
            width:750,
            height:530,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupOpenData", options);
    },
    /*
     * Data 선택 목록 팝업
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
    openDataRawdata : function(params){
        var urlParam = {
            data_nm : params.data_nm || "",
            service_ty : params.service_ty || "",
            realm_code : params.realm_code || ""
        };
        
        var options = {
        	title : "Data검색",
            url : "/common/opendata/popupOpenDataRawdata.do",
            params : urlParam,
            width:750,
            height:530,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupOpenData", options);
    },
    zone : function(params){

		var urlParam = {};
		
		var options = {
			title : "지역검색",
			url : "/common/popupZone.do",
			params : urlParam,
			width: 630,
			height: 470,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupAdministZone", options);
    	
    },
    lifeStyle : function(params){
    	
		var urlParam = {};
		
		var options = {
			title : "나의 식생활 라이프스타일",
			url : "/common/popupMyLifeStyle.do",
			params : urlParam,
			width: 870,
			height: 580,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		pop.open("popupMyLifeStyle", options);
    	
    },
    
    openGpin : function(){
    	
    	var wWidth = 360;
 	    var wHight = 120;

 	    var wX = (window.screen.width - wWidth) / 2;
 	    var wY = (window.screen.height - wHight) / 2;

 	    var w = window.open("/gpin/gpinAuthRequest.do", "gPinLoginWin", "directories=no,toolbar=no,left="+wX+",top="+wY+",width="+wWidth+",height="+wHight);
    	
    }
};

var dataPop = {
	fileDownload : function(data_id, file_ty_code, file_sn){
		var params = {
			data_id : data_id,
			file_ty_code : file_ty_code,
			file_sn : file_sn
		};
		
		var pop_title = "";
		if(file_ty_code == "raw"){
			pop_title = "원시파일 활용목적";
		}else{
			pop_title = "데이터파일 활용목적";
		}
		
        var options = {
        	title : pop_title,	
            url : "/opendata/data/popupDataFileDownload.do",
            params : params,
            width:500,
            height:300,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupDataFileDownload", options);
	},
	dataDownload : function(data_id, file_ty_code, call_back_fnc){
		var params = {
			data_id : data_id,
			file_ty_code : file_ty_code
		};
		
        var options = {
        	title : "데이터 다운로드 활용목적",	
            url : "/opendata/data/popupDataDownload.do",
            params : params,
            width:500,
            height:300,
            call_back_fnc : call_back_fnc,
            modal : true
        };
        
        pop.open("popupDataDownload", options);
	},	
    /* 데이터 속성 팝업 */
    attrb : function(params){
        var urlParam = {
            data_id : params.data_id
        };
        var options = {
        	title : "데이터속성",
            url : "/opendata/data/popupDataAttribute.do",
            params : urlParam,
            width:720,
            height:300,
            modal : true
        };
        
        pop.open("popupAttribute", options);
    },
	dataerr : function(params) {
		var urlParams = {
			data_id : params.data_id
		};
		var options = {
			title : "오류신고",
			url : "/opendata/data/popupDataErrorInsert.do",
			params : urlParams,
			width : 500,
			height : 400,
			modal : true				
		};
		
		pop.open("popupDataErrorInsert", options);
	},
	dataMainChart : function(params) {
		var urlParams = {
			no : params
		};
		var options = {
			title : "메인 챠트",
			url : "/manage/popupMainChart.do",
			params : urlParams,
			width : 800,
			height : 600,
			modal : true				
		}; 
		
		pop.open("popupMainChart", options);
	},
	demandPopup : function(params) {
		var options = {
			title : "개방수요목록",
			url : "/intro/popupDemandStats.do",
			params : params,
			width : 900,
			height : 560,
			modal : true				
		}; 
		
		pop.open("demandPopup", options);
	},
	srcShare : function(params){
		var options = {
			title : "소스코드 공유",
			url : "/opendata/data/popupSrcShare.do",
			params : params,
			width : 500,
			height : 160,
			modal : true				
		};
		pop.open("srcSharePopup", options);
	},
	srcShare2 : function(params){
		var options = {
			title : "소스코드 공유",
			url : "/privatedata/popupSrcShare.do",
			params : params,
			width : 500,
			height : 160,
			modal : true				
		};
		pop.open("srcSharePopup", options);
	}
};


var prentPop = {
	/*
     * Data 선택 목록 팝업
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
	prentDataPopup : function(params){
        var urlParam = {
            data_nm : params.data_nm || "",
            service_ty : params.service_ty || "",
            realm_code : params.realm_code || ""
        };
        
        var options = {
        	title : "Data검색",
            url : "/manage/prent/popupPrentData.do",
            params : urlParam,
            width:800,
            height:600,
            call_back_fnc : params.call_back_fnc || "",
            modal : true
        };
        
        pop.open("popupPrentData", options);
    },

	/*
	 * 소스코드 공유 팝업
	 * @params
	 *    1. localurl : 공유할 url
	 *    2. call_back_fnc : 콜백함수
	 */
    popupPrentShare : function(params){
		var urlParam = {
				dataId : params.dataId || "" ,
				tyId : params.tyId || "",
                prentSn : params.prentSn || ""
			};
		
	    var options = {
	    	title : "소스코드 공유",
	        url : "/prent/popupPrentShare.do",
	        params : urlParam,
	        width:400,
	        height:300,
	        modal : true
	    };
	    
	    pop.open("popupPrentShare", options);
	},

	/*
	 * sns공유 팝업
	 * @params
	 *    1. localurl : 공유할 url
	 *    2. call_back_fnc : 콜백함수
	 */
	prentSnsPopup : function(params){
		var urlParam = {
				sj : params.sj || ""
			};
		
	    var options = {
	    	title : "SNS 공유",
	        url : "/prent/popupPrentSNS.do",
	        params : urlParam,
	        width:300,
	        height:180,
	        modal : true
	    };
	    
	    pop.open("popupPrentSNS", options);
	},
	
	/*
	 * 데이터 정보 팝업
	 * @params
	 *    1. localurl : 공유할 url
	 *    2. call_back_fnc : 콜백함수
	 */
	prentDataInfoPopup : function(params){
        var urlParam = {
        		dataId : params.dataId || "",
                tyId : params.tyId || "",
                prentSn : params.prentSn || "",
                entityId : params.entityId || ""
            };
		
	    var options = {
	    	title : "데이터 정보",
	        url : "/prent/popupPrentInfoData.do",
	        params : urlParam,
	        width:800,
	        height:600,
	        modal : true
	    };
	    
	    pop.open("popupPrentInfoData", options);
	}
};

var intrfcPop = {
	/*
     * 안심식당 테이블 데이터 조회 팝업 
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
	intrfcRelaxData : function(params) {
		var urlParam = {
			file_nm : params.file_nm || ""
		};
	
		var options = {
			title  : params.title,
		    url    : "/manage/attr/upload/mng/popupIntrfcRelaxData.do",
		    params : urlParam,
		    width  : 900,
		    height : 650,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		pop.open("intrfcRelaxData", options);
	}
};
