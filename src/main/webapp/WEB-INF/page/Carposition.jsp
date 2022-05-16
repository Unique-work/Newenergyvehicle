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
    <script src="resources/js/echarts.min.js" type="text/javascript"></script>
    <script src="resources/js/bmap.js" type="text/javascript"></script>
    <script src="<%=basePath%>resources/Widget/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="resources/js/baidu.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://api.map.baidu.com/api?v=1.0&type=webgl&ak=0PuRzyfk15DcXBfus7dTBV2OjHWdXm22">
<%--    </script>  <script type="text/javascript" src="https://api.map.baidu.com/api?v=1.0&type=webgl&ak=您的密钥">--%>
</script>

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

.leftBox{
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

.lBoxHeader{
    background: #10486d;
    height: 47px;
    color: #fff;
    font-size: 15px;
    padding:12px
  /*   text-align:center */
}

.rBoxContent{
    color: #fff;
    font-size: 15px;
    padding: 12px 0;
    text-align:center;
    border-bottom: 1px dashed #337ab7;
}

.rBoxContentanalyze{
   color: #4ea3ec;
    font-size: 15px;
    padding: 12px 20px;
    text-align: left;
    line-height: 1.7;
}

.lBoxContent{
    color: #fff;
    font-size: 15px;
    padding: 0px 0;
    text-align:center
}

.pro{
    width: 30%;
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

.carnum{width: 30%;font-size: 16px; overflow: hidden;white-space: nowrap;}

.cardetial{width: 27%;font-size: 16px; overflow: hidden;white-space: nowrap;}

 .cardetial a {color: #fff;
    line-height: 24px;
}
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
  .rBoxContent {overflow:auto;height: 210px;}
  .rBoxContentanalyze {overflow:auto;height: 510px;}
  
  .lBoxContent {overflow:auto;height: 600px;}
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
    
    height: 840px;
}

.leftBox{
    
    height: 840px;
}

   .rBoxContent {overflow:auto;height: 210px;}
   .rBoxContentanalyze {overflow:auto;height: 510px;}
   
   .lBoxContent {overflow:auto;height: 794px;}
}

.selectpo{
   margin-bottom:0;
   margin-left: 30px
}

.selectpro > lable{
    color: #59b2fb;
    font-weight: 500;
    margin-right: 10px;
}

