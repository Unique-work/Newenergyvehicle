<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="overflow:hidden;">
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%@ include file="Head.jsp"%>
<title>地图导航</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/page.css" />
<link rel="stylesheet" href="resources/css/map.css" />
	<script src="http://api.map.baidu.com/api?v=2.0&ak=0PuRzyfk15DcXBfus7dTBV2OjHWdXm22"  type="text/javascript"></script>
</head>

<body style="background-color:#124E76;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
			<div class="col-md-12">
				<div class="input-group">
					<div class="input-icon-group">
						<input type="text" class="form-control" id="localtion"
							placeholder="输入地址" />
					</div>
					<span class="input-group-btn">
						<button class="btn btn-primary" onclick="clearsearch()"
							type="button">清空</button>
					</span> <span class="input-group-btn">
						<button class="btn btn-primary" onclick="localsearch()"
							type="button">搜索</button>
					</span>
				</div>
			</div>
			<div class="col-md-12">
				<div id="result" style="overflow-y:scroll;height:500px;display:none;"></div>
			</div>	
				<div id="dh" class="col-md-12" style="margin-top:20px;padding-left:0px;padding-right:0px;">
				<div class="col-md-12" style="margin-left:20px;">
			    	<div class="col-md-4">  
			    		<i id="drive" value="1" onclick="drive()" style="width:25px;height:16px;cursor:pointer;background-image:url('resources/images/route.png');background-position:0 -68px;background-repeat: no-repeat;display:inline-block;"></i>    
			    	</div>
			    	<div class="col-md-4">
			    		<i id="bus" value="2" onclick="bus()" style="width:25px;height:16px;cursor:pointer;background-image:url('resources/images/route.png');background-position:0 -34px;background-repeat: no-repeat;display:inline-block;"></i> 
			    	</div>
			    	<div class="col-md-4">
			    		<i id="walk" value="3" onclick="walk()" style="width:25px;height:16px;cursor:pointer;background-image:url('resources/images/route.png');background-position:0 -100px;background-repeat: no-repeat;display:inline-block;"></i>
			    	</div>
			    </div>	
					<div class="col-md-12" style="margin-top:20px;padding-left:0px;padding-right:0px;">
						<div class="col-md-1" style="padding-left:0px;padding-right:0px;">
							<label style="color:#fff;"><span class="glyphicon glyphicon-record"></span></label><br><br>
							<label style="color:#fff;margin-left:4px;"><span>·</span><br><span>·</span><br><span>·</span><br></label><br><br>
							<label style="color:#fff;"><span class="glyphicon glyphicon-map-marker"></span></label> 
						</div>
						<div class="col-md-10" style="padding-left:0px;padding-right:0px;">
							<input type="text" id="start" style="width:100%;outline:none;border-radius:0px;color:#fff;background-color:#124E76;border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:1px;"  />
							<br><br><br><br><br>
							<input type="text" id="end" style="width:100%;outline:none;border-radius:0px;color:#fff;background-color:#124E76;border-left-width:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:1px;"  />
						</div>
						<div class="col-md-1" style="padding-left:0px;padding-right:0px;">
							<br><br><br>
							<label style="color:#fff;"><span class="glyphicon glyphicon-sort"></span></label>
						</div>
					</div>
					<div class="col-md-12">
						<div class="col-md-3"></div>
						<div class="col-md-9">
							<div class="form-group" style="margin-top:30px;">
								<button type="button" onclick="select()" style="width:100px;" class="btn btn-primary">查询</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
				<div id="r-result" style="overflow-y:scroll;height:300px;display:none;"></div>
				</div>
			</div>
				<div id="map" class="col-md-9" style="height:100%;"></div>
		</div>
		<%@ include file="Bottom.jsp"%>
	</div>
	<script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</body>
