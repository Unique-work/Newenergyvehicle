<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<style>
.font {
	color: #ffffff;
	font-size: 14px;
}

a:hover {
	color: #ffffff;
	text-decoration: none;
	cursor: hand;
	text-decoration:underline;
}

.d {
	   padding-top: 10px;
    padding-bottom: 10px;
}
</style>
<div class="col-md-2">
<div class="list-group-item active" style="height:40px;background-color:#196BA2;border:0px solid #145885;">
				<a  style="background-color:#196BA2;color:#F0F8FD;font-size:14px">企业中心</a>
			</div>
	<div class="panel-body" style="padding:0">
		<div class="list-group-block">
			<div class="list-group-item"
				style="background-color:#145885;color:#F0F8FD;border:0;">
				<c:if test="${user.usertype == '1' }">
					<div class="d">
						<a class="font" id="plan"> 企业用户管理</a>
					</div>
					<div class="d">
						<a class="font" id="safe"  href="<%=path%>/carmessage/listAll.do"> 企业车辆管理</a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>
