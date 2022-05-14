<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="overflow:hidden;">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <%@ include file="Head.jsp" %>
    <title>个人中心</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="resources/css/style.css"/>
    <link rel="stylesheet" href="resources/css/page.css"/>
    <link rel="stylesheet" href="resources/css/sweetalert.css"/>
    <style>
        .guiji {
            width: 300px;
        }

        .guijipos {
            z-index: 1;
            margin-top: -630px;
            margin-left: 112px;
        }

        .carimg {
            background: url('resources/images/myself/car.png');
            width: 729px;
            height: 577px;
            margin-top: 150px;
            background-size: 100% 100%;
        }

        .bheight {
            height: 800px
        }

        .fdj {
            margin-top: -85px;
            margin-left: 120px;
        }

        .dc {
            margin-top: -85px;
            margin-left: 480px;
        }

        .sw {
            margin-top: 120px;
            margin-left: -5px;
            width: 205px;
        }

        .zczd {
            margin-top: 120px;
            margin-left: 550px;
            width: 205px;
        }

        .jy {
            margin-top: 245px;
            margin-left: -5px;
            width: 205px;
        }

        .abs {
            margin-top: 245px;
            margin-left: 550px;
            width: 205px;
        }

        .dp {
            margin-top: 370px;
            margin-left: -5px;
            width: 205px;
        }

        .park {
            margin-top: 370px;
            margin-left: 550px;
            width: 205px;
        }

        .light {
            margin-top: 495px;
            margin-left: -5px;
            width: 205px;
        }

        .wheel {
            margin-top: 495px;
            margin-left: 550px;
            width: 205px;
        }

        @media screen and (max-width: 1367px) {
            .guiji {
                width: 213px;
            }

            .guijipos {
                z-index: 1;
                margin-top: -662px;
                margin-left: 68px;
            }

            .carimg {
                background: url('resources/images/myself/car.png');
                width: 534px;
                height: 439px;
                margin-top: 138px;
                background-size: 100% 100%;
            }

            .fdj {
                margin-top: -76px;
                margin-left: 97px;
            }

            .dc {
                margin-top: -71px;
                margin-left: 326px;
            }

            .sw {
                margin-top: 63px;
                margin-left: -28px;
                width: 205px;
            }

            .zczd {
                margin-top: 60px;
                margin-left: 321px;
                width: 205px;
            }

            .jy {
                margin-top: 149px;
                margin-left: -33px;
                width: 205px;
            }

            .abs {
                margin-top: 149px;
                margin-left: 321px;
                width: 205px;
            }

            .dp {
                margin-top: 233px;
                margin-left: -28px;
                width: 205px;
            }

            .park {
                margin-top: 231px;
                margin-left: 322px;
                width: 208px;
            }

            .light {
                margin-top: 329px;
                margin-left: -30px;
                width: 205px;
            }

            .wheel {
                margin-top: 328px;
                margin-left: 321px;
                width: 205px;
            }

            .bheight {
                height: 750px
            }
        }
    </style>
</head>

<body style="background-color:#124E76;">

