<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="overflow:hidden;">
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%@ include file="Head.jsp"%>
<title>企业用户管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="resources/css/page.css" />
<link rel="stylesheet" href="res/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/sweetalert.css" />
</head>

<body style="background-color:#124E76;width: 100%">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="col-md-10" style="position:absolute;left:16%;right:0;top:85px;overflow:auto;height:100%">
		<div>
			<div class="list-group-item active"
				style="height:40px;background-color:#196BA2;border:0px solid #145885;">
				<button type="button"
					style="height:20px;background-color:#196BA2;color:#F0F8FD;border:0px solid #145885;">企业用户管理</button>
				<div>
					<div style="float: right;margin-top: -20px;">
						<button type="button" style="margin-left:5px;float:right;height:20px;background-color:#3FA1E2;color:#F0F8FD;border:0px solid;">
							<span class="glyphicon glyphicon-camera"></span> 增加用户
						</button>
					</div>
				</div>
			</div>
			<div id="show" class="list-group"
				style="min-height:500px;width: 100%;margin-top: 20px;">
				<table style="color: white;font-size:14px" class="table">
					<thead>
						<!-- <th>用户id</th> -->
						<th>用户姓名</th>
						<th>真实姓名</th>
						<th>创建时间</th>
						<th>性别</th>
						<th>操作</th>
					</thead>
					<tbody>
							<tr>
								<%-- <td>${userlist.id}</td> --%>
								<td></td>
								<td></td>
								<td><fmt:setLocale value="zh" /> 
								<fmt:formatDate value="" /></td>
									<td>男</td>								
									<td>女</td>								
								<td>
									<div style="float: left;">
										<img alt="del" src="resources/images/edit.png"> <a
											style="color: #20c8ff">修改</a>
									</div>
									<div style="float: left;">
										<img alt="del" src="resources/images/delete.png"> 
										<a style="color: #20c8ff">删除</a>
									</div>
								</td>
							</tr>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="Bottom.jsp"%>

	<script src="resources/js/sweetalert.min.js"></script>
	
</body>
</html>
