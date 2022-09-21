var modal = {
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
		$("body").append("<div id='"+id+"' name='"+id+"' class='mu-modal'></div>");
		
		if(popUrl != ""){
			ajax.load(id, popUrl, popParam);	
		}
	},
	close : function(id){
		$("#" + id).remove();
	}
};

var dataDreamPop = {
	/*
     * 데이터 드림 > 공공 데이터 조회 팝업 
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
	openData : function(params) {
		var urlParam = {
			data_dream_rq_sn : params.data_dream_rq_sn || ""
		};
	
		var options = {
		    url    : "/datadream/popupOpenData.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("openData", options);
	},
	close : function(params) {
		modal.close('openData');
	}
};

var prcusePop = {
    /*
     * Data 선택 목록 팝업
     * @params
     *    1. data_nm : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
	open : function(params) {
		var urlParam = {
            data_nm : params.data_nm || ""
		};
	
		var options = {
		    url    : "/prcuse/popupOpenData.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("openData", options);
	},
	close : function(params) {
		modal.close('openData');
	}
};

var stdGuideViewPop = {
    /*
     * 데이터 표준용어 작성 방법 보기 팝업
     * @params
     */
	open : function(params) {
		var urlParam = {
			tabClass : params.tabClass || "tab1"
		};
	
		var options = {
		    url    : "/std/popupStdGuideView.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("stdGuideViewPop", options);
	},
	close : function(params) {
		modal.close('stdGuideViewPop');
	}
};

var stdProcessGuideViewPop = {
    /*
     * 데이터 표준용어 작성 방법 보기 팝업
     * @params
     */
	open : function(params) {
		var urlParam = {
			tabClass : params.tabClass || "tab1"
		};
	
		var options = {
		    url    : "/std/popupStdProcessGuideView.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("stdProcessGuideViewPop", options);
	},
	close : function(params) {
		modal.close('stdProcessGuideViewPop');
	}
};


var insttCodePop = {
	
	open : function(params){
		var urlParam = {
			instt_nm : params.instt_nm || "",
			provd_instt_at : params.provd_instt_at || ""
		};
		
		var options = {
			url : "/member/join/popupInsttCode.do",
			params : urlParam,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		modal.open("insttCodePopup", options);
	},
	close : function(params) {
		modal.close('insttCodePopup');
	}
};

var prentCopyPop = {
    /*
     * 소스코드공유 팝업
     * @params
     *    1. dataId : 
     *    2. tyId : 
     *    3. prentSn : 
     */
	open : function(params) {
		var urlParam = {
            dataId : params.dataId || "" ,
			tyId : params.tyId || "",
            prentSn : params.prentSn || ""
		};
	
		var options = {
		  	title : "소스코드 공유",
	        url : "/prent/popupPrentShare.do",
	        params : urlParam,
	        modal : true
		};
		
		modal.open("prentCopyPop", options);
	},
	close : function(params) {
		modal.close('prentCopyPop');
	}
};

var prentInfoPop = {
    /*
     * 소스코드공유 팝업
     * @params
     *    1. dataId : 
     *    2. tyId : 
     *    3. prentSn : 
     *    4. entityId : 
     */
	open : function(params) {
		var urlParam = {
            dataId : params.dataId || "" ,
			tyId : params.tyId || "",
            prentSn : params.prentSn || "",
            entityId : params.entityId || ""
		};
	
		var options = {
		  	title : "소스코드 공유",
	        url : "/prent/popupPrentInfoData.do",
	        params : urlParam,
	        modal : true
		};
		
		modal.open("prentInfoPop", options);
	},
	close : function(params) {
		modal.close('prentInfoPop');
	}
};

var dataDreamGuidePop = {
	open : function(params) {
	
		var urlParam = {
            service_ty : params.service_ty || "",
		};
	
		var options = {
		    url    : "/datadream/popupGuide.do",
		    params : urlParam,
		    modal  : true
		};
		
		modal.open("dataDreamGuidePop", options);
	},
	close : function() {
		modal.close('dataDreamGuidePop');
	}
}

var apiPrcuseReqstPop = {
    /*
     * Data 선택 목록 팝업
     * @params
     *    1. service_ty : 데이터명
     *    2. call_back_fnc : 콜백함수
     */
	open : function(params) {
		var urlParam = {
            service_ty : params.service_ty || "",
		};
	
		var options = {
		    url    : "/apply/popupOpenData.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("apiPrcuseReqstPop", options);
	},
	close : function(params) {
		modal.close('apiPrcuseReqstPop');
	}
};

var zonePop = {
	open : function(params){

		var urlParam = {};
		
		var options = {
			url : "/member/join/popupZone.do",
			params : urlParam,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		modal.open("zonePopup", options);
    	
    },
	close : function(params) {
		modal.close('zonePopup');
	}
};

var dataErrorPop = {
    /*
     * 오류 데이터 신고 팝업
     * @params
     *    1. dataId :
     *    2. cl_code : 0005 openapi / 0006 파일 / 0007 링크
     */
	open : function(params) {
		var urlParam = {
           	data_id : params.data_id,
           	cl_code : params.cl_code
		};

		var options = {
		  	title : "오류신고",
	        url : "/opendata/data/popupDataError.do",
	        params : urlParam,
	        modal : true
		};
		
		modal.open("dataErrorPop", options);
	},
	close : function(params) {
		modal.close('dataErrorPop');
	}
};

var stsfdgPop = {
	/*
     * 마이페이지 관심 공공데이터 > 만족도 팝업 
     * @params
     *    1. data_id : 데이터아이디
     *    4. data_nm
     *    5. call_back_fnc : 콜백함수
     */
	openData : function(params) {
		var urlParam = {
			data_id : params.data_id || ""
		};
	
		var options = {
		    url    : "/mypage/intrst/popupStsfdg.do",
		    params : urlParam,
		    call_back_fnc : params.call_back_fnc || "",
		    modal  : true
		};
		
		modal.open("stsfdgPop", options);
	},
	close : function(params) {
		modal.close('stsfdgPop');
	}
};

var goStsfdgPop = {
	open : function() {
	
		var urlParam = {
		};
	
		var options = {
		    url    : "/mypage/intrst/popupGoStsfdg.do",
		    params : urlParam,
		    modal  : true
		};
		
		modal.open("goStsfdgPop", options);
	},
	close : function() {
		modal.close('goStsfdgPop');
	}
}
var zoneMobileSiPop = {
	open : function(params){

		var urlParam = {};
		
		var options = {
			url : "/member/join/popupZoneMobileSi.do",
			params : urlParam,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		modal.open("zoneMobileSiPop", options);
    	
    },
	close : function(params) {
		modal.close('zoneMobileSiPop');
	}
}
var zoneMobileGuPop = {
	open : function(params){

		var urlParam = {};
		
		var options = {
			url : "/member/join/popupZoneMobileGu.do",
			params : urlParam,
			call_back_fnc : params.call_back_fnc || "",
			modal : true
		};
		
		modal.open("zoneMobileGuPop", options);
    	
    },
	close : function(params) {
		modal.close('zoneMobileGuPop');
	}
}
var dataPackageDtlPop = {
		/*
	     * 데이터 프리존 상품상세
	     * @params
	     */
		open : function(params){
			var urlParam = {
				dataClId : params.dataClId,
				upperDataClId : params.upperDataClId
			};

			var options = {
				url : "/datafreezone/preview/dataPackagePopList.do",
				params : urlParam,
				modal : true
			};

			modal.open("dataPackageDtlPop", options);
		},
		close : function(params) {
			modal.close('dataPackageDtlPop');
		}
	};

var dataExplorerDtlPop = {
		/*
	     * 데이터 프리존 데이터탐색기상세
	     * @params
	     */
		open : function(params){
			var urlParam = {
				tblMetaId : params.tblMetaId,
				dataClId : params.dataClId
			};

			var options = {
				url : "/datafreezone/preview/dataExplorerPopList.do",
				params : urlParam,
				modal : true
			};

			modal.open("dataExplorerDtlPop", options);
		},
		close : function(params) {
			modal.close('dataExplorerDtlPop');
		}
	};

var dfzDataUpdatePop = {
		/*
	     * 데이터프리존 신청데이터 수정 팝업
	     * @params
	     */
		open : function(params){
			var urlParam = {
					stdAplyId : params.stdAplyId
				};

			var options = {
				url : "/mypage/datafreezone/indexDataFreezoneDataUpdatePop.do",
				params : urlParam,
				modal : true
			};

			modal.open("indexDataFreezoneDataUpdatePop", options);
		},
		close : function(params) {
			modal.close('indexDataFreezoneDataUpdatePop');
		}
};
	