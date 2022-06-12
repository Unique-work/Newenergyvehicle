<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%--    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>--%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <title>Document</title>
</head>
<body>
    <div class="container hidden-xs " style="background-color: blanchedalmond;">
        当前是container模式
        <div class="row ">
  <div class="col-md-4 col-xs-2" style="background-color:coral">1</div>
  <div class="col-md-4 col-xs-2" style="background-color:cyan">2</div>
  <div class="col-md-4 col-xs-8" style="background-color:darkorchid"> 3</div>
  
        </div>
        <div class="row">
          <div class="col-md-3 " style="background-color:coral">
          <div class="col-md-2">1-1</div>
          <div class="col-md-2">1-2</div>
          <div class="col-md-2">1-3</div>
          </div>
          <div class="col-md-1 " style="background-color:cyan">2</div>
          <div class="col-md-1 col-md-push-4 " style="background-color:darkorchid"> 3</div>
          <div class="col-md-2 col-md-offset-3 " style="background-color:darksalmon"> 列为2，偏移3</div>
                </div>
      </div>
    <div class="container-fluid" style="background-color:gainsboro;height: 1000px;">
        当前是container-fluid模式
            <h1>标题1</h1>
            <h1 class="h1">标题1<small>副标题</small></h1>
            <h2>标题2<span class="small">副标题</span></h2>
            <h3>标题2</h3>
            <h4>标题2</h4>
            <h5>标题2</h5>
            <h6>标题2</h6>
---------------段落---------------------------
<p>需要免费的视频配套资料+程序媛小姐姐Vx： lezijie002或007（加好友时请备注暗号B站233 ，不备注不会通过哟！！）
    Bootstrap一经推出后颇受欢迎，一直是GitHub上的热门开源项目，包括NASA的MSNBC的Breaking News都使用了该项目国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行</p>
    <p class="lead">需要免费<small>的视频配套资料+程序媛小姐姐</small>Vx： lezijie002或007（加好友时请备注<em>暗号B站233</em> ，不备注不会通过哟！！）
        Bootstrap一经推<b>出后颇受欢</b>迎，一直是GitHub上的<strong>热门开源项目</strong>，包括NASA的MSNBC的Breaking News都使用了该项目国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行</p>
    <div class="text-muted">提示</div>
    <div class="text-primary">主要</div>
    <div class="text-success">成功</div>
    <div class="text-info">通知信息</div>
    <div class="text-warning">警告</div>
    <div class="text-danger">危险</div>
    <div>--------------对齐效果---------------------------
    <p class="text-left">左对齐：需要免费的视频配套资料+程序媛小姐姐</p>
    <p class="text-right">右对齐：需要免费的视频配套资料+程序媛小姐姐</p>
    <p class="text-center">居中：需要免费的视频配套资料+程序媛小姐姐</p>
    <p class="text-justify">两端对齐：需要免费的视频配套资料+程序媛小姐姐</p>
</div>

    <div ><p>-------------列表---------------------------</p>
<ul class="list-inline" >
<li>无序列表</li>
<li class="list-unstyled">无序列表</li>
<li>无序列表</li>
</ul>

<ol ><li>有序列表</li>
    <li class="list-unstyled">有序列表</li>
    <li>有序列表</li></ol>
<dl class="dl-horizontal" >
<dt >定义dfdsfadfdsdfadfadsfdsf表1</dt>
<dd>定义列表1</dd>
<dd>定义列表1</dd>
<dd>定义列dsfsdfsdfd表1</dd>
<dt>定义列表2</dt>
<dd>定义列表2</dd>
</dl>

    </div>

    -------表格----------------
    <table class="table table-striped">
        <caption>基本的表格布局</caption>
       <thead>
          <tr>
             <th>名称</th>
             <th>城市</th>
          </tr>
       </thead>
       <tbody>
          <tr>
             <td>Tanmay</td>
             <td>Bangalore</td>
          </tr>
          <tr>
             <td>Sachin</td>
             <td>Mumbai</td>
          </tr>
          <tr>
            <td>Tanmay</td>
            <td>Bangalore</td>
         </tr>
         <tr>
            <td>Tanmay</td>
            <td>Bangalore</td>
         </tr>
       </tbody>
    </table>
    

      </div>

      
</body>
</html>