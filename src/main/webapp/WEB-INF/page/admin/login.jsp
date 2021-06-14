<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="zh-cmn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="${ctx}/"/>
    <link rel="stylesheet" href="webjars/css/bootstrap.css">
    <link rel="stylesheet" href="webjars/css/bootstrap-table.css">
    <link rel="stylesheet" href="webjars/css/sweetalert2.min.css">
    <link rel="stylesheet" href="webjars/css/toastr.css">
    <link rel="stylesheet" href="${ctx}/static/css/font.css">
    <link rel="stylesheet" href="${ctx}/static/css/xadmin.css">
    <link rel="stylesheet" href="${ctx}/static/css/swuper.css">
    <script type="text/javascript" src="${ctx}/static/js/bao1.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/bao2.js"></script>
    <script type="text/javascript" src="${ctx}/static/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/static/js/xadmin.js"></script>
    <script src="webjars/js/jquery-1.12.4.js"></script>
    <script src="webjars/js/bootstrap.js"></script>
    <script src="webjars/js/bootstrap-table.js"></script>
    <script src="webjars/js/bootstrap-table-zh-CN.js"></script>
    <script src="webjars/js/sweetalert2.min.js"></script>
    <script src="webjars/js/toastr.js"></script>
</head>
<body>
<div class="login-box" style="margin-top: 10%;height: auto;width: 22%;">
        <form class="layui-form layui-form-pane" action="login" method="post" style="padding: 20px;">
        <h3 style="margin-left: 30px">手机进销管理系统</h3>
        <label class="login-title">帐&nbsp;号</label>
        <div class="layui-form-item">

            <div class="layui-input-inline login-inline">
               <input type="text" name="username" lay-verify="required" placeholder="请输入你的帐号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <label class="login-title" >密&nbsp;码</label>
        <div class="layui-form-item ">
            <div class="layui-input-inline login-inline">
                <input type="password" name="password" lay-verify="required" placeholder="请输入你的密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="form-actions">
            <button class="btn btn-warning pull-right" lay-submit lay-filter="login"  type="submit">登&nbsp;&nbsp;录</button>
            <div class="forgot"><a href="#" class="forgot">忘记帐号或者密码</a></div>
        </div>
    </form>
</div>


</body>
<script>
    $(function  () {
        layui.use('form', function(){
            var form = layui.form();

            //监听提交
            form.on('submit(login)', function(data){

                var name=$("input[name='username']").val();
                var pwd=$("input[name='password']").val();
                $.ajax({
                    "url":"/login/denglu",
                    "type":"post",
                    "data":{"name":name,"pwd":pwd},
                    "success":function(data){
                        if(data.trim()=='true'){
                            layer.msg(JSON.stringify("登录成功"),function(){
                                location.href="common/index/index";
                            });
                        }else{
                            layer.msg(JSON.stringify("登录失败"),function(){

                            });
                        }
                    }
                });
                return false;
            });
        });
    });

</script>
</html>
