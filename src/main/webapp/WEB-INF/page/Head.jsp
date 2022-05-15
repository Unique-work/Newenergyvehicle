<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="resources/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />




</head>

<body style="background-color: #124E76;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="navbar navbar-default" role="navigation"
					style="background-color: #124E76; border: 0px solid; margin-bottom: 0px;">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" style="color: #F0F8FD;"><img
								border="0" width="500" src="resources/images/myself/logo.png" /></a>
						</div>
						<div class="navbar-header">
							<a class="navbar-brand"
								style="color: #F0F8FD; padding: 24px; margin-left: 20px">首页</a>
						</div>
						<div class="navbar-header">
							<a class="navbar-brand"  onclick="jumpcarposition()" href="javascript:void(0);"
								style="color: #F0F8FD; margin-left: 30px; padding: 24px;">车辆分布</a>
						</div>
						<div class="navbar-header">
							<a class="navbar-brand"
								style="color: #F0F8FD; margin-left: 30px; padding: 24px;">车友圈</a>
						</div>
						<div class="navbar-header">
							<a class="navbar-brand"
								style="color: #F0F8FD; margin-left: 30px; padding: 24px;">地图导航</a>
						</div>
						
						<c:if test="${empty user}">
						<div class="navbar-header" style="float: right;">
							<a class="navbar-brand" onclick="jumpLogin()"href="javascript:void(0);" style="color: #F0F8FD; padding-top: 24px;">登录</a> <span
								class="navbar-brand" style="color: #F0F8FD; padding-top: 24px;">|</span>
							<a class="navbar-brand" onclick="jumpRegiste()" href="javascript:void(0);" style="color: #F0F8FD; padding-top: 24px;">注册</a>
						</div>
						</c:if>
						<c:if test="${not empty user}">
	<div class="btn-group" style="float: right; top: 20px;">
		<button type="button" class="btn btn-default dropdown-toggle"
			data-toggle="dropdown"
			style="background: none; color: white; border: 0; float: right;">${user.nickname}
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu"
			style="left: -114px; top: 45px; background: rgba(0, 0, 0, 0.7); color: #fff; width: 220px;">
			<li style="padding: 10px 27px;">
				<div class="pull-left">
					<img src="${user.hpic}" style="border-radius: 50%;"
						width="40" height="40">
				</div>
				<div class="pull-left" style="padding: 12px 17px;">${user.username}
				</div>
				<div class="clearfix"></div>
			</li>
			<li><button class="btn btn-primary" onclick="jumpAccset()"
					style="width: 80%; margin: 5px 19px;">基本信息</button></li>
			<li><button class="btn btn-primary"onclick="jumpmycar()"
					style="width: 80%; margin: 5px 19px;">我的车辆</button></li>
			<c:if test="${user.usertype == '1' }">
				<li><button class="btn btn-primary"style="width: 80%; margin: 5px 19px;" onclick="jumpcompanycenter()">企业管理</button></li>
			</c:if>
			<li><a onclick="jumpLogout()" style="text-align: center; border-top: 1px solid #fff; margin: 9px 0; color: #fff; padding: 10px 20px 0; background: rgba(0, 0, 0, 0) !important;">退出登录</a></li>
		</ul>
	</div>
	<div class="pull-right" style="top: 16px; position: relative;">
		<img src="${user.hpic}" style="border-radius: 50%;" width="40"
			height="40">
	</div>
</c:if>
						
						
						
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin: 17px 0">
						<img src="resources/images/line.png" class="img-responsive" />					
		</div>
	</div>
	
	<script type="text/javascript">
	function jumpRegiste(){
		window.location.href="http://" + location.host + "<%=path%>/" +"Regist.do";
	}
	
	function jumpLogin(){
		window.location.href="http://" + location.host + "<%=path %>/" +"login.do";
	}
	
	function jumpLogout(){
		window.location.href="http://" + location.host + "<%=path %>/" +"/logout.do?id=${user.id}";
	}
	
	function jumpAccset(){
		window.location.href="http://" + location.host + "<%=path %>/" +"Accset.do";
	}
   function jumpcompanycenter() {
	   window.location.href="http://" + location.host + "<%=path %>/" +"listAllCar.do";

   }
	function jumpindex(){
		window.location.href="http://" + location.host + "<%=path%>/" +"index.do";
	}

	function jumpmycar(){
		window.location.href="http://" + location.host + "<%=path%>/"+ "myselfcenter.do";
	}

	function jumpcompanycenter(){
		window.location.href="http://" + location.host + "<%=path %>/" +"companycenter.do";
	}

	function jumpcarposition(){
		window.location.href='http://' + location.host + '<%=path %>/' +'Carposition.do';
	}

	</script >
	
	
</body>
</html>
