/**
 * Spin 처리
 */
var spin = {
		start : function(){
			$("body").waiting();
		},
		stop : function(){
			$("body").waiting('done');
		}
};
/**
 * Ajax 관련함수
 */
var ajax = {
		call : function(options){
//			spin.start();
			
			jQuery.ajaxSettings.traditional = true;
			
			options.contentType = options.contentType || "application/x-www-form-urlencoded;charset=UTF-8";
			options.type = options.type || "POST";
			options.dataType = options.dataType || "json";
			
			$.ajax({
				url : options.url,
				type : options.type,
				dataType : options.dataType,
				contentType : options.contentType,
				data : options.data
			})
			.done(function(data, textStatus, jqXHR){
				options.callBack(data);
			})
			.fail(function( jqXHR, textStatus, errorThrown ){
				ajax.error(jqXHR.status);
			})
			.always(function(){
//				spin.stop();
			})
			.then(function(data, textStatus, jqXHR ) {
			});
			
			
		},
		load : function(targetId, url, params){
			
			if(params == undefined){
				params = {};
			}
			$("#"+targetId).load(url, params, function(response, status, xhr){
				
				if(status == "error"){
					ajax.error(xhr.status);
				}
				
			});
		},
		error : function(status){

			var msg = message.httpStatus(status);
			alert(msg);

			if(status == "601" || status == "602"){
				var loc = unescape(document.location.href);
				loc = loc.replace(/.{2,}:\/{2,}/, ""); // file:/// 를 지워버린다.
				loc = loc.substring(loc.indexOf("/"), loc.length);
				
				location.href="/member/indexLogin.do?redirect_url="+loc;
			}
		}		
};

var form = {
		clear : function(formId){
			var currentForm = $("#"+formId);
			
			var inputElement = currentForm.find("input").not(".no_clear");
			var selectElement = currentForm.find("select").not(".no_clear");
			var textareaElement = currentForm.find("textarea").not(".no_clear");
			var spanElement = currentForm.find("td > span").not(".no_clear");
			
			for(var i = 0; i < inputElement.length; i++){
				if(inputElement[i].type == "checkbox" || inputElement[i].type == "radio"){
					$(inputElement[i]).attr("checked", false);
				}else{
					$(inputElement[i]).val("");
				}
			}
			
			for(var i = 0; i < selectElement.length; i++){
				$(selectElement[i]).val("");
			}
			
			for(var i = 0; i < textareaElement.length; i++){
				$(textareaElement[i]).val("");
			}
			
			for(var i = 0; i < spanElement.length; i++){
				$(spanElement[i]).html("");
			}
		}
};

var validate = {
	set: function(formId) {
		$("#"+formId).validationEngine();
	},		
	hide: function(formId) {
		$("#"+formId).validationEngine("hide");
	},
	check: function(formId) {
		return $("#"+formId).validationEngine("validate");
	}
};



var valid = {
	userId : function(val){
		//영문자(소문자)로 시작하는 6~20ㄱ자
		var exp = /^[a-z]+[a-z0-9]{5,19}$/;
		return exp.test(val);
	},
	password : function(val){
		var exp = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-z]).*$/;
		return exp.test(val);
	},
	bizNo : function(val){
		var exp = /^\d{3}-?\d{2}-?\d{5}$/;
		return exp.test(val);
	},
	cprNo : function(val){
		var exp = /^\d{6}-?\d{7}$/;
		return exp.test(val);
	},
	telNo : function(val){
		var exp = /^\d{2,3}-?\d{3,4}-?\d{4}$/;
		return exp.test(val);
	},
	mobileNo : function(val){
		var exp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		return exp.test(val);
	}
};


