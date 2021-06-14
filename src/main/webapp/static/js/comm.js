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
                <div class="modal-dialog">
                <div class="modal-content" style="color: black">
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