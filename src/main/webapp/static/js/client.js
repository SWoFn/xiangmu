$(document).ready(function(){
initAdd();
initUpdate();
});

    function initAdd(){
        $("#add").dialog({
        title:"添加客户",
        btnName:"添加",
        btnBind:function(){
        var param=$("#add").serialize();
        $.post(ctx+"seller/add",param,function(msg){
        toastr.warning(msg);
        $("#client").bootstrapTable("refresh");
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
$("input[name=clientNum]").val(pwd);

}
function initUpdate() {
$("#upd").dialog({
title:"修改客户信息",
btnName:"修改",
btnBind:function(){
var param=$("#upd").serialize();
$.post(ctx+"seller/update",param,function(msg){
toastr.warning(msg);
$("#client").bootstrapTable("refresh");
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
$("#upd [name=clientNum]").val(row.clientNum);
$("#upd [name=clientName]").val(row.clientName);
$("#upd [name=clientContact]").val(row.clientContact);
$("#upd [name=clientPhone]").val(row.clientPhone);
$("#upd [name=supplierState]").val(row.clientState);
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
            $.post(ctx+"seller/delete","id="+row.id ,function(msg){
                toastr.warning(msg);
                $("#client").bootstrapTable("refresh");
            },"text");
        })
}
}

function search(){
    var params={};
    params.clientNum=$("#search [name=clientNum]").val();
    params.clientName=$("#search [name=clientName]").val();
    $("#client").bootstrapTable("refresh",{query:params});
}
function queryParams(params){
    params.clientNum=$("#search [name=clientNum]").val();
    params.clientName=$("#search [name=clientName]").val();
    return params;
}


