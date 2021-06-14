$(document).ready(function(){
    initAdd();
    initUpdate();
    initSearch();
});

function initAdd(){
    $("#add").dialog({
        title:"添加供应商",
        btnName:"添加",
        btnBind:function(){
            var param=$("#add").serialize();
            $.post(ctx+"supplier/add",param,function(msg){
                toastr.warning(msg);
                $("#supplier").bootstrapTable("refresh");
                $("#add").dialog("close");
            },"text");
        }
    });
}
function add(len){
    len = len || 12;
    var $chars = 'ABCDEFGHIJKLMNOPQRS0123456789';
    var maxPos = $chars.length;
    var pwd = '';
    for (i = 0; i < len; i++) {
        //0~32的整数
        pwd += $chars.charAt(Math.floor(Math.random() * (maxPos+1)));
    }

    $("#add")[0].reset();
    $("#add").dialog("open");
     $("input[name=supplierNum]").val(pwd);

}
function initUpdate() {
    $("#upd").dialog({
        title:"修改供应商",
        btnName:"修改",
        btnBind:function(){
            var param=$("#upd").serialize();
            $.post(ctx+"supplier/update",param,function(msg){
                toastr.warning(msg);
                $("#supplier").bootstrapTable("refresh");
                $("#upd").dialog("close");
            },"text");
        }
    });
}
function update() {
    $("#upd")[0].reset();
    $("#upd").dialog("open");

}

var eve={
    'click .ev':function (e,value,row,index) {
        $("#upd [name=id]").val(row.id);
        $("#upd [name=supplierNum]").val(row.supplierNum);
        $("#upd [name=supplierName]").val(row.supplierName);
        $("#upd [name=supplierContact]").val(row.supplierContact);
        $("#upd [name=supplierPhone]").val(row.supplierPhone);
        $("#upd [name=supplierAddress]").val(row.supplierAddress);
        $("#upd [name=supplierState]").val(row.supplierState);
        $("#upd [name=supplierNote]").val(row.supplierNote);
    },'click .de':function(e,value,row,index){
        swal({
            title:"删除操作",
            text:"该操作不可逆请慎重",
            type:"warning",
            showConfirmButton:"true",
            showCancelButton:"true",
            confirmButtonText:"确定",
            cancelButtonText:"取消",
        }).then(function () {
            $.post(ctx+"supplier/delete","id="+row.id,function(msg){
                toastr.warning(msg);
                $("#supplier").bootstrapTable("refresh");
            },"text");
        })
    }
}
function search(){
    var params={};
    params.supplierNum=$("#search [name=supplierNum]").val();
    params.supplierName=$("#search [name=supplierName]").val();
    $("#supplier").bootstrapTable("refresh",{query:params});
}
function queryParams(params){
    params.supplierNum=$("#search [name=supplierNum]").val();
    params.supplierName=$("#search [name=supplierName]").val();
    return params;
}


