<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="overflow:hidden;">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <%@ include file="Head.jsp" %>
    <title>车友圈</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="resources/css/style.css"/>
    <link rel="stylesheet" href="resources/css/page.css"/>
    <link rel="stylesheet" href="resources/css/sweetalert.css"/>
    <script src="resources/Widget/ueditor/ueditor.config.js" type="text/javascript"></script>
    <script src="resources/Widget/ueditor/ueditor.all.js" type="text/javascript"></script>
    <script src="resources/Widget/ueditor/lang/zh-cn/zh-cn.js" type="text/javascript"></script>

    <style>
        .content {
            position: absolute;
            bottom: 0;
            top: 80px;
            left: 0;
            right: 0;
            overflow: auto
        }

        .leftbox {
            position: absolute;
            top: 0;
            bottom: 23px;
        }

        .rightbox {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 23px;
        }

        #carlist {
            overflow-y: auto;
            height: 94%;
        }

        .list-group-item-content {
            height: 70px;
            background-color: #145885;
            color: #F0F8FD;
            border-left: 0;
            border-right: 0;
            border-radius: 0;
            border-bottom: 0;
        }
    </style>
</head>

<body style="background-color:#124E76;">
<div class="container-fluid content">
    <div class="row">
        <div class="col-md-3 leftbox">
            <div class="list-group">
                <div class="list-group-item active" style="background-color:#196BA2;border:0px solid #145885;">
                    <div class="pull-left" style="color:#F0F8FD">我的车友</div>
                    <a class="pull-right" href="javascript:void(0)" data-toggle="modal" data-target="#car_manager"
                       style="color:#F0F8FD">添加车友</a>
                    <div class="clearfix">
                        <div class="list-group-item active" style="background-color:#196BA2;">
                            <div class="pull-left" style="color:#F0F8FD">我的车友(${count}人)</div>
                            <a class="pull-right" href="javascript:void(0)" data-toggle="modal"
                               data-target="#car_manager" style="color:#F0F8FD">添加车友</a>
                            <div class="clearfix"></div>
                        </div>
                        <div id="carlist">
                            <c:forEach items="${carfriends}" var="var" varStatus="vs">
                                <div class="list-group-item list-group-item-content">
                                    <div class="col-md-3">
                                        <img src="${var.user.hpic}" class="img-circle" border="0" height="50" id="pic"
                                             width="50"/>
                                    </div>
                                    <div class="col-md-9">
                                        <div>${var.user.username }</div>
                                        <div style="margin-top:5px;">
                                            <span style="float:left;">${var.carmessage.brand }</span>
                                            <c:if test="${not empty var.carmessage.brand}">
                                                <span style="float:left;">&nbsp;·&nbsp;</span>
                                            </c:if>
                                            <span style="float:left;">${var.carmessage.plateNumber }</span>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9 rightbox">
            <div>
                <div class="list-group-item active"
                     style="height:40px;background-color:#196BA2;border:0px solid #145885;">
                    <button type="button"
                            style="height:20px;background-color:#196BA2;color:#F0F8FD;border:0px solid #145885;">车友分享
                    </button>
                    <button type="button"
                            style="float:right;height:20px;background-color:#3FA1E2;color:#F0F8FD;border:0px solid;">
                        <span class="glyphicon glyphicon-camera"></span> 发布信息
                        <button type="button" data-toggle="modal" data-target="#carContent">发布信息</button>
                    </button>
                </div>
                <div id="show" class="list-group">
                    <c:forEach items="${contents}" var="var" varStatus="vs">
                        <div id="divs${vs.count}" class="list-group-item"
                             style="background-color:#145885;color:#F0F8FD;border:0;border-top:1px solid #fff;">
                            <input id="ids${vs.count}" value="${var.id}" type="hidden"/>
                            <div style="margin-left:40px;">
                                <img src="${var.user.hpic }" class="img-circle" id="pic2
" border="0" height="40" width="40"/>
                                <span style="padding-left: 20px">${var.user.username}</span>
                                <span style="margin-left:20px;">