var format = {
	date: function(date) {
		if(date != "" && date != undefined && date != null && date != 'null'){
			if(date.length == 6){
				return date.replace(/([0-9]{4})([0-9]{2})/,"$1-$2");
			}else if(date.length == 8){
				return date.replace(/([0-9]{4})([0-9]{2})([0-9]{2})/,"$1-$2-$3");
			}else{
				return date;
			}
		}else{
			return "";
		}
		
	},		
	datetime : function(date){
		if(date != "" && date != undefined && date != null && date != 'null'){
			if(date.length == 12){
				return date.replace(/([0-9]{4})([0-9]{2})([0-9]{2})([0-9]{2})([0-9]{2})/,"$1-$2-$3 $4:$5");			
			}else if(date.length == 14){
				return date.replace(/([0-9]{4})([0-9]{2})([0-9]{2})([0-9]{2})([0-9]{2})([0-9]{2})/,"$1-$2-$3 $4:$5:$6");			
			}else{
				return date;
			}
		}else{
			return "";
		}		
	},
	time : function(date){
		if(date != "" && date != undefined && date != null && date != 'null'){
			if(date.length == 4){
				return date.replace(/([0-9]{2})([0-9]{2})/,"$1:$2");			
			}else if(date.length == 14){
				return date.replace(/([0-9]{2})([0-9]{2})([0-9]{2})/,"$1:$2:$3");			
			}else{
				return date;
			}
		}else{
			return "";
		}		
	},
	tel: function(tel){
		if(tel != "" && tel != undefined && tel != null && tel != 'null'){
			return tel.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");			
		}else{
			return "";
		}
	},	
	fax: function(fax){
		if(fax != "" && fax != undefined && fax != null && fax != 'null'){
			return fax.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");			
		}else{
			return "";
		}
	},	
	mobile: function(no){
		if(no != "" && no != undefined && no != null && no != 'null'){
			return no.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");	
		}else{
			return "";
		}
	},	
	post: function(no) {
		if(no != "" && no != undefined && no != null && no != 'null'){
			return no.replace(/([0-9]{3})([0-9]{3})/,"$1-$2");	
		}else{
			return "";
		}
	},	
	bizNo: function(no){
		
		if(no != "" && no != undefined && no != null && no != 'null'){
			return no.replace(/([0-9]{3})([0-9]{2})([0-9]{5})/,"$1-$2-$3");	
		}else{
			return "";
		}
	},
	cprNo: function(no){
		
		if(no != "" && no != undefined && no != null && no != 'null'){
			return no.replace(/([0-9]{6})([0-9]{7})/,"$1-$2");	
		}else{
			return "";
		}
	},
	nvl : function(val){
		if(val == null){
			return "";
		}else{
			return val;
		}
	},
	num : function(val){
		var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
		  val += '';                          // 숫자를 문자열로 변환

		  while (reg.test(val))
		    val = val.replace(reg, '$1' + ',' + '$2');

		  return val;

	},
	fileSize : function(fileSize){
		var suffix = 'B';
		
		if (fileSize > 1024) {
			fileSize = Math.round(fileSize / 1024);
			suffix   = 'KB';
		}
		
		if (fileSize > 1024) {
			fileSize = Math.round(fileSize / 1024);
			suffix   = 'MB';
		}

		return fileSize+suffix;
	},
	decodeHtml : function(val){
		val = val.replace(/\n/ig, "<br/>"); // <br>을 엔터로 변경
		val = val.replace(/ /ig, "&nbsp;"); // 공백      
		return val;
	},
	phon : function(no1, no2, no3){
		var phon_no = "";
		if(no1 != null){
			phon_no += no1;
		}
		if(no2 != null){
			phon_no += "-" + no2;
		}
		if(no3 != null){
			phon_no += "-" + no3;
		}
		
		return phon_no;
	}
};

function getLengthByte($obj) {
	stringByteLength = (function(s,b,i,c){
	    for(b=i=0;c=s.charCodeAt(i++);b+=c>>11?3:c>>7?2:1);
	    return b;
	})($obj.val());
	
	return stringByteLength;
}

function validInputNum(obj){
	obj.value = obj.value.replace(/[^0-9]/g, '');
//	if ((event.keyCode < 48) || (event.keyCode > 57)){
//		event.returnValue = false;
//	}
}
	
//파일 업로드시 로딩 객체
var loadingObj = {
		appendObj : null,
		create: function(appendObj){
			this.appendObj = appendObj;
			var loadingDivId = appendObj.prop('tagName')+"_loadingDiv";
			var loadingDiv = "<div id=\""+loadingDivId+"\" style=\"display: none; background-color: #ffffff; position: absolute; left: 0px; top: 0px \">";
			loadingDiv+="<div style=\"position: absolute; top: 50%; left: 50%; width: 100%; margin-top: -0.5em; margin-left: -50%; text-align: center;\">";
			loadingDiv+="<img src=\"/img/common/loading.gif\" alt=\"loading\" /></div></div>";
			appendObj.append(loadingDiv);
		},
		view: function(viewFlg){
			var loadingDiv = $('#'+this.appendObj.prop('tagName')+'_loadingDiv');
			
			if(viewFlg){
				var height = 0;
				if($('#header').attr('style') == undefined) height+= $('#header').outerHeight();
				height += $('#container').outerHeight()+$('#footer').outerHeight();
				
				loadingDiv.width(this.appendObj.width()).height(height);
				loadingDiv.fadeTo(500,0.7);
			 }else{
				loadingDiv.css('display','none');
			 }			
		}
};

