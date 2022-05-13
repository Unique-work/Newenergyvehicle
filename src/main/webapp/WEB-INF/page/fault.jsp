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

<title>故障车辆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="resources/css/bootstrap-datetimepicker.min.css" />
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/page.css" />
<style type="text/css">
.row {
	color: #ffff
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
</style>
</head>


<body style="background-color: #124E76;">
	<jsp:include page="../car/Head.jsp"></jsp:include>
	<div class="col-md-12">
		<div class="col-md-12 right-content" style="margin-top: 10px">
			<div id='wrapper'>
				<section id="content">
					<div class="col-md-12"
						style="color: #fff; background-color: #196BA2;">
						<div class="col-md-6 pull-left">
							<h1 class="pull-left" style="margin-bottom: 10px">
								<span style="font-size: 20px">${faultName}</span>
							</h1>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-12" style="color: #fff; margin-top: 10px;">
						<table id="user-table" class="table">
							<thead>
								<tr>
									<th style="text-align: left">车号</th>
									<th style="text-align: left">故障名称</th>
									<th style="text-align: left">故障级别</th>
									<th style="text-align: left">解决方法</th>
									<th style="text-align: left">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${faultinfolist}" var="faultinfolist">
									<tr>
										<td>${faultinfolist.vehid}</td>
										<td>${faultinfolist.faultMean.faultmean}</td>
										<td>${faultinfolist.faultlevel}</td>
										<td>${faultinfolist.faultSolution.faultsolution}</td>
										<td>
											<div style="float: left;">
												<img alt="del" src="resources/images/view.png">
												<a tyle="color: #20c8ff" href="javascript:void(0)" 
												onclick="view('${faultinfolist.vehid}')">查看</a> 
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div style="text-align: center; margin-top: 20px;">
						<ul id="pagination"></ul>
					</div>
				</section>

			</div>
		</div>
		<%@ include file="../car/Bottom.jsp"%>
	</div>

	<%@ include file="Bottom.jsp"%>
	<script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/fineuploader.js"></script>
	<script src="resources/js/bootstrap-datetimepicker.js"
		type="text/javascript"></script>
	<script type="text/javascript">
	function view(vehID) {	
		window.location.href='http://' + location.host + '<%=path%>/'+ 'energy/carinformation/'+vehID;
	}
	</script>
</body>
</html>
