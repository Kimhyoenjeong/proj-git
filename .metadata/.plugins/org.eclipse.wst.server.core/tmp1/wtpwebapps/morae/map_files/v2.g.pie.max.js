/*
 * g.Raphael 0.5 - Charting library, based on Raphael
 *
 * Copyright (c) 2009 Dmitry Baranovskiy (http://g.raphaeljs.com)
 * Licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) license.
 */
(function () {

	function ieVersion(){
		var rv = -1;
		if (navigator.appName == 'Microsoft Internet Explorer') {
			var ua = navigator.userAgent;
			var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
			if (re.exec(ua) != null)
			rv = parseFloat( RegExp.$1 );
		}
		return rv;
	}

    function Piechart(paper, cx, cy, r, values, opts) {
        opts = opts || {};

        var chartinst = this,
            sectors = [],
            covers = paper.set(),
            chart = paper.set(),
            series = paper.set(),
            order = [],
            len = values.length,
            angle = 0,
            total = 0,
            others = 0,
            cut = 9,
            defcut = true;
        

        function sector(cx, cy, r, startAngle, endAngle, fill) {
            var rad = Math.PI / 180,
                x1 = cx + r * Math.cos(-startAngle * rad),
                x2 = cx + r * Math.cos(-endAngle * rad),
                xm = cx + r / 2 * Math.cos(-(startAngle + (endAngle - startAngle) / 2) * rad),
                y1 = cy + r * Math.sin(-startAngle * rad),
                y2 = cy + r * Math.sin(-endAngle * rad),
                ym = cy + r / 2 * Math.sin(-(startAngle + (endAngle - startAngle) / 2) * rad),
                res = [
                    "M", cx, cy,
                    "L", x1, y1,
                    "A", r, r, 0, +(Math.abs(endAngle - startAngle) > 180), 1, x2, y2,
                    "z"
                ];

            res.middle = { x: xm, y: ym };
            return res;
        }

        chart.covers = covers;
        var ieV = ieVersion();
        var curopacity = opts.nostroke ? 1 : 0.8;
        //그림자 만들기
        if (opts.shadow){
        	/*if (ieV < 9.0 && ieV > 0){
        		var shadow = paper.circle(cx,cy,r).attr({ fill: "#828282", stroke: "none" ,opacity: .8 });
        		shadow.blur(4);
        		curopacity = 0.6;
        	} else {
        		paper.circle(cx,cy,r-4).attr({ fill: "#8F8F8F", stroke: "#D1D1D1","stroke-width":2,opacity: .5 });   
        		paper.circle(cx,cy,r-6).attr({ fill: "#8F8F8F", stroke: "#B2B2B2","stroke-width":2,opacity: .5 });  
        		paper.circle(cx,cy,r-8).attr({ fill: "none", stroke: "#B2B2B2","stroke-width":2,opacity: .5 }); 
        		curopacity = 0.5;      	 
        	}	*/      	 
        } 

        if (len == 1) {
            series.push(paper.circle(cx, cy, r).attr({ fill: opts.colors && opts.colors[0] || chartinst.colors[0], 
            	opacity: curopacity, //투명도
                stroke: opts.stroke || "#fff", 
            	"stroke-width": opts.strokewidth == null ? 1 : opts.strokewidth }));
            covers.push(paper.circle(cx, cy, r).attr(chartinst.shim));
            total = values[0];
            values[0] = { value: values[0], order: 0, valueOf: function () { return this.value; } };
            series[0].middle = {x: cx, y: cy};
            series[0].mangle = 180;
        } else {
            for (var i = 0; i < len; i++) {
                total += values[i];
                values[i] = { value: values[i], order: i, valueOf: function () { return this.value; } };
            }            
            //sort color
            var colorPerValues = new Array();
            for (var n=0; n < len; n ++){
            	colorPerValues[n] = new Array(values[n].value, opts.colors && opts.colors[n] || chartinst.colors[n] || "#666");
            }
            if (opts.colors == null) {opts.colors = new Array();}
            /*//Sort TEST ---
            if (colorPerValues.length > 0) {
            	colorPerValues.sort(function(a1, a2){            	
        			return a2[0] - a1[0];            		
        		});          	
            	for (var n=0; n < len; n++){
            		opts.colors[n] =  colorPerValues[n][1];    		
            	}
            }
			//sort color end...			
			values.sort(function (a, b) {
        		return b.value - a.value;
        	});			
			cut = values.length;
            for (i = 0; i < len; i++) {
                if (defcut && values[i] * 360 / total <= 1.5) {
                    cut = i;
                    defcut = false;
                }

                if (i > cut) {
                    defcut = false;
                    values[cut].value += values[i];
                    values[cut].others = true;
                    others = values[cut].value;
                }
            }
            //Sort TEST END....*/
            
            //Sort TEST ---
            if (colorPerValues.length > 0) {
            	opts.autosort && colorPerValues.sort(function(a1, a2){            	
        			return a2[0] - a1[0];            		
        		});          	
            	for (var n=0; n < len; n++){
            		opts.colors[n] =  colorPerValues[n][1];    		
            	}
            }
			//sort color end...			
			opts.autosort && values.sort(function (a, b) {
        		return b.value - a.value;
        	});			
			cut = values.length;
			if (opts.autosort){
				for (i = 0; i < len; i++) {
	                if (defcut && values[i] * 360 / total <= 1.5) {
	                    cut = i;
	                    defcut = false;
	                }
	
	                if (i > cut) {
	                	defcut = false;
	                    values[cut].value += values[i];
	                    values[cut].others = true;
	                    others = values[cut].value;
	                }
	            }
			}
                        
            len = Math.min(cut + 1, values.length);
            others && values.splice(len) && (values[cut].others = true);

            for (i = 0; i < len; i++) {
                var mangle = angle - 360 * values[i] / total / 2;

                if (!i) {
                    angle = 90 - mangle;
                    mangle = angle - 360 * values[i] / total / 2;
                }

                if (opts.init) {
                    var ipath = sector(cx, cy, 1, angle, angle - 360 * values[i] / total).join(",");
                    //var ipath = sector(cx, cy, r, angle, angle - 360 * values[i] / total).join(",");
                }
                angle1 = angle;
                angle2 = angle - 360 * values[i] / total;
                if (values[i] == total){
                	var path = sector(cx, cy, r, angle, angle -= 359.9);                	
                }else {
                	if (values[i] == 0) var path = sector(cx, cy, r, angle, angle -= 0.9)
                	else  var path = sector(cx, cy, r, angle, angle -= 360 * values[i] / total);
                }
				//var path = sector(cx, cy, r, angle, angle -= 360 * values[i] / total);
                var p = paper.path(opts.init ? ipath : path).attr({ fill: opts.colors && opts.colors[i] || chartinst.colors[i] || "#666", 
                		opacity: curopacity, //투명도
                		stroke: opts.stroke || "#fff", "stroke-width": (opts.strokewidth == null ? 1 : opts.strokewidth),
                		"stroke-linejoin": "round" });
				 
				p.value = values[i];
                p.middle = path.middle;
                p.mangle = mangle;
                sectors.push(p);
                series.push(p);
                opts.init && p.animate({ path: path.join(",") }, (+opts.init - 1) || 1000, ">");
            }

            for (i = 0; i < len; i++) {
                p = paper.path(sectors[i].attr("path")).attr(chartinst.shim);
                opts.href && opts.href[i] && p.attr({ href: opts.href[i] });
                p.attr = function () {};
                covers.push(p);
                series.push(p);
            }
        }

        chart.hover = function (fin, fout) {
            fout = fout || function () {};

            var that = this;
			for (var i = 0; i < len; i++) {
                (function (sector, cover, j) {
                	
                    var o = {
                        sector: sector,
                        cover: cover,
                        cx: cx,
                        cy: cy,
                        mx: sector.middle.x,
                        my: sector.middle.y,
                        mangle: sector.mangle,
                        r: r,
                        tooltip : cover.tooltip,
                        value: values[j],
                        total: total
                        ,label: that.labels && that.labels[j]
                    };
                    cover.mouseover(function () {
                        fin.call(o);
                    }).mouseout(function () {
                        fout.call(o);
                    });
                })(series[i], covers[i], i);
            }
            return this;
        };

        // x: where label could be put
        // y: where label could be put
        // value: value to show
        // total: total number to count %
        chart.each = function (f) {
            var that = this;
			for (var i = 0; i < len; i++) {
                (function (sector, cover, j) {
                    var o = {
                        sector: sector,
                        cover: cover,
                        cx: cx,
                        cy: cy,
                        x: sector.middle.x,
                        y: sector.middle.y,
                        mangle: sector.mangle,
                        r: r,
                        value: values[j],
                        total: total,
                        label: that.labels && that.labels[j]
                    };
                    f.call(o);
                })(series[i], covers[i], i);
            }
            return this;
        };

        chart.click = function (f) {
            var that = this;

            for (var i = 0; i < len; i++) {
                (function (sector, cover, j) {
                    var o = {
                        sector: sector,
                        cover: cover,
                        cx: cx,
                        cy: cy,
                        mx: sector.middle.x,
                        my: sector.middle.y,
                        mangle: sector.mangle,
                        r: r,
                        value: values[j],
                        total: total,
                        label: that.labels && that.labels[j]
                    };
                    cover.click(function () { f.call(o); });
                })(series[i], covers[i], i);
            }
            return this;
        };

        chart.inject = function (element) {
            element.insertBefore(covers[0]);
        };
        var panR = opts.pannel;
        
        var legend = function (labels, otherslabel, mark, dir, tips) {
        	//console.log("pie.max panR", panR );
            var isV = vw.ol3.CommonFunc._getBrowser("firefox");
            var x = 10,//cx + r + r / 5,
                y = 10,
                h = y + 10 ;
            var _txty = 7;
            // 파이어폭스는 글자위치가 깨짐.ㅜ
            if ( isV ) {
            	_txty = 14;
            }
            //console.log("h",h);
            labels = labels || [];
            tips = tips || labels;
            
            dir = (dir && dir.toLowerCase && dir.toLowerCase()) || "east";
            mark = panR[mark && mark.toLowerCase()] || "circle";
            chart.labels = paper.set();

            for (var i = 0; i < len; i++) {
                var clr = series[i].attr("fill"),
                    j = values[i].order,
                    txt;
                var tip = "";
                
                tips[j] = chartinst.labelise(tips[j], values[i], total); 
                covers[i].tooltip = tips[j];
                 
                values[i].others && (labels[j] = otherslabel || "기타");
                labels[j] = chartinst.labelise(labels[j], values[i], total);
                
                chart.labels.push(paper.set());   
                //console.log("opts.makelegend",opts.makelegend);
                if (opts.makelegend){
                	chart.labels[i].push(panR[mark](x , y, 5).attr({ fill: clr, stroke: "none" }));            	
                	chart.labels[i].push(txt = panR.text(x + 10,_txty, labels[j] || values[j])).attr({font:"12px Arial, sans-serif","text-anchor": "start"});//    "font-weight":"bold",
	                covers[i].label = chart.labels[i];
	                y += 14 * 1.2;
	                if ( isV ) {
		                _txty += 18;
	                } else {
	                	 _txty += 8;
	                };
	                //console.log("x height",x, h,_txty,isV);
                }                            
            }
			var bb = chart.labels.getBBox();
            var bwidth = (bb.width < 50) ? 50:bb.width;
			var bheight = (bb.height < 50) ? 50:bb.height;
           /* var tr = {
                    east: [0, -bheight / 2],
                    west: [-bwidth - 2 * r - 20, -bheight / 2],
                    north: [-r - bwidth / 2, -r - bheight - 10],
                    south: [-r - bwidth / 2, r + 10]
                }[dir];*/

            //chart.labels.translate.apply(chart.labels, tr);
            chart.push(chart.labels);
        };
 
        if (opts.legend) {
            legend(opts.legend, opts.legendothers, opts.legendmark, opts.legendpos, opts.tooltip);
        }

        chart.push(series, covers);
        chart.series = series;
        chart.covers = covers;

        return chart;
    };
    
    //inheritance
    var F = function() {};
    F.prototype = Raphael.g;
    Piechart.prototype = new F;
     
    //public
    Raphael.fn.piechart = function(cx, cy, r, values, opts) {
        return new Piechart(this, cx, cy, r, values, opts);
    }
    
})();