//파일업로드 컴포넌트
var multiFileComp = {
		targetId : "",extsn : "", fileCnt : 0, size : 0, totalSize : 0, fileNo : 0, mode : "", required : "", showFileCount : "",
		jsonFileList : new Array(), inputId : "", fileListId: "", /*fileLblId: "",*/ labelId : "", sumSize : 0, idx : 0, fileNmArr : new Array(),
		load : function(targetId, options){
			this.targetId = targetId;
			this.extsn = options.accept_extsn || "xls|xlsx|hwp|txt|pdf|doc|docx|ppt|pptx|csv|zip|jpg|gif|png";
			this.fileCnt = options.max_cnt || 0;
			this.size = options.max_size || 10240;
			this.totalSize = options.total_size || 102400;
			this.fileNo = options.file_no || 0;
			this.mode = options.mode || "U";
			this.required = options.required == undefined ? true : options.required ;
			this.inputId = this.targetId+'_input';
			this.inputDivId = "div_" + this.inputId;
			this.labelId = this.targetId+"_label";
			if(this.mode !="D") loadingObj.create($('body'));
			this.showFileCount = options.showFileCount || "N";
			this.init();
		},
		init : function(){			
			if(this.fileNo != 0){
				$('#'+multiFileComp.targetId).append("<input type='hidden' name='file_no' value='"+this.fileNo+"'/>");
			}
			
			if(this.mode != "D") {
				$('#'+multiFileComp.targetId).append("<div class='mu-file-attach'></div>");
				$('#'+multiFileComp.targetId).children(".mu-file-attach").append("<input type='text' id='attach_file_name' class='mu-input' placeholder='파일 첨부 크기는 최대 5MB까지 가능합니다.' title='첨부파일' readonly='readonly' />");
			}
			$('#'+multiFileComp.targetId).append("<ul class='file-sch-list'></ul>");
			this.fileSearch(this.fileNo);
			this.fileObjEvntInit();
		},
		fileSearch : function(fileNo){
			multiFileComp.clear();
			if(fileNo != 0 && fileNo != null && fileNo !="" && fileNo != undefined){
				this.fileNo = fileNo;
				$.ajax({
					type:"POST",			
					url : '/common/getFileList.do',
					data : {
						file_no : fileNo
					},
					dataType:"json",					
					success : function(data) {
						multiFileComp.jsonFileList = data;
						if(multiFileComp.showFileCount == "Y") {
							if(multiFileComp.mode == "D") {
								if(data.length > 0) {
									$('#'+multiFileComp.targetId).prepend("<div class='data-info'><dl><dt>첨부파일</dt><dd>("+data.length+")</dd></dl></div>");
								}
							}
						}
						
						$(multiFileComp.jsonFileList).each(function(idx,val){
						//alert(val.file_no+"\n"+val.sn+"\n"+val.file_cours+"\n"+val.orginl_file_nm+"\n"+val.physicl_file_nm+"\n"+val.file_mg+"\n"+val.extsn);							
							var fileNm = val.orginl_file_nm+"."+val.extsn;
							var $file_sch_list = $('#'+multiFileComp.targetId).children('.file-sch-list');
							$file_sch_list.append("<li id='"+multiFileComp.labelId+idx+"'></li>");
							var $file_sch_list_li = $file_sch_list.children("#"+multiFileComp.labelId + idx);
							
							if(multiFileComp.mode != "D"){
								$file_sch_list_li.append("<em><i class='mu-icon-svg file'>첨부파일있음</i><span>"+fileNm+"</span></em>");
								$file_sch_list_li.append("<button type='button' class='mu-btn-sm mu-btn-icon-only mu-btn-bg-non' onclick='multiFileComp.deleteFile("+idx+")'><i class='mu-icon-svg item-close'></i><span>해당내용 삭제</span></button>");
							} else {
								$file_sch_list_li.append("<a href='javascript://' onclick='multiFileComp.download("+idx+")'><i class='mu-icon-svg file'>첨부파일있음</i>"+fileNm+"</a>");
							}
							
							multiFileComp.fileNmArr.push(fileNm);
							multiFileComp.idx++;
						});
						
						if(multiFileComp.mode != "D"){
							var $mu_file_attach = $('#'+multiFileComp.targetId).children('.mu-file-attach');
							$mu_file_attach.append("<div class='mu-file-btn' id='"+multiFileComp.inputDivId+multiFileComp.idx+"'></div>");
							var $inputDiv = $mu_file_attach.children("#"+multiFileComp.inputDivId + multiFileComp.idx);
							$inputDiv.append("<button type='button' class='mu-btn'><label for='"+multiFileComp.inputId+multiFileComp.idx+"'>파일찾기</label></button>");
							$inputDiv.append("<input type='file' id='"+multiFileComp.inputId+multiFileComp.idx+"' class='mu-btn-hide'>");
						}
					},
					error : function(xhr, status, error) {
						var msg = message.httpStatus(status);
						alert(msg);
					}
		        });
			} else {
				if(multiFileComp.mode != "D"){
					var $mu_file_attach = $('#'+multiFileComp.targetId).children('.mu-file-attach');
					$mu_file_attach.append("<div class='mu-file-btn' id='"+multiFileComp.inputDivId+multiFileComp.idx+"'></div>");
					var $inputDiv = $mu_file_attach.children("#"+multiFileComp.inputDivId + multiFileComp.idx);
					$inputDiv.append("<button type='button' class='mu-btn'><label for='"+multiFileComp.inputId+multiFileComp.idx+"'>파일찾기</label></button>");
					$inputDiv.append("<input type='file' id='"+multiFileComp.inputId+multiFileComp.idx+"' class='mu-btn-hide'>");
				} else {
					if(multiFileComp.showFileCount == "Y") {
						$('#'+multiFileComp.targetId).prepend("<div class='data-info'><dl><dt>첨부파일</dt><dd>(0)</dd></dl></div>");
					}
				}
			}
		},
		fileObjEvntInit : function(){
			if(multiFileComp.mode != "D") {
				$('#'+this.targetId).off();
				$('#'+this.targetId).on('change', 'input[id^="'+this.inputId+'"]', function(){					
//				$('input[id^="'+this.inputId+'"]').on('change', function(){
//				$('.mu-btn-hide').on('change', function(){
					
					var file =$(this).prop('files')[0];
					if(file == null) return;
					var fileNm = file.name;
					
					var fileSize =  Math.floor((file.size/1024)/1024);
					var parentObj = $(this).parent();
					var appendFlg = true;
					var msg = "";
					if($.inArray(fileNm, multiFileComp.fileNmArr) > -1){
						appendFlg = false;
						msg = fileNm+"은 이미 선택된 파일입니다!.";
					}
					
					if(multiFileComp.extsn !=""&& multiFileComp.extsn != null){
						var extsn = fileNm.substring(fileNm.lastIndexOf(".")+1,fileNm.length);
						var regexp = new RegExp(multiFileComp.extsn);
						if(!regexp.test(extsn)){
							appendFlg = false;
							msg = extsn+"는(은) 업로드 할수 없는 파일확장자입니다.\n가능확장자["+multiFileComp.extsn+"]";
						}
					}
					
					if(multiFileComp.fileCnt >0&&appendFlg){
						var fileCnt = $('li[id^="'+multiFileComp.labelId+'"]').length;
						if(fileCnt>=multiFileComp.fileCnt){
							appendFlg = false;
							msg ="최대 "+multiFileComp.fileCnt+"개 까지 파일첨부가 가능합니다.";
						}
					}
					
					if(multiFileComp.size >0&&appendFlg){
						if(fileSize>multiFileComp.size){
							appendFlg = false;
							msg ="파일 개당 사이즈는 "+multiFileComp.size+"MB로 제한합니다.\n(첨부파일 사이즈: "+fileSize+"MB)";
						}
					}
					
					if(multiFileComp.totalSize >0&&appendFlg){
						if((multiFileComp.sumSize+fileSize)>multiFileComp.totalSize){
							appendFlg = false;
							msg ="첨부파일들의 총 사이즈는 "+multiFileComp.size+"MB로 제한합니다.\n(첨부가능 사이즈: "+(multiFileComp.totalSize-multiFileComp.sumSize)+"MB)\n(첨부파일 사이즈 :"+fileSize+"MB)";
						}
					}
					
					if(appendFlg) {
//						$('#'+multiFileComp.targetId+'_name').val(fileNm);
						$('input[id^="'+multiFileComp.inputId+'"]').attr('name','files');
						
						var newInputDivId = multiFileComp.inputDivId + (multiFileComp.idx + 1);
						var newInputId = multiFileComp.inputId + (multiFileComp.idx + 1);
						var newLabelId = multiFileComp.labelId + multiFileComp.idx;

						var $mu_file_attach = $('#'+multiFileComp.targetId).children('.mu-file-attach');
						$mu_file_attach.children('.mu-file-btn').hide();
						$mu_file_attach.append("<div class='mu-file-btn' id='"+newInputDivId+"'></div>");
						var $inputDiv = $mu_file_attach.children("#"+newInputDivId);
						$inputDiv.append("<button type='button' class='mu-btn'><label for='"+newInputId+"'>파일찾기</label></button>");
						$inputDiv.append("<input type='file' id='"+newInputId+"' class='mu-btn-hide'>");
						
						var $file_sch_list = $('#'+multiFileComp.targetId).children('.file-sch-list');
						$file_sch_list.append("<li id='"+newLabelId+"'></li>");
						var $file_sch_list_li = $file_sch_list.children("#"+newLabelId);
						$file_sch_list_li.append("<em><i class='mu-icon-svg file'>첨부파일있음</i><span>"+fileNm+"</span></em>");
						$file_sch_list_li.append("<button type='button' class='mu-btn-sm mu-btn-icon-only mu-btn-bg-non' onclick='multiFileComp.remove("+multiFileComp.idx+")'><i class='mu-icon-svg item-close'></i><span>해당내용 삭제</span></button>");
						
						multiFileComp.sumSize += fileSize;
						multiFileComp.fileNmArr.push(fileNm);
						multiFileComp.idx++;
						
						multiFileComp.changeFileNo();
						multiFileComp.fileObjEvntInit();
					} else {
						alert(msg);
						$(this).val("");
						return;
					}
				});
			}
		},
		remove : function(idx){
			var rmvInputDivObj = $('#'+this.inputDivId+idx);
			var rmvInputObj = $('#'+this.inputId+idx);
			console.log(rmvInputObj.prop('files')[0]);
			var file = rmvInputObj.prop('files')[0];
			var fileSize =  Math.floor((file.size/1024)/1024);
			this.sumSize -= fileSize;
			this.fileNmArr = $.grep(this.fileNmArr, function(value) {
				return value != file.name;
			});
			
			rmvInputDivObj.remove();
			$('#'+this.labelId+idx).remove();
			this.checkRequired();
			this.changeFileNo();
		},
		deleteFile : function(idx){
			var fileInfo = this.jsonFileList[idx];
			var textFileInfo = fileInfo.file_no+"^"+fileInfo.sn+"^"+fileInfo.file_cours+"^"+fileInfo.physicl_file_nm+"^"+fileInfo.extsn;
			$('#'+this.targetId).append("<input type=\"hidden\" name=\"delFileInfo\" value=\""+textFileInfo+"\"/>");
			
			var rmvObj = $('#'+ this.labelId+idx);
			var rmvTxt = rmvObj.find('em span').text();
			this.fileNmArr = $.grep(this.fileNmArr, function(value) {
				return value != rmvTxt;
			});
			
			rmvObj.remove();
			this.checkRequired();
			this.changeFileNo();
		},
		deleteFileAll : function(){
			$(this.jsonFileList).each(function(idx,fileInfo){
				var textFileInfo = fileInfo.file_no+"^"+fileInfo.sn+"^"+fileInfo.file_cours+"^"+fileInfo.physicl_file_nm+"^"+fileInfo.extsn;
				$('#'+multiFileComp.targetId).append("<input type=\"hidden\" name=\"delFileInfo\" value=\""+textFileInfo+"\"/>");
			});
			this.changeFileNo();
		},
		download : function(idx){
			var fileInfo = this.jsonFileList[idx];
			var inputs = "";
	        inputs += "<input type=\"hidden\" name=\"file_no\" value=\""+ fileInfo.file_no +"\" />"; 
	        inputs += "<input type=\"hidden\" name=\"sn\" value=\""+ fileInfo.sn +"\" />"; 
	        jQuery("<form action=\"/common/downloadAttachFile.do\" method=\"post\">"+inputs+"</form>").appendTo('body').submit().remove();
		},
		checkRequired : function(){
			if(!this.required){
				var fileCnt = $('div[id^="'+multiFileComp.labelId+'"]').length;
				if(fileCnt == 0) $('input[id^="'+this.inputId+'"]').removeAttr('name');
			}
		},
		changeFileNo : function(){
			if(this.fileNo != 0){
				var fileCnt = $('li[id^="'+multiFileComp.labelId+'"]').length;
				$('input[name="file_no"]').val(fileCnt==0?"":this.fileNo);
			}
		},
		clear : function(){
			this.jsonFileList = new Array();
			this.sumSize = 0;
			this.idx = 0;
			this.fileNmArr = new Array();
//			$('#'+this.targetId).children('.mu-file-attach').empty();
//			$('#'+this.targetId).children(".file-sch-list").empty();
		}
};

