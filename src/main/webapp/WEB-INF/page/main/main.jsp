<%@page pageEncoding="UTF-8" %>
    <div class="page-content">
        <div class="content">
            <!-- 右侧内容框架，更改从这里开始 -->
            <blockquote class="layui-elem-quote">
                注意：手机进销管理系统！请勿随意删除，修改数据。谢谢合作。
            </blockquote>
            <blockquote class="layui-elem-quote">
                欢迎使用手机进销管理系统！<span class="f-14">工作人员：组长-郝磊</span>&nbsp;&nbsp;&nbsp;联系电话：119;&nbsp;&nbsp;&nbsp;&nbsp;组员-郑建华</span>&nbsp;&nbsp;&nbsp;联系电话：110;&nbsp;&nbsp;&nbsp;组员-陈涵冲</span>&nbsp;&nbsp;&nbsp;联系电话：120;
            </blockquote>
            <fieldset class="layui-elem-field layui-field-title site-title">
                <legend><a name="default">欢迎登陆~</a></legend>
            </fieldset>
            <div class="container" style="height: 200px; width: 40%; margin-left: 248px">
                <br>
                <ul style="margin-left: 30px">
                    <li><label  style="width: 100px; text-align: right; margin-right:20px; margin-top: 10px; margin-bottom: 10px">用户名：</label>${admin.name}</li>
                    <li><label style="width: 100px; text-align: right;margin-right:20px;margin-bottom: 10px">邮箱：</label>${admin.email}</li>
                    <li><label style="width: 100px; text-align: right;margin-right:20px;margin-bottom: 10px">最近登录：</label>${admin.loginTime}</li>
                    <li><label style="width: 100px;text-align: right;margin-right:20px;margin-bottom: 10px">创建时间：</label>${admin.createTime}</li>
                    <li><label style="width: 100px; text-align: right;margin-right:20px">管理级别：</label>${admin.content==0 ? '超级管理员':'普通管理员'}</li>
                </ul>
            </div>

        </div>
    </div>


</body>
</html>