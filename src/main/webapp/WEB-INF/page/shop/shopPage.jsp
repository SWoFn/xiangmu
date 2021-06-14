<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<!-- 顶部 -->
<%@include file="/comm/header.jsp"%>
<!-- 左侧菜单 -->
<div class="wrapper">
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li class="list" current >
                    <a href="${ctx}/main/main/index ">
                        <i class="glyphicon glyphicon-th-list"></i>
                        管理菜单&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-arrow-right"></i>
                    </a>
                </li>
                <li class="list">
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-user"></i>
                        员工管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu opened" >
                        <li>
                            <a href="${ctx}/employee/StaffPage/index">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                员工列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-usd"></i>
                        薪资管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu" >
                        <li>
                            <a href="fenlei.do ">
                                <i class="glyphicon glyphicon-gbp"></i>
                                人员薪资
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-education"></i>
                        招聘管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="houtaishopList.do">
                                <i class="iconfont"></i>
                                招聘列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-book"></i>
                        培训管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="lunbo.sdo">
                                <i class="iconfont"></i>
                                培训计划
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-calendar"></i>
                        人事管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="adminList.do">
                                <i class="iconfont"></i>
                                人事计划
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-cog"></i>
                        系统管理&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="dingdan.do">
                                <i class="glyphicon glyphicon-wrench"></i>
                                系统管理
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-off"></i>
                        退出系统&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-remove"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="panel panel-primary" style="background-color: rgba(0,0,0,0.3);border: none;margin-left: 5px;margin-right: 5px">
        <div class="panel-heading" style="background-color: rgba(0,0,0,0.0);border-bottom-color: #c2c2c2">
            <span class="h3">员工列表</span>

        </div>
        <div class="panel-body">
            <form class="form-inline" action="/Account/list" style="float: left">
                <div class="form-group">
                    公司部门：
                   <select id="depId" class="btn" style="background: white;color: black">
                       <option name="0">--请选择--</option>
                   </select>
                    员工编号：<input type="text" name="id" class="form-control" value="${param.id}">
                    员工姓名：<input type="text" name="name" class="form-control" value="${param.name}">
                    <button class="btn " onclick="searche()"><i class="glyphicon glyphicon-gift">查询</i></button>
                </div>
            </form>
            <div style="display: flex;float: right">
                <button  class="btn btn-success" type="button" onclick="add()"><i class="glyphicon glyphicon-plus"></i> 新增用户</button>
                <button  class="btn btn-danger" type="button" onclick="batchDel()"><i class="glyphicon glyphicon-trash"></i> 批量删除</button>
            </div>
            <table class="table table-bordered"
                   data-toggle="table"
                   data-url="${ctx}/employee/StaffPage"
                   data-pagination="true"
                   data-side-pagination="server"
                   data-page-size="10"
                   style="color: black;background-color:rgba(222,222,222,0.9)"
            >
                <thead>
                    <tr >
                        <th 	data-checkbox="true">

                        </th>
                        <th data-field="id" >职工编号</th>
                        <th data-field="name">职工姓名</th>
                        <th data-field="sex" data-formatter="formatterSex();">职工性别</th>
                        <th data-field="phone">联系方式</th>
                        <th data-field="address">家庭住址</th>
                        <th data-field="biyeYuanxiao">毕业院校</th>
                        <th data-field="depId">所属部门</th>
                        <th data-field="posId">公司职务</th>
                        <th data-field="stateId">职工状态</th>
                        <th data-field="birthday">出生年月</th>
                        <th>操作</th>
                    </tr>
                </thead>


            </table>
        </div>
        </div>
    </div>
</div>
</body>
</html>
