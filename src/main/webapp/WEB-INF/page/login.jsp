<%--
  Created by IntelliJ IDEA.
  User: 张世文
  Date: 2022/3/11
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ include file="Head.jsp" %>
<title>login.jsp</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="resources/css/page.css"/>
<link rel="stylesheet" href="resources/css/style.css"/>
<script src="resources\js\jquery-3.1.1.min.js"></script>
<style>
    #col4 {
        height: 300px;
        width: 25%;
        background-color: #124E76;
        margin-left: 15px;
        margin-top: 5px; /*给栅格设置高度，左边距，上边距，宽度占比，背景颜色*/
    }

    #col8 {
        height: 300px;
        background-color: #124E76;
        width: 70%;
        margin-right: 15px;
        margin-top: 5px; /*给栅格设置高度，右边距，上边距，宽度占比，背景颜色*/
    }

    /*由于两个栅格加起来的宽度占比没有100%，就会形成空白部分*/
    .touxiang {
        text-align: center; /*给左边的栅格中的内容进行居中*/
    }

</style>
<script type="text/javascript">
    function login() {
        alert("定义了一个点击事件");
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
                    window.location.href = "index.do";
                },
                error: function (resp) {
                    alert(resp)
                    alert("失败了");
                }
            }
        )
    }
</script>


</head>

<body style="background-color: #124E76;">
<div class="list-group" style="margin: 0 auto; width: 800px;">
    <a class="list-group-item active" style="background-color: #196BA2;">
        <h4 class="list-group-item-heading">用户登录</h4>
    </a>
    <div class="list-group-item" style="background-color: #145885; border: 0px solid;">
        <div class="row">
            <!--form 不执行操作-->
            <form action="login.do" method="post" onsubmit="return false;">
                <div class="col-md-12" style="background-color: #124E76; float: right; margin-top: 20px;">
                    <div class="form-group" style="margin-top: 20px; margin-left: 12%;">
                        <label class="form-label" style="color: #ffffff;">用户名：</label>
                        <input type="text" id="username" class="form-control" style="width: 300px; margin-left: 50px;">
                    </div>
                    <div class="form-group" style="margin-top: 20px; margin-left: 12%;">
                        <label class="form-label" style="color: #ffffff;">密码：</label>
                        <input type="password" id="password" class="form-control"
                               style="width: 300px; margin-left: 50px;">
                    </div>
                </div><!-- end of col-md-12 div -->
                <div class="row" style="margin-top: 10px; margin-bottom: 10px; text-align: center;">
                    <button type="button" style="text-align: center;" class="btn btn-primary" id="button_login"
                            onclick="login()">登录
                    </button>
                </div>
            </form>
        </div>

    </div><!-- end of list-group-item div -->
</div><!-- end of list-group div -->
<%@ include file="Bottom.jsp" %>
</body>

</html>
