<%--
  Created by IntelliJ IDEA.
  User: 张世文
  Date: 2022/3/11
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Regist.jsp</title>
    <%@ include file="Head.jsp" %>
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="resources/css/page.css"/>
    <link rel="stylesheet" href="resources/css/style.css"/>
    <link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
          rel="stylesheet">
    <script src="resources\js\jquery-3.1.1.min.js"></script>
    <script src="res/bootstrap/js/bootstrap.min.js"></script>
    <script src="resources/js/moment.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="resources/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker({
                format: 'YYYY-MM-DD',
                locale: moment.locale('zh-cn')
            });
            $('#datetimepicker2').datetimepicker({
                format: 'YYYY-MM-DD hh:mm',
                locale: moment.locale('zh-cn')
            });
        });


        //图片显示的
        function previewFile() {
            var preview = document.getElementById("pic");
            var file  = document.querySelector('input[type=file]').files[0];
            var reader = new FileReader();
            reader.onloadend = function () {
                preview.src = reader.result;
            }
            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }



        //提交的代码
        function save() {
            var name = $("#username").val();
            var password = $("#password").val();
            var nickname = $("#nickname").val();
            var birthdate = $("#birthdate").val();
            var firstTime = $("#firstTime").val();
            var option = $('input:radio[name="sex"]:checked').val();



            $.ajax({
                url: "http://" + location.host + "<%=path %>/" +"/adduser.do",

                type: "GET",
                data: {
                    username: $("#username").val(),
                    password: password,
                    nickname: nickname,
                    birthdate: birthdate,
                    firstTime: firstTime,
                    option:option
                },
                dataType: "json",
                success: function (resp) {
                    console.log(resp);
                    alert("success");
                    window.location.href = "index.do";

                    //文件的操作
                    $.ajaxFileUpload({
                        url:"upload.do",
                        secureuri :false,
                        fileElementId :'fileToUploadLink',//file控件id
                        data : {
                            username: name
                        },
                        success: function (resp) {
                            alert("成功了");
                            alert(JSON.stringify(resp.data));
                            console.log(resp.data)
                            if (resp.code == 200) {
                                alert("成功");
                                // 这里跳转

                            } else {
                                alert("bug");
                            }
                        },
                        error:function (resp) {
                            alert("ALL ERROR")
                        }
                    });





                },
                error: function (resp) {
                    console.log(resp);
                    alert("error");
                    alert("用户名重复了！！！！ 请换一个")
                }
            });




        }


    </script>


</head>


<body style="background-color: #124E76;">
<div class="list-group" style="margin: 0 auto; width: 800px;">
    <a class="list-group-item active" style="background-color: #196BA2;">
        <h4 class="list-group-item-heading">账号注册</h4>
    </a>
    <div class="list-group-item"
         style="background-color: #145885; border: 0px solid;">
        <div class="row">
            <div class="col-md-4" style="background-color: #124E76;" id="col4">
                <div class="col-md-6" style="background-color: #124E76; width: 250px; height: 360px; margin-top: 20px;">
                    <div class="img-circle"	style="margin: 0 auto; padding-top: 20px; background-color: #124E76; width: 150px; height: 150px;">
                        <img src="resources/login/nlogin.jpg" class="img-circle"
                             border="0" height="150" id="pic" width="150" />
                    </div>
                    <button type="button" style="background-color: #196BA2; color: #F0F8FD; border: 0px; margin-left: 70px; margin-top: 40px; height: 30px;" class="btn btn-default">上传头像</button>
                    <input id="fileToUploadLink" type="file" onchange="previewFile()" 					style="cursor:pointer;opacity:0;margin-left:70px;margin-top:-25px;color:F0F8FD;" size="25" name="fileToUploadLink"/>
                </div>


            </div>

            <div class="col-md-8"
                 style="background-color: #124E76; float: right" id="col8">
                <form class="form-horizontal">
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="control-label col-sm-4" style="color: #ffffff;">用户名：</label>
                        <input type="text" id="username" name="username" class="form-control col-sm-8"
                               style="width: 280px; margin-left: 50px;" value="">
                    </div>
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="control-label  col-sm-4" style="color: #ffffff;">密码：</label>
                        <input type="password" id="password" name="pwd"
                               class="form-control  col-sm-8"
                               style="width: 280px; margin-left: 50px;" value="">
                    </div>
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="col-sm-4 control-label" style="color: #ffffff;">昵称:</label>
                        <input type="text" class="form-control  col-sm-8"
                               style="width: 280px; margin-left: 50px; " id="nickname" name="nickname">

                    </div>
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="col-sm-4 control-label" style="color: #ffffff;">出生年月:</label>

                        <div class="col-sm-8">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text' name="birthdate" class="form-control" style="width: 300px;" id="birthdate"/>
                                <span class="input-group-addon">
		<span class="glyphicon glyphicon-calendar"></span>
	</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="col-sm-4 control-label" style="color: #ffffff;">性别:</label>
                        <div class="col-sm-8">
                            <label class="radio-inline" style="margin-left: 45px;color: #ffffff;">
                                <input type="radio"
                                       name="sex" id="optionsRadios3" value="1"
                                       checked> 男
                            </label>
                            <label class="radio-inline" style="color: #ffffff;"> <input type="radio"
                                                                                        name="sex" id="optionsRadios4"
                                                                                        value="option2">
                                女
                            </label>
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 12px;">
                        <label class="col-sm-4 control-label" style="color: #ffffff;">初次申领驾照时间:</label>

                        <div class='input-group date' id='datetimepicker2'>
                            <input type='text' name="firstTime" class="form-control" style="width: 300px;" id="firstTime"/>
                            <span class="input-group-addon">
		<span class="glyphicon glyphicon-calendar"></span>
	</span>
                        </div>


                    </div>
                </form>
            </div>
            <!-- end of col-md-8div -->
        </div>
        <div class="row"
             style="margin-top: 10px; margin-bottom: 10px; text-align: center;">
            <button type="button" style="text-align: center;"
                    class="btn btn-primary" onclick="save()">注册
            </button>
        </div>


    </div>
    <!-- end of list-group-item div -->
</div>
<!-- end of list-group div -->
<%@include file="Bottom.jsp" %>
</body>
</html>
