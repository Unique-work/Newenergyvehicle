<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
<%--        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>--%>
    </script>

    <%--    <script src="js/jquery-3.1.1.min.js"></script>--%>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                + path + "/";
    %>

    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                我的登录页面
            </h3>
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">名字</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username"
                               placeholder="请输入名字">
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="password"
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
                <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-2">

                        <div class=" radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 选项
                                1
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">选项 2 -
                                选择它将会取消选择选项 1
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button onclick="login()">登录</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
    <script>
        function login() {

            alert("do")
            $.ajax({
                url: "login.do",
                type: "post",
                data: {
                    username: $("#username").val(),
                    password: $("#password").val()
                },
                dataType: "json",
                success: function (resp) {
                    alert("成功了");
                    // 这里跳转
                    // window.location.href = "";
                },
                error: function (resp) {
                    alert(resp)
                    alert("失败了");
                }
            })
        }
    </script>
</div>

</body>
</html>