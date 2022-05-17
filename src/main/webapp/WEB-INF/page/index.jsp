<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@ include file="Head.jsp"%>
    <title>新能源汽车智能监控分析系统</title>
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="resources/css/style.css" />
	<link rel="stylesheet" href="resources/css/page.css" />
</head>
<style>

	.indexBoxP{
		color:#fff;
		text-align:center;
		font-size: 16px;
	}

	a{display:block}

	.indexImg{width:111px;height:111px;margin-top:9px}

	.rightBox{
		width: 100%;
		min-height: 600px;
		background: #285e82;
	}

	.rBoxHeader{
		background: #10486d;
		height: 47px;
		color: #fff;
		font-size: 15px;
		padding: 12px 0;
		text-align:center
	}

	.rBoxContent{
		color: #fff;
		font-size: 15px;
		padding: 12px 0;
		text-align:center
	}

	.pro{
		width: 53%;
		overflow: hidden;
		white-space: nowrap;
		font-size: 16px;
	}

	.lable{
		width: 13%;
		overflow: hidden;
		white-space: nowrap;
		font-size: 16px;
	}

	.carnum{width: 30%;font-size: 16px;}

	.citylists{
		padding:10px 0
	}
	@media screen and (max-width:1367px){
		.left-box{
			width: 141px;
			height: 313px;
			background: #285e82;
			margin-left: 28px;
			margin-top: 122px;
			padding-top:15px

		}
		#main2{
			width: 100%;height:600px
		}
		.rBoxContent {overflow:auto;height: 600px;}
	}

	@media screen and (min-width:1367px){
		.left-box{
			width: 141px;
			height: 317px;
			background: #285e82;
			margin-left:100px;
			margin-top: 209px;
			padding-top:15px
		}
		#main2{
			width: 100%;height:750px
		}
		.rightBox{

			height: 750px;
		}

		.rBoxContent {overflow:auto;height: 699px;}
	}

	.modal-dialog{
		margin-top:70px
	}

	.modal-header{
		padding:0;border:0px solid #fff
	}

	.modal-body {
		position: relative;
		padding: 15px;
		padding-top: 0;
	}

	.modal-content {    background-color: rgba(0,0,0,0.2);}

	.modal-title{
		padding: 15px;
		border-bottom: 0px solid #e5e5e5;
		color: #fff;
		text-align: center;
	}

	.boxpro{
		background-color: rgba(255,255,255,0.1);
		width:100%;
		height:260px;
		margin-bottom:5px
	}
</style>
<body style="text-align:center;">
<div class="container-fluid">
	<div class="col-md-2">
		<div class="left-box">
			<div class="col-md-12">
				<a>
					<img src="resources/images/cyq.png" class="indexImg"/>
					<p class="indexBoxP">车友圈</p>
				</a>
			</div>
			<div class="col-md-12">
				<a>
					<img src="resources/images/dh.png" class="indexImg"/>
					<p class="indexBoxP">地图导航</p>
				</a>
			</div>
		</div>
	</div>
	<div class="col-md-8">
		<div id="main2"></div>
	</div>
	<div class="col-md-2" style="padding:0">
		<div class="rightBox">
			<div class="rBoxHeader">
				<div class="col-md-5">省份</div>
				<div class="col-md-2">|</div>
				<div class="col-md-5">车辆</div>
			</div>

			<div class="rBoxContent">
				<c:forEach items="${distribution}" var="var" varStatus="vs">
					<div class="row citylists" onclick= "detail('${var.id}','${var.province}')">
						<div class="pull-left pro">${var.province}</div>
						<div class="pull-left lable">----------------</div>
						<div class="pull-left carnum">${var.count}辆</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<!-- 模态框（Modal）-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close"data-dismiss="modal" aria-hidden="true">&times; </button>
				<h4 class="modal-title" id="myModalLabel"></h4>
			</div>
			<div class="modal-body">
				<div class="col-md-12 boxpro">
					<div id="chart" style="width:508px;height:250px;"></div>
					<div id="line" style="width:508px;height:250px;"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<%@ include file="Bottom.jsp"%>
</body>
<script>

	function pie(value,name){
		this.value=value;
		this.name=name;
	}

	function drawChart(id){
		var chart = echarts.init(document.getElementById('chart'));
		var type = [];
		var number = [];
		$.ajax({
			type : "post",
			async:false,
			url : '<%=path %>' + "/getfault.do",
			data : {
				id:id
			},
			dataType : "jsonp",
			jsonp:"jsoncallback",
			success : function(data){
				for(var i=0;i<data.length;i++){
					myPie=new pie(data[i].count,data[i].faultname);
					type.push(data[i].faultname);
					number.push(myPie);
				}
				optionchart = {
					title: {
						text: '故障比例',
						textStyle: {
							color: '#fff',
							fontSize:16
						},
						textAlign:'left'
					},
					tooltip: {
						trigger: 'item',
						formatter: "{a} <br/>{b}: {c} ({d}%)"
					},
					legend: {
						orient: 'vertical',
						x: 'right',
						bottom: '35%',
						textStyle:{
							color: '#fff',
							fontSize:12

						},
						data:type
					},
					series: [
						{
							name:'故障数量',
							type:'pie',
							radius: ['40%', '55%'],
							label: {
								normal: {
									textStyle: {
										color: '#fff'
									}
								}
							},
							labelLine: {
								normal: {
									lineStyle: {
										color: '#fff'
									},
									smooth: 0.2,
									length: 10,
									length2: 20
								}
							},
							center: ['30%', '50%'],
							data:number
						}
					]
				};
				chart.setOption(optionchart);
			}
		});
	}

	function detail(id,prov){
		$("#myModal").modal('show');
		$("#myModalLabel").html(prov);
		drawChart(id);
		drawLine(id);
	}

	function drawLine(id){
		var line = echarts.init(document.getElementById('line'));
		var type = [];
		var number = [];
		$.ajax({
			type : "post",
			async:false,
			url : '<%=path %>' + "/getcartype.do",
			data : {
				id:id
			},
			dataType : "jsonp",//数据类型为json
			jsonp:"jsoncallback",
			success : function(data){
				for(var i=0;i<data.length;i++){
					type.push(data[i].cartype);
					number.push(data[i].count);
				}
				optionline = {
					title: {
						text: '车型分析',
						textStyle: {
							color: '#fff',
							fontSize:16
						},
						textAlign:'left'
					},
					color: ['#c23531','#2f4554', '#61a0a8'],
					tooltip : {
						trigger: 'axis',
						axisPointer : {            // 坐标轴指示器，坐标轴触发有效
							type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
						}
					},
					grid: {
						left: '3%',
						right: '4%',
						bottom: '3%',
						containLabel: true
					},
					xAxis : [
						{
							type : 'category',
							axisLine:{
								lineStyle:{
									color:'#fff',
									width:2
								}
							},
							data : type,
							axisTick: {
								alignWithLabel: true
							}
						}
					],
					yAxis : [
						{
							type : 'value',
							axisLine:{
								lineStyle:{
									color:'#fff',
									width:0
								}
							},
						}
					],
					series : [
						{
							name:'数量',
							type:'bar',
							barWidth: '60%',
							data:number,
						}
					]
				};
				line.setOption(optionline);
			}
		});
	}

</script>


</html>
