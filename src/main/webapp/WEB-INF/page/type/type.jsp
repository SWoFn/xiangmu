<%@page pageEncoding="UTF-8" %>
<!-- 顶部 -->
<%@include file="/comm/header.jsp"%>

<div class="container" style="margin-left: 10px;margin-top: 10px">
    <div class="row " style="margin-top: 20px;margin-left: 10px" >
        <form class="form-inline " style="height: 30px;" id="biao1" >
            <div class="form-group col-md-1" style="margin-right: 10px">
                <button type="button" class="btn btn-default" onclick="typeadd()"><i class="glyphicon glyphicon-plus"></i>添加类型</button>
            </div>
            <div class="form-group col-md-1" style="margin-right: 10px">
                <button type="button" class="btn btn-default" onclick="batchDel()"><i class="glyphicon glyphicon-trash"></i>批量删除</button>
            </div>
        </form>
   </div>
</div>
    <div class="row" style="    margin-top: 6px;
    margin-left: 12px;
    width: 98%;
    height: 300px;">
    <table id="table"
           data-toggle="table"
           data-url="type/list"
           data-striped="true"
           data-pagination="true"
           data-side-pagination="server"
           data-page-size="5"
           data-page-list="[5,10,15]"
           data-tolbar=".tolbar"
           style="background-color: rgba(0,0,0,0)">
        <thead>
        <tr>
            <th data-checkbox="true">
            </th>
            <th data-field="id">编号</th>
            <th data-field="shoptypeName">商品类型</th>
            <th data-field="count">商品数量</th>
            <th data-field="name">修改人</th>
            <th data-field="shopLastupdate">修改时间</th>
            <th data-formatter="de" data-events="eve">操作</th>
        </tr>
        </thead>
    </table>
        <form  id="typeadd" class="form-horizontal">
            <div class="form-group">
                    <label class="control-label col-md-4">类型名称：</label>
                    <div class="col-md-8">
                        <input type="text" name="shoptypeName" class="form-control"/>
                    </div>
            </div>
        </form>
        <form  id="typeupdate" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-md-4">类型名称：</label>
                <div class="col-md-8">
                    <input type="hidden" name="id">
                    <input type="text" name="shoptypeName" class="form-control"/>
                </div>
            </div>
        </form>
    </div>

</div>
</body>
<script>
    var eve={
        'click .ev':function (e,value,row,index) {
            $("#typeupdate input[name=id]").val(row.id);
            $("#typeupdate input[name=shoptypeName]").val(row.shoptypeName);
        }}
    function de() {
        var aa=" <button type=\"button\" class=\"btn btn-large ev\" style=\"width: 41% ;\" onclick='typeupdate()'><i class=\"glyphicon glyphicon-pencil\"></i>修改</button>";
        return aa;
    }
    function type(){
        $("#typeadd").dialog({
            title:"添加类型",
            btnName:"添加",
            btnBind:function(){
                var shoptype=$("#typeadd").serialize();
                $.post(ctx+"type/add",shoptype,function(msg){
                    toastr.warning(msg);
                    $("#table").bootstrapTable("refresh");
                    $("#typeadd").dialog("close");
                },"text");
            }
        });
        $("#typeupdate").dialog({
            title:"修改类型",
            btnName:"修改",
            btnBind:function(){
                var shoptype=$("#typeupdate").serialize();
                $.post(ctx+"type/update",shoptype,function(msg){
                    toastr.warning(msg);
                    $("#table").bootstrapTable("refresh");
                    $("#typeupdate").dialog("close");
                },"text");
            }
        });
    }
    function typeadd() {
        $("#typeadd")[0].reset();
        $("#typeadd").dialog("open");
    }
    function typeupdate() {
        $("#typeupdate")[0].reset();
        $("#typeupdate").dialog("open");
    }

    $(function(){
        $.fn.dialog=function(options){
            if(typeof(options)=="object"){
                var param={
                    title:"",
                    btnName:"确定",
                    btnBind:null
                };
                for(var prop in param){
                    param[prop]=options[prop]||param[prop];
                }
                var html= `<div class="modal fade" >
                <div class="modal-dialog " style="width: fit-content;background-color: #54364a; width: 324px;height: 150px;color: black">
                <div class="modal-content" >
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary"></button>
                </div>
                </div>
                </div>
                </div>`;
                var $modal=$(html);
                $modal.find(".modal-title").html(param.title);

                if(param.btnBind==null){
                    $modal.find(":button:last").remove();
                }else{
                    $modal.find(":button:last").html(param.btnName);
                    $modal.find(":button:last").off("click").on("click",param.btnBind);
                }
                $modal.find(".modal-body").append(this);
                $("body").append($modal);
            }else if(typeof(options)=="string"){
                if("open"==options){
                    this.parents(".modal").modal("show");
                }else if("close"==options){
                    this.parents(".modal").modal("hide");
                }
            }
        }
    });
    $(document).ready(function(){
        type();
    });
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
                $.post("type/del",pp,function(msg){
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
</html>