var multiFileComp2 = {
		targetId : "",extsn : "", fileCnt : 0, size : 0, totalSize : 0, fileNo : 0, mode : "", required : "", showFileCount : "",
		jsonFileList : new Array(), inputId : "", fileListId: "", /*fileLblId: "",*/ labelId : "", sumSize : 0, idx : 0, fileNmArr : new Array(),
		load : function(targetId, options){
			this.targetId = targetId;
			this.extsn = options.accept_extsn || "xls|xlsx|hwp|txt|pdf|doc|docx|ppt|pptx|csv|zip|jpg|gif|png";
			this.fileCnt = options.max_cnt || 0;
			this.size = options.max_size || 10240;
			this.totalSize = options.total_size || 102400;
			this.fileNo = options.file_no || 0;
			this.mode = options.mode || "U";
			this.required = options.required == undefined ? true : options.required ;
			this.inputId = this.targetId+'_input';
			this.inputDivId = "div_" + this.inputId;
			this.labelId = this.targetId+"_label";
			if(this.mode !="D") loadingObj.create($('body'));
			this.showFileCount = options.showFileCount || "N";
			this.init();
		},
		init : function(){			
			if(this.fileNo != 0){
				$('#'+multiFileComp2.targetId).append("<input type='hidden' name='file_no' value='"+this.fileNo+"'/>");
			}
			
			if(this.mode != "D") {
				$('#'+multiFileComp2.targetId).append("<div class='mu-file-attach'></div>");
				$('#'+multiFileComp2.targetId).children(".mu-file-attach").append("<input type='text' id='attach_file_name' class='mu-input' placeholder='파일 첨부 크기는 최대 5MB까지 가능합니다.' readonly='readonly' />");
			}
			$('#'+multiFileComp2.targetId).append("<ul class='file-sch-list'></ul>");
			this.fileSearch(this.fileNo);
			this.fileObjEvntInit();
		},
		fileSearch : function(fileNo){
			multiFileComp2.clear();
			if(fileNo != 0 && fileNo != null && fileNo !="" && fileNo != undefined){
				this.fileNo = fileNo;
				$.ajax({
					type:"POST",			
					url : '/common/getFileList.do',
					data : {
						file_no : fileNo
					},
					dataType:"json",					
					success : function(data) {
						multiFileComp2.jsonFileList = data;
						if(multiFileComp2.showFileCount == "Y") {
							if(multiFileComp2.mode == "D") {
								if(data.length > 0) {
									$('#'+multiFileComp2.targetId).prepend("<div class='data-info'><dl><dt>첨부파일</dt><dd>("+data.length+")</dd></dl></div>");
								}
							}
						}
						
						$(multiFileComp2.jsonFileList).each(function(idx,val){
						//alert(val.file_no+"\n"+val.sn+"\n"+val.file_cours+"\n"+val.orginl_file_nm+"\n"+val.physicl_file_nm+"\n"+val.file_mg+"\n"+val.extsn);							
							var fileNm = val.orginl_file_nm+"."+val.extsn;
							var $file_sch_list = $('#'+multiFileComp2.targetId).children('.file-sch-list');
							$file_sch_list.append("<li id='"+multiFileComp2.labelId+idx+"'></li>");
							var $file_sch_list_li = $file_sch_list.children("#"+multiFileComp2.labelId + idx);
							
							if(multiFileComp2.mode != "D"){
								$file_sch_list_li.append("<em><i class='mu-icon-svg file'>첨부파일있음</i><span>"+fileNm+"</span></em>");
								$file_sch_list_li.append("<button type='button' class='mu-btn-sm mu-btn-icon-only mu-btn-bg-non' onclick='multiFileComp2.deleteFile("+idx+")'><i class='mu-icon-svg item-close'></i><span>해당내용 삭제</span></button>");
							} else {
								$file_sch_list_li.append("<a href='javascript://' onclick='multiFileComp2.download("+idx+")'><i class='mu-icon-svg file'>첨부파일있음</i>"+fileNm+"</a>");
							}
							
							multiFileComp2.fileNmArr.push(fileNm);
							multiFileComp2.idx++;
						});
						
						if(multiFileComp2.mode != "D"){
							var $mu_file_attach = $('#'+multiFileComp2.targetId).children('.mu-file-attach');
							$mu_file_attach.append("<div class='mu-file-btn' id='"+multiFileComp2.inputDivId+multiFileComp2.idx+"'></div>");
							var $inputDiv = $mu_file_attach.children("#"+multiFileComp2.inputDivId + multiFileComp2.idx);
							$inputDiv.append("<button type='button' class='mu-btn'><label for='"+multiFileComp2.inputId+multiFileComp2.idx+"'>파일찾기</label></button>");
							$inputDiv.append("<input type='file' id='"+multiFileComp2.inputId+multiFileComp2.idx+"' class='mu-btn-hide'>");
						}
					},
					error : function(xhr, status, error) {
						var msg = message.httpStatus(status);
						alert(msg);
					}
		        });
			} else {
				if(multiFileComp2.mode != "D"){
					var $mu_file_attach = $('#'+multiFileComp2.targetId).children('.mu-file-attach');
					$mu_file_attach.append("<div class='mu-file-btn' id='"+multiFileComp2.inputDivId+multiFileComp2.idx+"'></div>");
					var $inputDiv = $mu_file_attach.children("#"+multiFileComp2.inputDivId + multiFileComp2.idx);
					$inputDiv.append("<button type='button' class='mu-btn'><label for='"+multiFileComp2.inputId+multiFileComp2.idx+"'>파일찾기</label></button>");
					$inputDiv.append("<input type='file' id='"+multiFileComp2.inputId+multiFileComp2.idx+"' class='mu-btn-hide'>");
				} else {
					if(multiFileComp2.showFileCount == "Y") {
						$('#'+multiFileComp2.targetId).prepend("<div class='data-info'><dl><dt>첨부파일</dt><dd>(0)</dd></dl></div>");
					}
				}
			}
		},
		fileObjEvntInit : function(){
			if(multiFileComp2.mode != "D") {
				$('#'+this.targetId).off();
				$('#'+this.targetId).on('change', 'input[id^="'+this.inputId+'"]', function(){
//				$('input[id^="'+this.inputId+'"]').on('change', function(){
//				$('.mu-btn-hide').on('change', function(){
					var file =$(this).prop('files')[0];
					if(file == null) return;
					var fileNm = file.name;
					
					var fileSize =  Math.floor((file.size/1024)/1024);
					var parentObj = $(this).parent();
					var appendFlg = true;
					var msg = "";
					if($.inArray(fileNm, multiFileComp2.fileNmArr) > -1){
						appendFlg = false;
						msg = fileNm+"은 이미 선택된 파일입니다!.";
					}
					
					if(multiFileComp2.extsn !=""&& multiFileComp2.extsn != null){
						var extsn = fileNm.substring(fileNm.lastIndexOf(".")+1,fileNm.length);
						var regexp = new RegExp(multiFileComp2.extsn);
						if(!regexp.test(extsn)){
							appendFlg = false;
							msg = extsn+"는(은) 업로드 할수 없는 파일확장자입니다.\n가능확장자["+multiFileComp2.extsn+"]";
						}
					}
					
					if(multiFileComp2.fileCnt >0&&appendFlg){
						var fileCnt = $('li[id^="'+multiFileComp2.labelId+'"]').length;
						if(fileCnt>=multiFileComp2.fileCnt){
							appendFlg = false;
							msg ="최대 "+multiFileComp2.fileCnt+"개 까지 파일첨부가 가능합니다.";
						}
					}
					
					if(multiFileComp2.size >0&&appendFlg){
						if(fileSize>multiFileComp2.size){
							appendFlg = false;
							msg ="파일 개당 사이즈는 "+multiFileComp2.size+"MB로 제한합니다.\n(첨부파일 사이즈: "+fileSize+"MB)";
						}
					}
					
					if(multiFileComp2.totalSize >0&&appendFlg){
						if((multiFileComp2.sumSize+fileSize)>multiFileComp2.totalSize){
							appendFlg = false;
							msg ="첨부파일들의 총 사이즈는 "+multiFileComp2.size+"MB로 제한합니다.\n(첨부가능 사이즈: "+(multiFileComp2.totalSize-multiFileComp2.sumSize)+"MB)\n(첨부파일 사이즈 :"+fileSize+"MB)";
						}
					}
					
					if(appendFlg) {
//						$('#'+multiFileComp2.targetId+'_name').val(fileNm);
						$('input[id^="'+multiFileComp2.inputId+'"]').attr('name','files');
						
						var newInputDivId = multiFileComp2.inputDivId + (multiFileComp2.idx + 1);
						var newInputId = multiFileComp2.inputId + (multiFileComp2.idx + 1);
						var newLabelId = multiFileComp2.labelId + multiFileComp2.idx;

						var $mu_file_attach = $('#'+multiFileComp2.targetId).children('.mu-file-attach');
						$mu_file_attach.children('.mu-file-btn').hide();
						$mu_file_attach.append("<div class='mu-file-btn' id='"+newInputDivId+"'></div>");
						var $inputDiv = $mu_file_attach.children("#"+newInputDivId);
						$inputDiv.append("<button type='button' class='mu-btn'><label for='"+newInputId+"'>파일찾기</label></button>");
						$inputDiv.append("<input type='file' id='"+newInputId+"' class='mu-btn-hide'>");
						
						var $file_sch_list = $('#'+multiFileComp2.targetId).children('.file-sch-list');
						$file_sch_list.append("<li id='"+newLabelId+"'></li>");
						var $file_sch_list_li = $file_sch_list.children("#"+newLabelId);
						$file_sch_list_li.append("<em><i class='mu-icon-svg file'>첨부파일있음</i><span>"+fileNm+"</span></em>");
						$file_sch_list_li.append("<button type='button' class='mu-btn-sm mu-btn-icon-only mu-btn-bg-non' onclick='multiFileComp2.remove("+multiFileComp2.idx+")'><i class='mu-icon-svg item-close'></i><span>해당내용 삭제</span></button>");
						
						multiFileComp2.sumSize += fileSize;
						multiFileComp2.fileNmArr.push(fileNm);
						multiFileComp2.idx++;
						
						multiFileComp2.changeFileNo();
						multiFileComp2.fileObjEvntInit();
					} else {
						alert(msg);
						$(this).val("");
						return;
					}
				});
			}
		},
		remove : function(idx){
			var rmvInputDivObj = $('#'+this.inputDivId+idx);
			var rmvInputObj = $('#'+this.inputId+idx);
			console.log(rmvInputObj.prop('files')[0]);
			var file = rmvInputObj.prop('files')[0];
			var fileSize =  Math.floor((file.size/1024)/1024);
			this.sumSize -= fileSize;
			this.fileNmArr = $.grep(this.fileNmArr, function(value) {
				return value != file.name;
			});
			
			rmvInputDivObj.remove();
			$('#'+this.labelId+idx).remove();
			this.checkRequired();
			this.changeFileNo();
		},
		deleteFile : function(idx){
			var fileInfo = this.jsonFileList[idx];
			var textFileInfo = fileInfo.file_no+"^"+fileInfo.sn+"^"+fileInfo.file_cours+"^"+fileInfo.physicl_file_nm+"^"+fileInfo.extsn;
			$('#'+this.targetId).append("<input type=\"hidden\" name=\"delFileInfo\" value=\""+textFileInfo+"\"/>");
			
			var rmvObj = $('#'+ this.labelId+idx);
			var rmvTxt = rmvObj.find('em span').text();
			this.fileNmArr = $.grep(this.fileNmArr, function(value) {
				return value != rmvTxt;
			});
			
			rmvObj.remove();
			this.checkRequired();
			this.changeFileNo();
		},
		deleteFileAll : function(){
			$(this.jsonFileList).each(function(idx,fileInfo){
				var textFileInfo = fileInfo.file_no+"^"+fileInfo.sn+"^"+fileInfo.file_cours+"^"+fileInfo.physicl_file_nm+"^"+fileInfo.extsn;
				$('#'+multiFileComp2.targetId).append("<input type=\"hidden\" name=\"delFileInfo\" value=\""+textFileInfo+"\"/>");
			});
			this.changeFileNo();
		},
		download : function(idx){
			var fileInfo = this.jsonFileList[idx];
			var inputs = "";
	        inputs += "<input type=\"hidden\" name=\"file_no\" value=\""+ fileInfo.file_no +"\" />"; 
	        inputs += "<input type=\"hidden\" name=\"sn\" value=\""+ fileInfo.sn +"\" />"; 
	        jQuery("<form action=\"/common/downloadAttachFile.do\" method=\"post\">"+inputs+"</form>").appendTo('body').submit().remove();
		},
		checkRequired : function(){
			if(!this.required){
				var fileCnt = $('div[id^="'+multiFileComp2.labelId+'"]').length;
				if(fileCnt == 0) $('input[id^="'+this.inputId+'"]').removeAttr('name');
			}
		},
		changeFileNo : function(){
			if(this.fileNo != 0){
				var fileCnt = $('li[id^="'+multiFileComp2.labelId+'"]').length;
				$('input[name="file_no"]').val(fileCnt==0?"":this.fileNo);
			}
		},
		clear : function(){
			this.jsonFileList = new Array();
			this.sumSize = 0;
			this.idx = 0;
			this.fileNmArr = new Array();
//			$('#'+this.targetId).children('.mu-file-attach').empty();
//			$('#'+this.targetId).children(".file-sch-list").empty();
		}
};