<script>

	var map = new BMap.Map("map");
	var point = new BMap.Point(120.59646,31.226024);
	map.centerAndZoom(point, 15);
	map.enableScrollWheelZoom();
	function pos() {
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r) {
			if (this.getStatus() == BMAP_STATUS_SUCCESS) {
				var mk = new BMap.Marker(r.point);
				map.addOverlay(mk);
				map.panTo(r.point);
			} else {
				alert('failed' + this.getStatus());
			}
		}, {	enableHighAccuracy : true})
	}

	// 添加带有定位的导航控件
	var navigationControl = new BMap.NavigationControl({
		// 靠左上角位置
		anchor : BMAP_ANCHOR_TOP_LEFT,
		// LARGE类型
		type : BMAP_NAVIGATION_CONTROL_LARGE,
		// 启用显示定位
		enableGeolocation : true
	});
	map.addControl(navigationControl);

	// 添加定位控件
	var geolocationControl = new BMap.GeolocationControl();
	geolocationControl.addEventListener("locationSuccess", function(e) {
		// 定位成功事件
		var address = '';
		address += e.addressComponent.province;
		address += e.addressComponent.city;
		address += e.addressComponent.district;
		address += e.addressComponent.street;
		address += e.addressComponent.streetNumber;
	});
	geolocationControl.addEventListener("locationError", function(e) {
		// 定位失败事件
		alert(e.message);
	});
	map.addControl(geolocationControl);

	function localsearch() {
		map.clearOverlays();
		$("#r-result").hide();
		$("#dh").hide();
		var loc = $("#localtion").val();
		var local = new BMap.LocalSearch(map, {
			renderOptions : {
				map : map,
				panel : "result"
			}
		});
		local.search(loc);
		$("#result").show();
		if (loc == "") {
			$("#result").hide();
			$("#dh").show();
		}
	}

	function clearsearch() {
		$("#localtion").val("");
		localsearch();
		$("#result").hide();
		$("#dh").show();
		$("#r-result").empty();
		$("#r-result").hide();
		$("#end").val("");
		$("#start").val("");
	}
	var type = 0;
	function select() {
		$("#r-result").empty();
		var d= $("#drive").css("background-position-y");
		var b= $("#bus").css("background-position-y");
		var w= $("#walk").css("background-position-y");
		if(d=="-84px"){
			drive();
		}else if(b=="-51px"){
			bus();
		}else if(w=="-119px"){
			walk();
		}else{
			alert("请选择出行方式！");
			return false;
		}
		//var type = $("#choose").val();
		var start = $("#start").val();
		var end = $("#end").val();
		map.clearOverlays();
		if (start != ""&& end != "") {
			var routePolicy1 = [ BMAP_DRIVING_POLICY_LEAST_TIME,
				BMAP_DRIVING_POLICY_LEAST_DISTANCE,
				BMAP_DRIVING_POLICY_AVOID_HIGHWAYS ];
			var driving = new BMap.DrivingRoute(map, {
				renderOptions : {map : map,	panel : "r-result"},
				policy : 0
			});
			driving.clearResults();
			var routePolicy2 = [ BMAP_TRANSIT_POLICY_LEAST_TIME,
				BMAP_TRANSIT_POLICY_LEAST_TRANSFER,
				BMAP_TRANSIT_POLICY_LEAST_WALKING,
				BMAP_TRANSIT_POLICY_AVOID_SUBWAYS ];
			var transit = new BMap.TransitRoute(map, {
				renderOptions : {
					map : map,
					panel : "r-result"
				},
				policy : 0
			});
			transit.clearResults();
			var walking = new BMap.WalkingRoute(map, {
				renderOptions : {map : map,	panel : "r-result" },
				policy : 0
			});
			walking.clearResults();
			if (type == 1) {
				search(start, end, routePolicy1[0]);
				function search(start, end, route) {
					driving.setPolicy(route);
					driving.search(start, end);
				}
			} else if (type == 2) {
				search(start, end, routePolicy2[0]);
				function search(start, end, route) {
					transit.setPolicy(route);
					transit.search(start, end);
				}
			} else {
				walking.search(start, end);
			}
			$("#r-result").show();
		} else {
			alert("请输入起点、终点");
			$("#r-result").hide();
		}
	}

	function drive(){
		$("#drive").css("background-position","-0px -84px");
		$("#bus").css("background-position","-0px -34px");
		$("#walk").css("background-position","-0px -100px");
		type=1;
	}
	function bus(){
		$("#bus").css("background-position","-0px -51px");
		$("#drive").css("background-position","-0px -68px");
		$("#walk").css("background-position","-0px -100px");
		type=2;
	}
	function walk(){
		$("#walk").css("background-position","-0px -119px");
		$("#drive").css("background-position","-0px -68px");
		$("#bus").css("background-position","-0px -34px");
		type=3;
	}




</script>
</html>
