<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>企业车辆管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/sweetalert.css" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/page.css" />
<style type="text/css">
.row {
	color: #ffff
}

.col-md-3{
	color:black
}

.form-control {
	display: block;
	width: 100%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857;
	color: #555;
	vertical-align: middle;
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 0px;
}

th {
	text-align: center;
}

@media screen and (max-width:1367px) {
	.rBoxContent {
		overflow: auto;
		height: 600px;
	}
}

@media screen and (min-width:1367px) {
	.rBoxContent {
		overflow: auto;
		height: 699px;
	}
}
</style>
</head>

<body style="background-color: #124E76;">
	<jsp:include page="Head.jsp"></jsp:include>
	<jsp:include page="left.jsp"></jsp:include>
	<div class="col-md-10"
		style="position: absolute; left: 15%; right: 0; top: 76px; overflow: auto; height: 100%">
		<div class="col-md-12 right-content" style="margin-top: 10px">
			<div id='wrapper'>
				<section id="content">
					<div class="col-md-12"
						style="color: #fff; background-color: #196BA2;">
						<div class="col-md-6 pull-left">
							<div class="pull-left"
								style="position: relative; margin: 10px 0; font-size: 14px">
								<span style="font-size: 14px">车辆管理</span><span
									style="font-size: 14px ">${pageInfo.total}====辆</span>

							</div>
						</div>
						<div class="col-md-6 pull-right" style="padding-right: 50px">
							<div class="pull-right" style="float: right; margin-top: 10px">
								<input type="text" id="str" style="height: 30px; color: #000" />
								<a class="btn btn-primary btn-sm">查询车辆</a>
                                <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal">添加车辆</a>

                            </div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-12 rBoxContent"
						style="color: #fff; margin-top: 10px; text-align: left;">
						<table id="car-table" class="table" style="height: 60%">
							<thead>
								<tr>
									<th>勾选</th>
									<th>ID</th>
									<th>品牌</th>
									<th>出厂日期</th>
									<th>当前里程数</th>
									<th style="text-align: center; width: 22%;">操作</th>
								</tr>
							</thead>
							<tbody id="tablelist">
							<c:forEach items="${carlist}" var="car" >
								<tr>
									<td><input type="checkbox" id="${car.vehID }"
                                               name="box" value="${car.vehID }"/></td>
									<td>${car.vehID}</td>
									<td>${car.brand}</td>
									<td><${car.productdate}</td>
									<td>${car.currentmileage}</td>
									<td style="text-align: center; width: 22%;">
									<div style='float: left;'>
										<img alt='del' src='resources/images/view.png'><a class="btn btn-link editdeptbtn" style='color: #20c8ff' onclick="view();">详情</a>
									</div>
		     						<div style='float: left;'>
		     							<img alt='del' src='resources/images/edit.png'><a class="btn btn-link editdeptbtn" data-toggle="modal" data-target="#modalupdate" style='color: #20c8ff' onclick="javascript:carupdate();">修改</a>
		     						</div>
									<div style='float: left;'>
										<img alt='del' src='resources/images/delete.png'><a class="btn btn-link editdeptbtn" style='color: #20c8ff' data-toggle="modal" onclick="javascript:cardelete();">删除</a>
									</div>

									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<div class="row col-md-12 ">
							<div class="col-md-6">
								<button class="btn btn-primary btn-sm" onclick=changeSelect()>全选</button>
								<button class="btn btn-primary btn-sm" onclick="deleteBatch()">批量删除</button>
							</div>


