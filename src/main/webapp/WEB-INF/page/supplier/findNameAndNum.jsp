<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<!-- 顶部 -->
<%@include file="/comm/header.jsp"%>
<!-- 左侧菜单 -->
<%@include file="/comm/left.jsp"%>
    <div class="panel panel-primary" style="background-color: rgba(0,0,0,0.3);border: none;margin-left: 5px;margin-right: 5px">
        <div class="panel-heading" style="background-color: rgba(0,0,0,0.0);border-bottom-color: #c2c2c2">
            <span class="h3">供应商列表</span>

        </div>
        <div class="panel-body">
            <form class="form-inline"  style="float: left" id="search">
                <div class="form-group">
                    供应商编号：<input type="text" name="supplierNum" class="form-control">
                    供应商名称：<input type="text" name="supplierName" class="form-control">
                    <button  type="button" class="btn" onclick="search()"><i class="glyphicon glyphicon-gift">查询</i></button>
                </div>
            </form>
            <div style="display: flex;float: right" id="toolbar">
                <button  class="btn btn-success" type="button" onclick="add()"><i class="glyphicon glyphicon-plus"></i> 新增供应商</button>
                <button  class="btn btn-danger" type="button" onclick="batchDel()"><i class="glyphicon glyphicon-trash"></i> 批量删除</button>
            </div>
            <table id="supplier"
                    class="table table-bordered"
                   data-toggle="table"
                   data-url="${ctx}/supplier/findNameAndNum"
                   data-pagination="true"
                   data-side-pagination="server"
                   data-page-size="10"
                   data-page-list="[5,10,15]"
                   style="color: black;background-color:rgba(222,222,222,0.9)"
                   data-query-params="queryParams"
            >
                <thead>
                <tr >
                    <th data-checkbox="true">
                    </th>
                    <th data-field="id" >供应商id</th>
                    <th data-field="supplierNum">供应商编号</th>
                    <th data-field="supplierName">供应商名称</th>
                    <th data-field="supplierMoney">供应商欠款</th>
                    <th data-field="supplierContact">供应商联系人</th>
                    <th data-field="supplierPhone">供应商电话</th>
                    <th data-field="supplierAddress">公司地址</th>
                    <th data-field="supplierState">状态</th>
                    <th data-field="supplierCreatTime">创建时间</th>
                    <th data-formatter="bt" data-events="eve">操作</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    <form id="add" class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-md-3">供应商编号：</label>
        <div class="col-md-8">
            <input type="text" name="supplierNum" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">供应商名称：</label>
        <div class="col-md-8">
            <input type="text" name="supplierName" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">供应商联系人：</label>
        <div class="col-md-8">
            <input type="text" name="supplierContact" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">供应商联系电话：</label>
        <div class="col-md-8">
            <input type="text" name="supplierPhone" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">公司地址：</label>
        <div class="col-md-8">
            <input type="text" name="supplierAddress" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">备注：</label>
        <div class="col-md-8">
            <input type="text" name="supplierNote" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3">供应商状态：</label>
        <div class="col-md-8">
            <label class="radio-inline">
                <input type="radio" name="supplierState" value="0" checked/>启用
            </label>
            <label class="radio-inline">
                <input type="radio" name="supplierState" value="1"/>禁用
            </label>
        </div>
    </div>
</form>
    <form id="upd" class="form-horizontal">
        <input type="hidden" name="id" />
        <div class="form-group">
            <label class="control-label col-md-3">供应商编号：</label>
            <div class="col-md-8">
                <input type="text" name="supplierNum" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">供应商名称：</label>
            <div class="col-md-8">
                <input type="text" name="supplierName" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">供应商联系人：</label>
            <div class="col-md-8">
                <input type="text" name="supplierContact" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">供应商联系电话：</label>
            <div class="col-md-8">
                <input type="text" name="supplierPhone" class="form-control"/>
            </div>
        </div><div class="form-group">
        <label class="control-label col-md-3">公司电话：</label>
        <div class="col-md-8">
            <input type="text" name="supplierZuoji" class="form-control"/>
        </div>
    </div>
        <div class="form-group">
            <label class="control-label col-md-3">公司地址：</label>
            <div class="col-md-8">
                <input type="text" name="supplierAddress" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-3">供应商状态：</label>
            <div class="col-md-8">
                <label class="radio-inline">
                    <input type="radio" name="supplierState" value="0"/>启用
                </label>
                <label class="radio-inline">
                    <input type="radio" name="supplierState" value="1"/>禁用
                </label>
            </div>
        </div>
    </form>
</div>

</div>
</body>

<script>
    function bt() {
        var update="<botton class='btn btn-success ev' onclick='update()'>修改</botton>";
        var del="<botton class='btn btn-danger de'>删除</botton>";
        return update+"&emsp;"+del;
    }

    function batchDel() {
        var arry = $("table").bootstrapTable("getSelections");
        if(arry.length>0){
            var pp = $(arry).map(function () {
                return "ids=" + this.id
            }).get().join("&")
            swal({
                title:"删除操作",
                text:"该操作不可逆请慎重",
                type:"warning",
                showConfirmButton:"true",
                showCancelButton:"true",
                confirmButtonText:"确定",
                cancelButtonText:"取消",
            }).then(function () {
                $.post("supplier/batchDel",pp,function(msg){
                    toastr.info(msg);
                    $("table").bootstrapTable("refresh");
                },"text");
            })
        }else{
            swal({
                title:"删除操作",
                text:"请选择删除对象",
                type:"warning",
                showConfirmButton:"true",
                confirmButtonText:"确定",
            })
        }
    }

</script>
<script type="text/javascript" src="webjars/js/jquery-1.12.4.js"></script>
<script src="webjars/js/bootstrap.js"></script>
<script src="webjars/js/bootstrap-table.js"></script>
<script src="webjars/js/bootstrap-table-zh-CN.js"></script>
<script src="webjars/js/sweetalert2.min.js"></script>
<script src="webjars/js/toastr.js"></script>
<script src="${ctx}/static/js/comm.js"></script>
<script src="${ctx}/static/js/supplier.js"></script>
</html>

