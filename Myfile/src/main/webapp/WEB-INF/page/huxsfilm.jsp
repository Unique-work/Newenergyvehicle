<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <title>Document</title>
</head>

<body>
    <div class="container-fluid" style="background-color:grey">
        <div class="row" style="height: 40px;">
            <div class="col-md-4 column col-xs-6">
                <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">胡霞的影视网</a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><span class="glyphicon glyphicon-home"></span> 添加</a></li>
                                <li><a href="#shop"><span class="glyphicon glyphicon-shopping-cart"></span> 音乐</a></li>
                                <li><a href="#support"><span class="glyphicon glyphicon-headphones"></span> 娱乐</a></li>
                                <li class="active dropdown"><a href="#support"><span class="glyphicon glyphicon-eye-open"></span> 影视</a></li>

                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                              
                                <li ><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                                <li data-toggle="modal" data-target="#myModal1"><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                              </ul>
                           
                        </div>
                        
                        <!-- /.nav-collapse -->
                    </div>
                    <!-- /.container -->
                </div>

            </div>
            <div class="col-md-6 column col-xs-3">2</div>
            <div class="col-md-2 column  col-xs-3">3</div>
        </div>

    </div>
    <div class="container" style="background-color:honeydew;">
        <div class="row">
            <div class="col-md-9 column text-center">
                <h2>电影列表</h2>

                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="https://img01.hua.com/uploadpic/newpic/9012243.jpg_220x240.jpg" alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>恋恋情深</h3>
                                <p>11枝香槟玫瑰，白色多头百合2枝</p>
                                <p>
                                    <a href="#" class="btn btn-warning" role="button">
                                        <span class="glyphicon glyphicon-heart"></span> 购买
                                    </a>
                                    <a href="#" class="btn btn-default" role="button">
                                        <span class="glyphicon glyphicon-star-empty"></span> 收藏
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="https://img01.hua.com/uploadpic/newpic/9012154.jpg_220x240.jpg" alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>缩略图标签</h3>
                                <p>一些示例文本。一些示例文本。</p>
                                <p>
                                    <a href="#" class="btn btn-info" role="button">
                                        按钮
                                    </a>
                                    <a href="#" class="btn btn-success" role="button">
                                        按钮
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="https://img01.hua.com/uploadpic/newpic/9012493.jpg_220x240.jpg" alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>缩略图标签</h3>
                                <p>一些示例文本。一些示例文本。</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button">
                                        按钮
                                    </a>
                                    <a href="#" class="btn btn-default" role="button">
                                        按钮
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <c:if test="${not empty film}" >
                        <c:forEach var="film" items="${film}">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img src="https://img01.hua.com/uploadpic/newpic/9012452.jpg_220x240.jpg" alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>${film.filmname}</h3>
                                <p>${filmpic}</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button">
                                        按钮
                                    </a>
                                    <a href="#" class="btn btn-default" role="button">
                                        按钮
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                        </c:forEach>
                    </c:if>
                </div>

            </div>
            <div class="col-md-3 column">

                <h3>鲜花速递</h3>
                <p> 最新鲜花咨询尽早知</p>
                <table class="table ">

                    <tbody>
                        <tr>
                            <td>1.百合</td>
                            <td>8888 <span class="glyphicon glyphicon-heart"></span></td>
                        </tr>
                        <tr>
                            <td>2.玫瑰</td>
                            <td>1314 <span class="glyphicon glyphicon-heart"></span></td>
                        </tr>
                        <tr>
                            <td>3.蝴蝶兰</td>
                            <td>666 <span class="glyphicon glyphicon-heart"></span></td>
                        </tr>
                    </tbody>
                </table>
                
                <h3>鲜花優惠</h3>
                <p> 最新鲜花咨询尽早知</p>
                <table class="table ">

                    <tbody>
                        <tr>
                            <td>1.百合</td>
                           
                        </tr>
                        <tr>
                            <td>2.玫瑰</td>
                           
                        </tr>
                        <tr>
                            <td>3.蝴蝶兰</td>
                            
                        </tr>
                    </tbody>
                </table>


            </div>

        </div>


        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            用戶注冊
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="firstname" class="col-sm-2 control-label">名字</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="firstname" 
                                           placeholder="请输入名字">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-sm-2 control-label">密碼</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="lastname" 
                                           placeholder="请输入姓">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> 请记住我
                                        </label>
                                    </div>
                                </div>
                            </div>
                           
                        </form>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                        </button>
                        <button type="button" class="btn btn-primary">
                            提交
                        </button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
            </div>

</body>

</html>