<%--							<div id="page" class="col-md-6">--%>
<%--								<ul>--%>
<%--									<li><a href="<%=path %>/carmessage/listByPage.do?pageNum=1" aria-label="Previous"><span class="row">首页</span></a></li>--%>
<%--									<li><a href="<%=path %>/carmessage/listByPage.do?pageNum=${pageInfo.prePage}"><span class="row">上一页</span></a></li>--%>
<%--									<c:forEach var="num" begin="${(pageInfo.pageNum-5>0?(pageInfo.pageNum-5):1)}"  end="${(pageInfo.pageNum+5<=pageInfo.pages)?(pageInfo.pageNum+5):pageInfo.pages}">--%>
<%--										<li><a href="<%=path %>/carmessage/listByPage.do?pageNum=${num}">--%>
<%--											<span class="row">${num }</span>--%>
<%--										</a></li>--%>
<%--									</c:forEach>--%>
<%--									<li><a href="<%=path %>/carmessage/listByPage.do?pageNum=${pageInfo.nextPage}"><span class="row">下一页</span></a></li>--%>
<%--									<li><a href="<%=path %>/carmessage/listByPage.do?pageNum=${pageInfo.pages}" aria-label="Next"><span class="row">尾页</span></a></li>--%>
<%--								</ul>--%>
<%--							</div>--%>

						</div>

					</div>
				</section>
			</div>
		</div>

        <!-- 添加车辆 -->
        <div id="modal" class="modal mymodal" aria-hidden="true"
             style="display: none; left: 10%;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-3 control-label">
                                    <label for="plateNumber">车牌号<span class="xb">*</span></label>
                                </div>
                                <div class="col-md-7 controls">
                                    <input type="text" id="plateNumber" name="plateNumber"
                                           class="form-control">
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-3 control-label">
                                    <label for="brand">品牌<span class="xb">*</span></label>
                                </div>
                                <div class="col-md-7 controls">
                                    <input type="text" id="brand" name="brand" class="form-control" />
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-3 control-label">
                                    <label for="currentMileage">当前里程数</label>
                                </div>
                                <div class="col-md-7 controls">
                                    <input type="text" id="currentMileage" name="currentMileage" class="form-control">
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top: 20px;">
                                <label for="produceDate" class="col-md-3 control-label">出厂日期</label>
                                <div class='input-group date'id="datetimepicker1" >
                                    <input id="produceDate" type='text' class="form-control" style="width: 320px;" />
                                    <span class="input-group-addon">
			                    <span class="glyphicon glyphicon-calendar"></span>
			                </span>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3 control-label">
                                    <label for="userId">归属人</label>
                                </div>
                                <div class="col-md-7 controls">
                                    <select id="userId">
                                        <c:forEach items="${userList }" var="user">
                                            <option value="${user.id}">${user.username}</option>
                                        </c:forEach>
                                    </select>
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-3 control-label">
                                    <label for="userId">车辆类型</label>
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
                                    <input type="text" id="remarks2" name="remarks"
                                           class="form-control">
                                    <div class="help-block" style="display: none;"></div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" onclick="addCar()" class="btn btn-primary pull-right" id="addsure2" style="margin-left: 5px">提交</button>
                        <button type="button" class=" btn btn-primary pull-right" data-dismiss="modal" aria-hidden="true">取消</button>
                    </div>
                </div>
            </div>
        </div>

	</div>


    <!-- 修改车辆 -->
    <div id="modalupdate" class="modal mymodal" aria-hidden="true"
         style="display: none; left: 10%;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">车辆信息修改</h4>
                </div>
                <div class="modal-body">
                    <form id="user-create-form2" class="form-horizontal" method="post"
                          action="/admin/user/create" novalidate="novalidate">
                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="vehID2">车辆ID<span class="xb">*</span></label>
                            </div>
                            <div class="col-md-7 controls">
                                <input type="text" id="vehID2" name="vehID" class="form-control" disabled="disabled">
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="plateNumber2">车牌号<span class="xb">*</span></label>
                            </div>
                            <div class="col-md-7 controls">
                                <input type="text" id="plateNumber2" name="plateNumber"disabled="disabled"
                                       class="form-control">
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="brand2">品牌<span class="xb">*</span></label>
                            </div>
                            <div class="col-md-7 controls">
                                <input type="text" id="brand2" name="brand" class="form-control" />
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="currentMileage2">当前里程数</label>
                            </div>
                            <div class="col-md-7 controls">
                                <input type="text" id="currentMileage2" name="currentMileage" class="form-control">
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>

                        <div class="form-group" style="margin-top: 20px;">
                            <label for="produceDate2" class="col-md-3 control-label">出厂日期</label>
                            <div class='input-group date'id="datetimepicker2" >
                                <input id="produceDate2" type='text' class="form-control" style="width: 320px;" />
                                <span class="input-group-addon">
			                    <span class="glyphicon glyphicon-calendar"></span>
			                </span>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="userId2">归属人</label>
                            </div>
                            <div class="col-md-7 controls">
                                <select id="userId2">

                                    <c:forEach items="${userlist }" var="user">
                                        <option value="${user.id}">${user.username}</option>

                                    </c:forEach>
                                </select>
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-3 control-label">
                                <label for="userId2">车辆类型</label>
                            </div>
                            <div class="col-md-7 controls">
                                <select id="carType2">
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
                                <div class="help-block" style="display: none;"></div>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" onclick="updateCar()"
                            class="btn btn-primary pull-right" id="addsure"
                            style="margin-left: 5px">保存</button>
                    <button type="button" class=" btn btn-primary pull-right"
                            data-dismiss="modal" aria-hidden="true">取消</button>
                </div>
            </div>
        </div>
    </div>


    <script src="resources/js/sweetalert.min.js"></script>
	<script type="text/javascript">
	//全选/全不选
	function changeSelect(){
		var items = document.getElementsByName("box");
		for(var i = 0; i < items.length; i++){
			items.value==1?items.value=2 : items.value=1;
	  		for(var i = 0; i < items.length; i++){
				if(items.value==1){
	  				//选中 ==> 没选中
					items[i].checked=true;
				}else{
	  				//没选中 ==> 选中
					items[i].checked=false;
				}
	  		}
		}
	}

	var unSelected = "#999";
    var selected = "#333";
    $(function () {
        $("select").css("color", selected);
        $("option").css("color", unSelected);
    });