<fmt:formatDate value="${var.releasetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</span>
                            </div>
                            <div style="margin-left:115px;margin-top:10px;"> ${var.txt}</div>
                            <div style="margin-left:115px;margin-top:10px;">
                                <table>
                                    <tbody id="co${vs.count}">
                                    <c:forEach items="${comments}" var="car" varStatus="cs">
                                        <c:if test="${car.contentid==var.id}">
                                            <tr>
                                                <td>
 						   	<span style="float:left;width:60px;margin-top:10px;">
<img src="${car.user.hpic }" class="img-circle"
     border="0" height="40" width="40" id="pic3"/></span>
                                                    <span style="display:inline-block;width:800px;border:0px solid;padding:10px;margin-left:10px;margin-top:15px;background-color:#196BA2;color:#F0F8FD;">${car.text}</span>
                                                </td>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div id="din${vs.count}" style="display:none;margin-top:10px;margin-left:110px;">
                                <input id="inputs${vs.count}" style="color:black;width:600px;height:40px;" />
                                <button onclick="send(${vs.count})" type="button" class="btn btn-default">发送</button>
                            </div>

                            <div style="margin-top:20px;margin-left:680px;">
                                <button id="praise${vs.count}" onclick="praise(${vs.count})" type="button"
                                        style="height:20px;background-color:#145885;color:#F0F8FD;border:0px solid;">
                                    <span class="glyphicon glyphicon-thumbs-up"></span> 点赞 :
                                    <span>${var.praise}</span>
                                </button>
                                <button id="comment${vs.count}" onclick="comments(${vs.count})" type="button"
                                        style="height:20px;background-color:#145885;color:#F0F8FD;border:0px solid;">
                                    <span class="glyphicon glyphicon-comment"></span> 评论 :
                                    <span>${var.comments}</span>
                                </button>

                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" style="display:none;" id="car_manager" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加车友</h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <span class="input-group-addon">车友名称</span>
                    <input type="text" id="carfname" class="form-control" placeholder="请输入车友名称">
                </div>
                <br>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="addCarFriend()" class="btn btn-primary">提交</button>
            </div>
        </div>
    </div>
</div>
<!--模态对话框-->
<div class="modal fade" id="carContent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">
                    车友圈信息分享</h4>
                <div class="modal-body">
                    <script id="container" type="text/plain"></script>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" onclick="saveContent()" class="btn btn-primary">
                    发送
                </button>
            </div>
        </div>
        <div id="show2" class="list-group">
            <c:forEach items="${contents}" var="var" varStatus="vs">
                <div id="divs${vs.count}" class="list-group-item"
                     style="background-color:#145885;color:#F0F8FD;border:0;border-top:1px solid #fff;">
                    <input id="ids${vs.count}" value="${var.id}" type="hidden"/>
                    <div style="margin-left:40px;">
                        <img src="${var.user.hpic }" class="img-circle" id="pic4" border="0" height="40" width="40"/>
                        <span style="padding-left: 20px">${var.user.username}</span>
                        <span style="margin-left:20px;">
<fmt:formatDate value="${var.releasetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</span>
                    </div>
                    <div style="margin-left:115px;margin-top:10px;"> ${var.txt}</div>
                    <div style="margin-left:115px;margin-top:10px;">
                        <table>
                            <tbody id="co${vs.count}">
                            <c:forEach items="${comments}" var="car" varStatus="cs">
                                <c:if test="${car.contentid==var.id}">
                                    <tr>
                                        <td>
 						   	<span style="float:left;width:60px;margin-top:10px;">
<img src="${car.user.hpic }" class="img-circle"
     border="0" height="40" width="40" id="pic2"/></span>
                                            <span style="display:inline-block;width:800px;border:0px solid;padding:10px;margin-left:10px;margin-top:15px;background-color:#196BA2;color:#F0F8FD;">${car.text}</span>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div style="margin-top:20px;margin-left:680px;">
                        <span class="glyphicon glyphicon-thumbs-up"></span>点赞： <span>${var.praise}</span>
                        <span class="glyphicon glyphicon-comment"></span>评论： <span>${var.comments}</span>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</div>

<%@ include file="Bottom.jsp" %>
<script src="resources/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="res/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/sweetalert.min.js"></script>

