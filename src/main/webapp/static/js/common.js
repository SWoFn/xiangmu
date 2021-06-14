
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
            var html= `<div class="modal fade">
                <div class="modal-dialog " style="width: fit-content;">
                <div class="modal-content" style=" background-color: #54364a; width: 800px;height: 600px">
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

var eve={
    'click .ev':function (e,value,row,index) {
        $("#chakan img").val(row.shopTu);
        $("#chakan input[name=shopName]").val(row.shopName);
        $("#chakan select[name=shopWh]").val(row.shopWh);
        $("#chakan input[name=shopRcp]").val(row.shopRcp);
        $("#chakan input[name=shopBrand]").val(row.shopBrand);
        $("#chakan select[name=shopType]").val(row.shopType);
        $("#chakan input[name=shopState]").val(row.shopState);
        $("#chakan input[name=shopUnit]").val(row.shopUnit);
        $("#chakan input[name=shopPrice]").val(row.shopPrice);
        $("#chakan input[name=shopSpec]").val(row.shopSpec);
    },
    'click .ee':function (e,value,row,index) {
        $("#update img").val(row.shopTu);
        $("#update input[name=shopName]").val(row.shopName);
        $("#update select[name=shopWh]").val(row.shopWh);
        $("#update input[name=shopRcp]").val(row.shopRcp);
        $("#update input[name=shopBrand]").val(row.shopBrand);
        $("#update select[name=shopType]").val(row.shopType);
        $("#update input[name=shopState]").val(row.shopState);
        $("#update input[name=shopUnit]").val(row.shopUnit);
        $("#update input[name=shopPrice]").val(row.shopPrice);
        $("#update input[name=shopSpec]").val(row.shopSpec);
    }
}



function add(){
    $("#add")[0].reset();
    $("#add").dialog("open");
}

function chakan(){
    $("#chakan")[0].reset();
    $("#chakan").dialog("open");
}
function update(){
    $("#update")[0].reset();
    $("#update").dialog("open");
}

//批量删除