function addCar() {
    var vehID =$("#vehID").val();
    var plateNumber =$("#plateNumber").val();
    var brand =$("#brand").val();
    var currentMileage=$("#currentMileage").val();
    var produceDate=$("#produceDate").val();
    var userId=$("#userId option:selected").val();
    var carType=$("#carType option:selected").val();
    var remarks=$("#remarks").val();
    var data = {
        vehID : vehID,
        plateNumber : plateNumber,
        brand : brand,
        currentMileage : currentMileage,
        produceDate : produceDate,
        userId : userId,
        carType : carType,
        remarks : remarks
    }
    $.ajax({
        url :"<%=path%>"+"/addcar.do",
        type:"GET",
        data:data,
        dataType:"json",
        success:function (resp) {
            alert("succes")

        },
        error:function (resp) {
            alert("error")

        }
    })
    function cardelete(vehID){
        $.ajax({
            url:"<%=path%>"+"/deletecar.do",
            data:{
                vehID:vehID
            },
            success:function (resp) {
              alert("success")

            },error:function (resp) {
                alert("error")

            }
        })

    }

}

    function deleteBatch(){

        var checkIds="";
        $('input[name="box"]:checked').each(function(){
            alert($(this).val());
            checkIds+=$(this).val()+",";
        })
        checkIds=checkIds.substring(0,checkIds.length-1);
        $.ajax({
            type :"GET",
            url :"<%=path%>"+"deleteBatch.do",
            data:{
                'checkIds':checkIds
            },
            dataType :"jsonp",
            jsonp :"jsoncallback",
            success : function(data) {
                if(data=="true"){
                    sweetAlert("批量删除成功！");

                    setTimeout("location.href = 'http://" + location.host + "<%=path%>"+"/carmessage/listByPage'",500);
                }
                else
                    sweetAlert("批量删除失败！");
            }
        })
    }

</script>
</body>
</html>