</body>
<script>
    function addCarFriend() {
        alert("do")
        var carfname = $("#carfname").val();
        $.ajax({
            type: "post",
            url: '<%=path %>' + "/addcarfriend.do",
            dataType: "jsonp",
            jsonp: "jsoncallback",
            data: {
                carfname: carfname
            },
            success: function (data) {
                if (data == "error") {
                    alert("不存在该用户！");
                } else if (data == "repeat") {
                    alert("该车友已添加！");
                } else {
                    swal("", "添加成功!", "success");
                    $("#carfname").val("");
                    setTimeout("location.href = 'http://" + location.host + "<%=path%>/"
                        + "/myring.do'", 500);
                }
            }
        });

    }
</script>
<script type="text/javascript">
    var editor;
    $(function () {
        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
        UE.Editor.prototype.getActionUrl = function (action) {
            if (action == 'uploadimage') {
                return "<%=path%>" + "/ueditor/upload.do?Type=Image&mark=1";
            } else {
                return this._bkGetActionUrl.call(this, action);
            }
        };
        editor = UE.getEditor('container', {
            toolbars: [['bold', 'indent', 'italic', 'underline', 'fontborder', 'simpleupload', 'justifyleft', 'justifyright', 'justifycenter', 'justifyjustify', 'forecolor', 'backcolor']],
            wordCount: false,
            elementPathEnabled: false,
        });
    });
</script>

<script type="text/javascript">
    function saveContent() {
        var txt = editor.getContent();
        var text = encodeURIComponent(txt);
        $.ajax({
            type: "post",
            url: '<%=path %>' + "/saveContent.do",
            data: {
                txt: text,
            },
            success: function (data) {
                swal("", "发布成功！", "success");
                setTimeout("location.href = 'http://" + location.host + "<%=path%>"
                    + "/myring.do'", 500);
            }
        });
    }
</script>

<%--编写Ajax方法saveContent()，该方法由“提交”按钮触发，将转发请求至控制层，方法代码如下：--%>
<script type="text/javascript">
    function saveContent() {
        var txt = editor.getContent();
        var text = encodeURIComponent(txt);
        $.ajax({
            type: "post",
            url: '<%=path %>' + "/saveContent.do",
            data: {
                txt: text,
            },
            success: function (data) {
                swal("", "发布成功！", "success");
                setTimeout("location.href = 'http://" + location.host + "<%=path%>"
                    + "/myring.do'", 500);
            }
        });
    }
</script>
<script>
    function praise(count) {
        var pid = $("#ids" + count).val();
        $.ajax({
            type: "post",
            url: '<%=path %>' + "/addpraise.do",
            data: {
                pid: pid
            },
            dataType: "jsonp",//数据类型为json
            jsonp: "jsoncallback",
            success: function (data) {
                if (data == "repeat") {
                    sweetAlert("您已点过赞！");
                } else {
                    var str = "";
                    str += "<span class=\"glyphicon glyphicon-thumbs-up\"></span> 点赞 : <span>" + data.praise + "</span>";
                    $("#praise" + count).html(str);
                }
            }
        });
    }

    function comments(count) {
        $("#din" + count).show();
    }
    function send(count){
        var cid = $("#ids"+count).val();
        var text = $("#inputs"+count).val();
        $.ajax({
            type : "post",
            url : '<%=path %>' + "/sendcomment.do",
            data : {
                cid : cid,
                text : text
            },
            dataType : "jsonp",//数据类型为json
            jsonp:"jsoncallback",
            success : function(data){
                $("#inputs"+count).val("");
                $("#din"+count).hide();
                addcomments(count);
                var str = "";
                str+="<tr>";
                str+="<td>";
                str+="<span style=\"float:left;width:60px;margin-top:10px;\"><img src="+data.hpic+" class=\"img-circle\" border=\"0\" height=\"50\" id=\"pic\" width=\"50\"/></span>";
                str+="<span style=\"display:inline-block;width:800px;border:0px solid;padding:10px;margin-left:10px;margin-top:15px;background-color:#196BA2;color:#F0F8FD;\">"+data.text+"</span>";
                str+="</td>";
                str+="</tr>";
                $("#co"+count).append(str);
            }
        });
    }

</script>
</html>
