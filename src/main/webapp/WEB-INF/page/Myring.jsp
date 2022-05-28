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
    <script src="resources/Widget/ueditor/ueditor.config.js" type="text/javascript" ></script>
    <script src="resources/Widget/ueditor/ueditor.all.js" type="text/javascript" ></script>
    <script src="resources/Widget/ueditor/lang/zh-cn/zh-cn.js" type="text/javascript" ></script>

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
                            <a class="pull-right" href="javascript:void(0)" data-toggle="modal" data-target="#car_manager" style="color:#F0F8FD">添加车友</a>
                            <div class="clearfix"></div>
                        </div>
                        <div id="carlist">
                            <c:forEach items="${carfriends}" var="var" varStatus="vs">
                                <div class="list-group-item list-group-item-content">
                                    <div class="col-md-3">
                                        <img src="${var.user.hpic}" class="img-circle" border="0" height="50" id="pic" width="50"/>
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
            type : "post",
            url : '<%=path %>'+"/addcarfriend.do",
            dataType : "jsonp",
            jsonp:"jsoncallback",
            data : {
                carfname:carfname
            },
            success : function(data){
                if(data=="error"){
                    alert("不存在该用户！");
                }else if(data=="repeat"){
                    alert("该车友已添加！");
                }else{
                    swal("", "添加成功!", "success");
                    $("#carfname").val("");
                    setTimeout("location.href = 'http://" + location.host + "<%=path%>/"
                        +"/myring.do'",500);
                }
            }
        });

    }
</script>
<script type="text/javascript">
    var editor;
    $(function() {
        UE.Editor.prototype._bkGetActionUrl=UE.Editor.prototype.getActionUrl;
        UE.Editor.prototype.getActionUrl=function(action){
            if (action == 'uploadimage'){
                return "<%=path%>"+"/ueditor/upload.do?Type=Image&mark=1";
            }else{
                return this._bkGetActionUrl.call(this, action);
            }
        };
        editor = UE.getEditor('container',{
            toolbars:[['bold','indent','italic','underline','fontborder','simpleupload','justifyleft','justifyright','justifycenter','justifyjustify','forecolor','backcolor']],
            wordCount:false,
            elementPathEnabled:false,
        });
    });
</script>
<%--编写Ajax方法saveContent()，该方法由“提交”按钮触发，将转发请求至控制层，方法代码如下：--%>
<script type="text/javascript">
    function saveContent(){
        var txt = editor.getContent();
        var text= encodeURIComponent(txt);
        $.ajax({
            type : "post",
            url : '<%=path %>'+"/ring/saveContent",
            data : {
                txt : text,
            },
            success : function(data){
                swal("", "发布成功！", "success");
                setTimeout("location.href = 'http://" + location.host + "<%=path%>"
                    +"/energy/myring'",500);		}
        });
    }
</script>

</html>
