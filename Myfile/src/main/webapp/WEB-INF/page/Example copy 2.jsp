<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <title>Document</title>
</head>

<body>


<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">影视网</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#">读书</a></li>
                <li><a href="#">音乐</a></li>
                <li><a href="#">娱乐</a></li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        电影 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">爱情</a></li>
                        <li><a href="#">喜剧</a></li>
                        <li><a href="#">枪战</a></li>
                        <li><a href="#">科幻</a></li>
                        <li><a href="#">动画</a></li>
                        <li><a href="#">悬疑</a></li>
                        <li class="divider"></li>
                        <li><a href="#">中国大陆</a></li>
                        <li><a href="#">欧美</a></li>
                        <li><a href="#">日本</a></li>
                        <li><a href="#">韩国</a></li>
                        <li><a href="#">德国</a></li>

                    </ul>

                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${not empty user}">
                    <li>  <span style="background: #1b6d85;color: #0f0f0f">已经登录</span></li>
                    <li><a href="#" data-toggle="modal" data-target="#mylogin"><span
                            class="glyphicon glyphicon-log-in"></span> 退出</a></li>
                </c:if>
                <c:if test="${empty user}">
                        <li>  <span style="background: #1b6d85;color: #0f0f0f">未登录</span></li>

                </c:if>

                <li><a href="# " data-toggle="modal" data-target="#myregist"><span
                        class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a href="#" data-toggle="modal" data-target="#mylogin"><span
                        class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>

    </div>
</nav>


<div class="container">
    <div class="row col-md-9">

        <div class="col-sm-6 col-md-3">
            <div class=" thumbnail text-center">
                <img src="https://img2.doubanio.com/view/photo/m/public/p2622388983.webp"
                     style="width: 200px;height: 240px;">
                <h3>唐人街探案3</h3>
                <p>导演: 陈思诚</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>

        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2629056068.webp"
                     style="width: 200px;height: 240px;">
                <h3>你好，李焕英</h3>
                <p>导演：贾玲</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <img src="https://img9.doubanio.com/view/photo/l/public/p2632862664.webp"
                     style="width: 200px;height:240px;">
                <h3>人潮汹涌</h3>
                <p>导演: 饶晓志</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <img src="https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2628440875.webp"
                     style="width: 200px;height:240px;">
                <h3>刺杀小说家</h3>
                <p>导演: 路阳</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <img src="https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2629260713.webp"
                     style="width: 200px;height:240px;">
                <h3>侍神令</h3>
                <p>导演: 李蔚然</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <a href="https://movie.douban.com/subject/34804147/?from=playing_poster" target="_blank"><img
                        src="https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2633531206.webp"
                        style="width: 200px;height:240px;"></a>
                <h3>寻龙传说</h3>
                <p>导演: 唐·霍尔</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail text-center">
                <a href="https://img3.doubanio.com/view/photo/m/public/p2632043260.webp" target="_blank"><img
                        src="https://img3.doubanio.com/view/photo/m/public/p2632043260.webp"
                        style="width: 200px;height:240px;"></a>
                <h3>猫和老鼠 </h3>
                <p>导导演: 蒂姆·斯托</p>
                <button class="btn btn-default">
                    <span class="glyphicon glyphicon-heart"></span>喜欢
                </button>
                <button class="btn btn-default">

                    <span class="glyphicon glyphicon-pencil"></span>评论
                </button>
            </div>
        </div>

        <c:if test="${not empty film}">
            <c:forEach var="film" items="${film}">
                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail text-center">
                        <a href="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631489608.webp"
                           target="_blank"><img
                                src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2631489608.webp"
                                style="width: 200px;height:240px;"></a>
                        <h3>${flim.filmname}</h3>
                        <p>${flim.filmpic}</p>
                        <button class="btn btn-default">
                            <span class="glyphicon glyphicon-heart"></span>喜欢
                        </button>
                        <button class="btn btn-default">

                            <span class="glyphicon glyphicon-pencil"></span>评论
                        </button>
                    </div>
                </div>
            </c:forEach>
        </c:if>

    </div>
    <div class="row col-md-3 " style="margin-left: 10px;">
        <table class="table table-border ">
            <caption>
                <h4><span class="	glyphicon glyphicon-hand-right"></span> 热门片单 </h4>
            </caption>

            <tbody>
            <tr>
                <td class="text-success">1 打开心世界</td>
                <td class="text-info text-right">227<span class="glyphicon glyphicon-thumbs-up"></span></td>
            </tr>
            <tr>
                <td>2 亲爱的同志</td>
                <td class="text-info text-right">127<span class="glyphicon glyphicon-thumbs-up"></span></td>
            </tr>
            <tr>
                <td>3 同学麦娜丝</td>
                <td class="text-info text-right">117<span class="glyphicon glyphicon-thumbs-up"></span></td>
            </tr>
            <tr>
                <td>4 孤味</td>
                <td class="text-info text-right">76<span class="glyphicon glyphicon-thumbs-up"></span></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>
        <table class="table  table-border">
            <caption>
                <h4>一周口碑榜</h4>
            </caption>
            <tr>
                <td>1 打开心世界</td>
            </tr>
            <tr>
                <td>2 亲爱的同志</td>
            </tr>
            <tr>
                <td>3 同学麦娜丝</td>
            </tr>
            <tr>
                <td>4 孤味</td>
            </tr>
        </table>
    </div>
</div>
</div>
<!-- 模态框（Modal） -->
<div>
    <div class="modal fade" id="mylogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h5 class="modal-title" id="myModalLabel">
                        用户登录
                    </h5>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="firstname" class="col-sm-2 control-label">用户名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="username" placeholder="请输入名字">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastname" class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="password" placeholder="请输入姓">
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
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default" onclick="login()">登录</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary " onclick="login()">
                        提交更改
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
    <!-- 模态框（Modal）注册 -->
    <div>
        <div class="modal fade" id="myregist" tabindex="-2" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h5 class="modal-title" id="myModalLabel">
                            用户注册
                        </h5>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="firstname" class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="firstname" placeholder="请输入名字">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="lastname" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sex" class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="optionsRadios3"
                                               value="option1" checked> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="optionsRadios4"
                                               value="option2"> 女
                                    </label>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="education" class="col-sm-2 control-label">学历</label>
                                <div class="col-sm-10">

                                    <select class="form-control">
                                        <option>小学</option>
                                        <option>初中</option>
                                        <option>高中</option>
                                        <option>大专</option>
                                        <option>本科</option>
                                    </select>

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


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">关闭
                        </button>
                        <button type="button" class="btn btn-primary" onclick="save()">
                            提交
                        </button>
                    </div>
                    </form>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
</body>
<script>
   function login() {
      var username=$("#username").val();
      var password=$("#password").val();
      alert(username)
      $.ajax({
         url:"login.do",
         type:"GET",
         dataType: "json",
         data:{
             username:username,
            password:password
         },
         success:function (resp) {
//文件的操作
//              alert(resp.code)
           if(resp.code==200){
              alert("登录成功")
           }else {
               alert("失败")
           }

         }
      })


   }
   function save() {
       var option = $('input:radio[name="sex"]:checked').val();
       var sex;
       if (option=="option1"){
           sex="男";
       }else {
           sex="女";
       }
       alert(sex)
       $.ajax({

       })
   }
</script>
</html>