.selectpo > .form-control{
    height: 23px;
    padding: 0px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #59b2fb;
    background-color: #10486d;
    background-image: none;
    border: 1px solid #59b2fb;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

.bigdataBox{
    position: absolute;
    top: 20px;
    bottom: 0;
    color: #fff;
    z-index: 9999999999999;
    width:200px;
    
}
</style>

</head>

<body style="text-align:center;">
<div class="container-fluid">
  <div class="col-md-10">
   
   <div class="leftBox">
    <div class="lBoxHeader" style="font-size:10px;">
       <div class="pull-left">车辆分布图</div>
       
       <div class="pull-right">
       <c:if test="${not empty user}">
       <a class="btn btn-primary" href="user/myselfcenter" style="font-size:10px;padding: 3px 25px; border-radius: 20px;margin-left:10px">车辆管理</a>
       </c:if>
       </div>
       <div class="clearfix"></div>
     </div>
        <div class="lBoxContent">

            <div id="main" style="height:100%"></div>
		</div>
   </div>


  </div>
  <div class="col-md-2" style="padding:0">
   <div class="rightBox">
     <div class="rBoxHeader">
        <div class="col-md-5">故障部件</div>
         <div class="col-md-2">|</div>
          <div class="col-md-5">车辆数量</div>
     </div>
     
      <div class="rBoxContent" style="height:250px;">
      
    	<c:forEach items="${fau}" var="fau" varStatus="cs">
       	 <div class="row citylists" > 
         	<div class="pull-left pro">${fau.faultstate}</div> 
         	<div class="pull-left lable">----------------</div> 
        	<div class="pull-left carnum">${fau.count}辆</div>
           	<div class="pull-left cardetial"><a>详情>></a></div>
          	
         </div>
         </c:forEach>

     </div>
      <div class="rBoxContentanalyze hide">
      <div class="title"> <p>综合分析：</p></div>
       <div class="content"> <p>车辆在平原地区车轮和发动机使用损耗都比较轻微</p></div>   
     </div>
   </div> 
  </div>  
</div>
	<%@ include file="Bottom.jsp"%>
<%--	<script src="resources/js/jquery-3.3.1.min.js" type="text/javascript"></script>--%>
	<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script>
    var myChart = echarts.init(document.getElementById('main'));
    function pie(value,name) {
        this.value=value;
        this.name=name;
    }
    $.ajax({
        type : "post",
        url : '<%=path %>' + "getfaultlocation.do",
        data : { },
        dataType : "jsonp", //数据类型为json
        jsonp:"jsoncallback",
        success : function(obj){
            var datas = [];
            var dataa = [];
            for(var i=0;i<obj.faultlocation.length;i++){
                var val = [obj.faultlocation[i].latitudes,obj.faultlocation[i].longitudes,1];
                myPie=new pie(val,obj.faultlocation[i].plateNumber);
                datas.push(myPie);
            }
            for(var i=0;i<obj.normallocation.length;i++){
                var val = [obj.normallocation[i].latitudes,obj.normallocation[i].longitudes,1];
                myPie=new pie(val,obj.normallocation[i].plateNumber);
                dataa.push(myPie);
            }
            datas=eval(datas);
            //地图参数配置
            option = {
                backgroundColor: '#404a59',
                tooltip : { trigger: 'item'},
                bmap: {
                    center: [118.78,32.04],
                    zoom: 8,
                    roam: true,
                    mapStyle: {
                        styleJson: [
                            {
                                "featureType": "water",
                                "elementType": "all",
                                "stylers": {
                                    "color": "#044161"
                                }
                            },
                            {
                                "featureType": "land",
                                "elementType": "all",
                                "stylers": {
                                    "color": "#004981"
                                }
                            },
                            {
                                "featureType": "boundary",
                                "elementType": "geometry",
                                "stylers": {
                                    "color": "#064f85"
                                }
                            },
                            {
                                "featureType": "railway",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "highway",
                                "elementType": "geometry",
                                "stylers": {
                                    "color": "#004981"
                                }
                            },
                            {
                                "featureType": "highway",
                                "elementType": "geometry.fill",
                                "stylers": {
                                    "color": "#005b96",
                                    "lightness": 1
                                }
                            },
                            {
                                "featureType": "highway",
                                "elementType": "labels",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "arterial",
                                "elementType": "geometry",
                                "stylers": {
                                    "color": "#004981"
                                }
                            },
                            {
                                "featureType": "arterial",
                                "elementType": "geometry.fill",
                                "stylers": {
                                    "color": "#00508b"
                                }
                            },
                            {
                                "featureType": "poi",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "green",
                                "elementType": "all",
                                "stylers": {
                                    "color": "#056197",
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "subway",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "manmade",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "local",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "arterial",
                                "elementType": "labels",
                                "stylers": {
                                    "visibility": "off"
                                }
                            },
                            {
                                "featureType": "boundary",
                                "elementType": "geometry.fill",
                                "stylers": {
                                    "color": "#029fd4"
                                }
                            },
                            {
                                "featureType": "building",
                                "elementType": "all",
                                "stylers": {
                                    "color": "#1a5787"
                                }
                            },
                            {
                                "featureType": "label",
                                "elementType": "all",
                                "stylers": {
                                    "visibility": "off"
                                }
                            }
                        ]
                    }
                },
                series : [
                    {
                        name: '汽车位置',
                        type: 'scatter',
                        coordinateSystem: 'bmap',
                        data: datas,
                        symbolSize:5,
                        label: {
                            normal: {
                                formatter: '{b}',
                                position: 'right',
                                show: false
                            },
                            emphasis: {
                                show: true
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#FF2222'
                            }
                        }
                    },
                    {
                        name: '汽车位置',
                        type: 'scatter',
                        coordinateSystem: 'bmap',
                        data: dataa,
                        symbolSize:5,
                        label: {
                            normal: {
                                formatter: '{b}',
                                position: 'right',
                                show: false
                            },
                            emphasis: {
                                show: true
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#00DD2C'
                            }
                        }
                    },
                ]
            };
            myChart.setOption(option);  // 为ECharts实例图表指定配置项
        }
    });



</script>
</body>
</html>