<div class="container-fluid"
     style="position:absolute;left:0;right:0;top:80px;overflow:auto;height:100%">
    <div class="row">
        <div class="col-md-2">
            <div class="list-group guiji">
                <div class="list-group-item active"
                     style="background-color:#196BA2;border:0px solid #145885;">
                    <button type="button"
                            style="background-color:#196BA2;color:#F0F8FD;border:0px solid;">路线轨迹
                    </button>
                </div>
                <div class="bheight" style="background-color: #145885;">
                    <div id="carlist2" style="height:500px;">
                        <img alt="line" src="resources/images/myself/line2.png"
                             style="margin-left: 50%;z-index: -1">
                        <c:if test="${not empty carmessage }">
                            <div>
                                <ul class="guijipos">
                                    <c:forEach items="${carlocation}" var="carlocation"
                                               varStatus="cl">
                                        <div style="margin-left: -37px;margin-top: 30px">
                                            <li><span style="color:#20c8ff ">${carlocation.realtime}</span>
                                                <img alt="point" src="resources/images/myself/point.png">
                                                <span style="color: #20c8ff">${carlocation.remarks}</span></li>
                                        </div>
                                    </c:forEach>
                                </ul>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="list-group-item active"
                 style="height:40px;background-color:#196BA2;border:0px solid #145885;">
                <button type="button"
                        style="height:20px;background-color:#196BA2;color:#F0F8FD;border:0px solid #145885;">实时车况
                </button>
                </button>
                <c:if test="${not empty carmessage }">
                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#searchmodal"
                       style="float: right;margin-top: -5px;">车辆信息</a>

                </c:if>
                <c:if test="${empty carmessage }">
                    <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal"
                       style="float: right;margin-top: -5px;">绑定车辆</a>
                    >
                </c:if>
            </div>
            <div class="bheight" style="background-color: #145885">
                <c:if test="${empty carmessage}">
                    <div>
                        <span style="color: white">暂无车辆信息，请先绑定车辆！</span>
                    </div>
                </c:if>
                <c:if test="${not empty carmessage }">
                    <div class="col-md-12" style="width:102%">
                        <div class="col-lg-3">
                            <div style="margin-top: 50px;text-align: center;">
                                <img alt="run" src="resources/images/myself/run.png"
                                     style="margin-bottom: 10px;height: 140%; margin-top: 20px;">
                                <div style="color: #20c8ff;font-size: 20px">${carmessage.vehID}</div>
                                <button class="btn btn-danger" onclick="del('${user.id}')">删除车辆</button>
                            </div>
                        </div>
                        <div class="col-lg-9 carimg">
                            <c:if test="${fdj != '0'}">
                                <div class="fdj">
                                    <img alt="fdj2" src="resources/images/myself/fdj2.png">
                                    <span style="color: #ffee62;font-size: 20px">发动机</span><br/>
                                    <span style="color: #ffee62;font-size: 18px">故障：请及时检修</span>
                                </div>
                            </c:if>
                            <c:if test="${fdj == '0'}">
                                <div class="fdj">
                                    <img alt="fdj2" src="resources/images/myself/fdj1.png">
                                    <span style="color: #20c8ff;font-size: 20px">发动机</span><br/>
                                    <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                </div>
                            </c:if>
                            <c:if test="${dc != '0'}">
                                <div class="dc">
                                    <img alt="fdj2" src="resources/images/myself/dc2.png"> <span
                                        style="color: #ffee62;font-size: 20px">电池</span><br/> <span
                                        style="color: #ffee62;font-size: 18px">电池故障</span>
                                </div>
                            </c:if>
                            <c:if test="${dc == '0'}">
                                <div class="dc">
                                    <img alt="fdj2" src="resources/images/myself/dc1.png"> <span
                                        style="color: #20c8ff;font-size: 20px">电池</span><br/> <span
                                        style="color: #20c8ff;font-size: 18px">正常工作</span>
                                </div>
                            </c:if>
                            <c:if test="${sw == '0'}">
                                <div class="sw">
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">水温</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常温度</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/sw1.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${sw != '0'}">
                                <div class="sw">
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">水温</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">水温异常</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/sw2.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${zczd == '0'}">
                                <div class="zczd" style="">
                                    <div class="col-md-5">
                                        <img alt="fdj2" src="resources/images/myself/qczd1.png">
                                    </div>
                                    <div class="col-md-7">
                                        <span style="color: #20c8ff;font-size: 20px">驻车制动</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${zczd != '0'}">
                                <div class="zczd">
                                    <div class="col-md-5">
                                        <img alt="fdj2" src="resources/images/myself/qczd1.png">
                                    </div>
                                    <div class="col-md-7">
                                        <span style="color: #ffee62;font-size: 20px">驻车制动</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">制动异常</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${jy == '0'}">
                                <div class="jy">
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">机油</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/jy1.png">
                                    </div>
                                </div>
                            </c:if>

                            <c:if test="${jy != '0'}">
                                <div class="jy">
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">机油</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">机油异常</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/jy2.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${abs == '0'}">
                                <div class="abs">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/abs1.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">ABS</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${abs != '0'}">
                                <div class="abs">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/abs2.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">ABS</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">ABS异常</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${dp == '0'}">
                                <div class="dp">
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">底盘</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/dp1.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${dp != '0'}">
                                <div class="dp">
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">底盘</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">底盘故障</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/dp2.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${park == '0'}">
                                <div class="park">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/tc1.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">停车</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${park != '0'}">
                                <div class="park">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/tc1.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">停车</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">停车故障</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${light == '0'}">
                                <div class="light">
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">车灯</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/cd1.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${light != '0'}">
                                <div class="light">
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">车灯</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">车等异常</span>
                                    </div>
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/cd2.png">
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${wheel == '0'}">
                                <div class="wheel">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/cl1.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #20c8ff;font-size: 20px">车轮</span><br/>
                                        <span style="color: #20c8ff;font-size: 18px">正常工作</span>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${wheel != '0'}">
                                <div class="wheel">
                                    <div class="col-md-6">
                                        <img alt="fdj2" src="resources/images/myself/cl2.png">
                                    </div>
                                    <div class="col-md-6">
                                        <span style="color: #ffee62;font-size: 20px">车轮</span><br/>
                                        <span style="color: #ffee62;font-size: 18px">车轮异常</span>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>

        <div class="col-md-3">
            <div class="list-group">
                <div class="list-group-item active"
                     style="background-color:#196BA2;border:0px solid #145885;">
                    <button type="button"
                            style="background-color:#196BA2;color:#F0F8FD;border:0px solid;">故障提醒
                    </button>
                </div>
                <div class="bheight" style="background-color: #145885;">
                    <c:if test="${not empty carmessage }">
                        <img alt="guzhang" src="resources/images/myself/fault.png"
                             style="margin-top: 50px;margin-left: 50px">
                        <div id="carlist" style="height:500px;">
                            <c:forEach items="${faultsolution}" var="fs" varStatus="fst">
                                <div style="color: #ffee62;margin-left: 50px;margin-top: 20px;">
                                    <h3>${fs.remarks}</h3>
                                    <span style="font-size: 20px">建议：${fs.faultsolution}</span>
                                </div>
                            </c:forEach>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>

