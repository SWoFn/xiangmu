<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title></title>
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
    <script>
        var ctx="${ctx}/";
    </script>
    <link rel="stylesheet" href="${ctx}/static/css/stylehrm.css">
    <script src="${ctx}/static/js/supplier.js"></script>
</head>
<body style="background-image:url('${ctx}/static/img/i.jpg') ">
<!-- 顶部开始 -->
<div class="container" style="background-color: rgba(0,0,0,0.3)">
    <div class="logo"><a href="./index.html"><i class="glyphicon glyphicon-home"></i>&emsp;手机进销存管理系统</a></div>
    <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
    <ul class="layui-nav right" lay-filter="" style="margin-right: 100px">
        <li class="layui-nav-item">
            <a href="javascript:;"></a>
            <dl class="layui-nav-child" > <!-- 二级菜单 -->
                <dd><a href="">个人信息</a></dd>
                <dd><a href="houtai/Login.jsp">退出</a></dd>
            </dl>
        </li>
    </ul>
</div>
