<%@page pageEncoding="UTF-8" %>
<!-- 顶部 -->
<%@include file="/comm/header.jsp"%>
<!-- 左侧菜单 -->
<div class="container">
    <div class="logo"><a href="./index.html"><i class="glyphicon glyphicon-home"></i>&emsp;手机进销管理系统</a></div>
    <div class="open-nav"><i class="iconfont">&#xe699;</i></div>
    <ul class="layui-nav right" lay-filter="" style="margin-right: 100px">
        <li class="layui-nav-item">
            <a href="javascript:;"></a>
            <dl class="layui-nav-child" > <!-- 二级菜单 -->
                <dd><a href="">个人信息</a></dd>
                <dd><a href="admin/login/index">退出</a></dd>
            </dl>
        </li>
    </ul>
</div >
<%@include file="/comm/left.jsp"%>

<div style="height: 800px;">
    <iframe name="content" width="100%" height="100%" scrolling="yes" frameborder="0"></iframe>
</div>
</body>