/*
绑定
*
/
<div id="modal" class="modal mymodal" aria-hidden="true"
     style="display: none;left:10%">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title">车辆信息</h4>
            </div>
            <div class="modal-body">
                <form id="user-create-form" class="form-horizontal" method="post"
                      action="/admin/user/create" novalidate="novalidate">
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="vehID">车辆ID<span class="xb">*</span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="vehID" name="vehID" class="form-control">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="plateNumber">车牌号<span class="xb">*</span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="plateNumber" name="plateNumber"
                                   class="form-control">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="brand">品牌<span class="xb">*</span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="brand" name="brand" class="form-control">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="currentMileage"> 当前里程数</label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="currentMileage" name="currentMileage"
                                   class="form-control">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label for="produceDate" class="col-md-3 control-label">出厂日期</label>
                        <div class="col-md-7 controls">
                            <input type="text" class="form-control Wdate" id="produceDate"
                                   placeholder="请选择开始时间" readonly="true"
                                   onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="userId">归属人</label>
                        </div>
                        <input id="username" class="form-control"
                               value="${user.username}" style="margin-left: 16px;"
                               readonly="readonly"> <input id="userid"
                                                           value="${user.id}" type="hidden">
                    </div>

                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="carType">车辆类型</label>
                        </div>
                        <div class="col-md-7 controls">
                            <select id="carType">
                                <option value="小型私家车">小型私家车</option>
                                <option value="中型面包车">中型面包车</option>
                                <option value="大型公交车">大型公交车</option>
                            </select>

                            <div class="help-block" style="display: none;"></div>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="remarks">说明</label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="remarks" name="remarks"
                                   class="form-control">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary pull-right"
                        id="addsure" onclick="addCar()" style="margin-left: 5px">提交
                </button>
                <button type="button " class=" btn btn-primary pull-right"
                        data-dismiss="modal" aria-hidden="true">取消
                </button>
            </div>
        </div>
    </div>
</div>

//车辆详情
<div id="searchmodal" class="modal mymodal" aria-hidden="true"
     style="display: none;left:10%">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×</button>
                <h4 class="modal-title">车辆信息</h4>
            </div>
            <div class="modal-body">
                <form id="user-search-form" class="form-horizontal" method="post"
                      action="/admin/user/create" novalidate="novalidate">
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="vehID1">车辆ID<span class="xb"></span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="vehID1" name="vehID" class="form-control"
                                   readonly="readonly" value="${carmessage. vehID }">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="plateNumber1">车牌号<span class="xb"></span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="plateNumber1" name="plateNumber"
                                   class="form-control" readonly="readonly"
                                   value="${carmessage.plateNumber}">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="brand1">品牌<span class="xb"></span></label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="brand1" name="brand" class="form-control"
                                   readonly="readonly" value="${carmessage.brand}">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="currentMileage1"> 当前里程数</label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="currentMileage1" name="currentMileage"
                                   class="form-control" readonly="readonly"
                                   value="${carmessage.currentMileage}">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <%--@declare id="producedate1"--%><label for="produceDate1" class="col-md-3 control-label">出厂日期</label>
                        <div class="col-md-7 controls"
                             style="margin-top: 5px;margin-left: 10px;">
                            <fmt:setLocale value="zh" />
                            <fmt:formatDate value="${carmessage.produceDate}" />
                            <!-- <input type="text" class="form-control" id="produceDate"
                                placeholder="请选择开始时间" readonly="true"  value=""/> -->
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="userId1">归属人</label>
                        </div>
                        <input id="username1" class="form-control"
                               value="${user.username}" style="margin-left: 16px;"
                               readonly="readonly"> <input id="userid1"
                                                           value="${user.id}" type="hidden">
                    </div>

                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="carType1">车辆类型</label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="carType1" name="carType"
                                   class="form-control" readonly="readonly"
                                   value="${carmessage.carType}">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-3 control-label">
                            <label for="remarks1">说明</label>
                        </div>
                        <div class="col-md-7 controls">
                            <input type="text" id="remarks1" name="remarks"
                                   class="form-control" readonly="readonly"
                                   value="${carmessage.remarks}">
                            <div class="help-block" style="display:none;"></div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button " class=" btn btn-primary pull-right"
                        data-dismiss="modal" aria-hidden="true">关闭</button>
            </div>
        </div>
    </div>
</div>

<%@ include file="Bottom.jsp" %>
<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/sweetalert.min.js"></script>
<script
        src="<%=basePath%>/resources/Widget/My97DatePicker/WdatePicker.js"
        type="text/javascript"></script>
<script src="res/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<script>

    function del(id){
        var id = id;
        $.ajax({
            type : "post",
            url : '<%=path%>' + "deleteByUserid.do",
            data : {
                userId : id
            },
            dataType : "json",//数据类型为json
           // jsonp:"jsoncallback",
            success : function(data){
                if(data=="true"){
                    swal("", "删除成功！", "success");
                    <%--setTimeout("location.href = 'http://" + location.host + "<%=path%>"--%>
                    <%--    +"/user/myselfcenter'",500);--%>
                }else{
                    sweetAlert("", "删除失败！", "error");
                }
            }
        });
    }


</script>
</body>
</html>