function limitInputByte(target, maxByte) {
	var text_len = $("#"+target).val().length;
	var return_len = 0;
	var totalByte=0;

	for(var i=0; i<text_len; i++){
		var each_char = $("#"+target).val().charAt(i);
		var uni_char = escape(each_char)
		if(uni_char.length>4){
			totalByte += 2;
		} else {
			totalByte += 1;
		}
		if(totalByte <= maxByte){
			return_len ++;
		}
	}
	if(totalByte > maxByte){
		$("#"+target).val($("#"+target).val().substring(0, return_len));
	}
}

function openModal(title, message, boolCancel, fnOk) {
	
	$("div[name='commonModal']").remove();
	var el = "";
	el += "<div name=\"commonModal\" class=\"mu-modal\">";
    el += "<div class=\"mu-alert\">";
	if(title != "") {
	    el += "<div class=\"mu-alert-head\">";
	    el += "<strong>"+title+"</strong>";
	    el += "</div>";
	}
	el += "<div class=\"mu-alert-body\">";
	el += "<p class=\"mu-alert-msg\">"+message+"</p>";
    el += "</div>";
	el += "<div class=\"mu-alert-foot\">";
	if(boolCancel) {
	    el += "<button type=\"button\" class=\"mu-btn\" onClick=\"closeModal(this);\"><span>취소</span></button>";	
	}
    el += "<button type=\"button\" class=\"mu-btn mu-btn-primary\"><span>확인</span></button>";	
    el += "</div>";
    el += "<div class=\"mu-alert-close-btn\">";
    el += "<button type=\"button\" class=\"mu-btn mu-btn-icon-only mu-btn-bg-non\" title=\"해당 알림창 닫기\" href=\"javascript:;\"><i class=\"mu-icon-svg window-close\"></i><span>알림창닫기</span></button>";	
    el += "</div>";
    el += "</div>";
    el += "</div>";

	var $popup = $(el);
    if (fnOk && typeof fnOk === 'function') {
        $popup.find(".mu-alert-foot .mu-btn-primary").on("click", function() {$(this).blur();});
        $popup.find(".mu-alert-foot .mu-btn-primary").on("click", fnOk);

		if (!boolCancel) {
			$popup.find(".mu-alert-close-btn .mu-btn").on("click", fnOk);
		}
    }
    
	$popup.find(".mu-alert-foot .mu-btn-primary").on("click", function(){ closeModal(this) });
	$popup.find(".mu-alert-close-btn .mu-btn").on("click", function(){ closeModal(this) });
    
    $("body").append($popup);
    $popup.find(".mu-alert-foot .mu-btn-primary").focus();
}

function closeModal(el) {
	$("div[name='commonModal']").remove();
}

function focusOpenModal(el, message) {
//	$("#" + el).focus();
	openModal("", message, false, function(){$("#" + el).focus();});
}