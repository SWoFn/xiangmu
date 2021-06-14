<%@page pageEncoding="UTF-8" %>

<div class="wrapper"  >
    <!-- 左侧菜单开始 -->
    <div class="left-nav" >
        <div id="side-nav" >
            <ul id="nav" >
                <li class="list" current >
                    <a href="${ctx}/main/main/index">
                        <i class="glyphicon glyphicon-th-list"></i>
                        首&emsp;&emsp;页&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-arrow-right"></i>
                    </a>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-user"></i>
                        基础设置&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu" >
                        <li>
                            <a href="${ctx}/seller/findNameAndNum/index" target="content">
                                <i class="glyphicon glyphicon-heart"></i>
                                客户列表
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/supplier/findNameAndNum/index" target="content">
                                <i class="glyphicon glyphicon-heart"></i>
                                供应商列表
                            </a>
                        </li>
                        <li>
                            <a href="fenlei.do ">
                                <i class="glyphicon glyphicon-heart"></i>
                                采购手机列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-user"></i>
                        供应商业务&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu" >
                        <li>
                            <a href="fenlei.do ">
                                <i class="glyphicon glyphicon-heart"></i>
                                客户列表
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list">
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-gift"></i>
                        库存业务&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu" >
                        <li class="list">
                            <a href="${ctx}/shop/toshop" target="content">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                商品列表
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/shop/shopPage/index">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                商品库存
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/employee/StaffPage/index">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                商品入库
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/employee/StaffPage/index">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                商品出库
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/employee/StaffPage/index">
                                <i class="glyphicon glyphicon-eye-open"></i>
                                商品调拨
                            </a>
                        </li> <li>
                        <a href="${ctx}/employee/StaffPage/index">
                            <i class="glyphicon glyphicon-eye-open"></i>
                            商品明细
                        </a>
                    </li>
                    </ul>
                </li>

                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon glyphicon-usd"></i>
                        客户业务&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="houtaishopList.do">
                                <i class="glyphicon glyphicon-gbp"></i>
                                商品收款
                            </a>
                        </li>
                        <li>
                            <a href="houtaishopList.do">
                                <i class="glyphicon glyphicon-gbp"></i>
                                商品付款
                            </a>
                        </li>
                        <li>
                        <a href="houtaishopList.do">
                            <i class="glyphicon glyphicon-gbp"></i>
                            收款确认
                        </a>
                         </li>
                        <li>
                            <a href="houtaishopList.do">
                                <i class="glyphicon glyphicon-gbp"></i>
                                退款确认
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-shopping-cart"></i>
                        订&emsp;&emsp;单&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="lunbo.sdo">
                                <i class="glyphicon glyphicon-file"></i>
                                订货详单
                            </a>
                        </li>
                        <li>
                            <a href="lunbo.sdo">
                                <i class="glyphicon glyphicon-file"></i>
                                退货详单
                            </a>
                        </li>
                        <li>
                            <a href="lunbo.sdo">
                                <i class="glyphicon glyphicon-file"></i>
                                订货商品统计（明细）
                            </a>
                        </li>
                        <li>
                            <a href="lunbo.sdo">
                                <i class="glyphicon glyphicon-file"></i>
                                退货商品统计（明细）
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="list" >
                    <a href="javascript:;">
                        <i class="glyphicon glyphicon-list-alt"></i>
                        报&emsp;&emsp;表&emsp;&emsp;&emsp;&emsp;&emsp;
                        <i class="glyphicon glyphicon-triangle-bottom"></i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="adminList.do">
                                <i class="glyphicon glyphicon-tasks"></i>
                                订单统计报表
                            </a>
                        </li>
                        <li>
                            <a href="adminList.do">
                                <i class="glyphicon glyphicon-tasks"></i>
                                地区统计报表
                            </a>
                        </li>
                        <li>
                            <a href="adminList.do">
                                <i class="glyphicon glyphicon-tasks"></i>
                                商品统计报表
                            </a>
                        </li>
                        <li>
                            <a href="adminList.do">
                                <i class="glyphicon glyphicon-tasks"></i>
                                客户统计报表
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

