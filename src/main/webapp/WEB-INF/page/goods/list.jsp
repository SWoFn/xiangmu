<%@page pageEncoding="UTF-8" %>
<!-- 顶部 -->
<%@include file="/comm/header.jsp"%>
<!-- 左侧菜单 -->
<!-- 右侧主体开始 -->
<div class="container" style="margin-left: 10px;margin-top: 10px">
    <div class="row " style="margin-top: 20px;margin-left: 10px" >
        <form class="form-inline " style="height: 30px;" id="biao1" >
            <div class="form-group col-md-1" style="margin-right: 10px">
                <select class="form-control" name="roleId" id="type" style="background-color: rgba(0,0,0,0);color: white">
                    <option value="0" style="color: black">全部分类</option>
                    <c:forEach items="${type}" var="t">
                        <option value="${t.id}" style="color: black">${t.shoptypeName}</option>
                    </c:forEach>

                </select>
            </div>
            <div class="form-group col-md-1" style="margin-right: 10px">
                <select class="form-control" name="roleId" id="wh" style="background-color: rgba(0,0,0,0);color: white">
                    <option value="0" style="color: black">全部仓库</option>
                    <c:forEach items="${wh}" var="w">
                        <option value="${wh}" style="color: black">${w.whName}</option>
                    </c:forEach>

                </select>
            </div>
            <div class="form-group col-md-1"  style="margin-right: 10px">
                <select class="form-control" name="roleId"id="start" style="background-color: rgba(0,0,0,0);color: white">
                    <option value="-1"style="color: black">全部状态</option>
                    <option value="0" style="color: black">上架</option>
                    <option value="1" style="color: black">下架</option>

                </select>
            </div>
            <div class="form-group col-md-3">
                <div class="input-group col-md-12">
                    <input type="text" id="name" placeholder="请输入商品名称/编号" class="form-control">
                    <span class="input-group-addon">
                            <a href="javascript:;"id="btn" class="btn-block glyphicon glyphicon-search"></a>
                        </span>
                </div>
            </div>

            <div class="form-group col-md-5 right ">
                <button type="button" class="btn btn-large" style="width: 14% ;margin-right: 20px">导入</button>
                <button type="button" class="btn btn-large" style="width: 14%; margin-right: 20px">导出</button>
                <button type="button" class="btn btn-large" style="width: 14%;background-color: #5cb85c;border: none" onclick="add()">新增</button>
            </div>

        </form>
        <form class="form-inline" style="height: 30px;display: none" id="biao2">
            <div class="form-group " style="margin-right: 30px">
                <button style="border: none; color: white;background-color: rgba(0,0,0,0)"> <i class="glyphicon glyphicon-remove"></i></button>
            </div>
            <span style="margin-right: 30px">已选择<span id="xuanxiang"></span>项</span>
            <span style="margin-right: 30px">|</span>
            <div class="form-group" style="margin-right: 30px">
                <button type="button" onclick="shangjia()" style="border: none; color: white;background-color: rgba(0,0,0,0)"> <i class="glyphicon glyphicon-open-file"></i>上架</button>
            </div>
            <div class="form-group" style="margin-right: 30px">
                <button type="button" onclick="xiajia()" style="border: none; color: white;background-color: rgba(0,0,0,0)"> <i class="glyphicon glyphicon-save-file"></i>下架</button>
            </div>
            <div class="form-group">
                <button  type="button" style="border: none; color: white;background-color: rgba(0,0,0,0)" onclick="batchDel()"> <i class="glyphicon glyphicon-trash"></i>删除</button>
            </div>
        </form>
    </div>
    <div class="row" style="margin-top: 20px;margin-left: -15px;height: 300px">
        <table id="table"
               data-toggle="table"
               data-url="shop/search"
               data-striped="true"
               data-pagination="true"
               data-side-pagination="server"
               data-page-size="5"
               data-page-list="[5,10,15]"
               data-query-params="query"
        style="background-color: rgba(0,0,0,0)">
            <thead>
                <tr>
                    <th data-checkbox="true">
                    </th>
                    <th data-field="shopTu">图片</th>
                    <th data-field="id" >商品编号</th>
                    <th data-field="shopName">商品名称</th>
                    <th data-field="shopUnit">单位</th>
                    <th data-field="shopBrand">品牌</th>
                    <th data-field="shopState"data-formatter="State">状态</th>
                    <th data-formatter="de" data-events="eve">操作</th>
                </tr>
            </thead>
        </table>
        <form id="add" class="form-horizontal" enctype="multipart/form-data">
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品图片：</label>
                    <div class="col-md-8">
                        <img src="" id="touxiangimg" style="width: 104px;height: 116px">
                        <input type="file" name="file" id="excelFile" class="form-control" onchange="PreviewImage(this)"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5" style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品名称：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopName" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4 right">品牌：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopBrand" class="form-control"/>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品分类：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopType" id="type2" style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${type}" var="t">
                                <option value="${t.id}" style="color: black">${t.shoptypeName}</option>
                            </c:forEach>

                        </select>

                    </div>
                </div>
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">状态：</label>
                    <div class="col-md-8">
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="1" checked/>上架
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="0"/>下架
                        </label>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品单位：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopUnit" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">所在仓库：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopWh" id="type3" style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${wh}" var="t">
                                <option value="${t.id}" style="color: black">${t.whName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">市场价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopRcp" class="form-control"/>
                    </div>
                </div>

                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">成本价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopPrice" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品描述：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopSpec" class="form-control"/>
                    </div>
                </div>
            </div>
        </form>


        <form id="chakan" class="form-horizontal" enctype="multipart/form-data">
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品图片：</label>
                    <div class="col-md-8">
                        <img src="" name="tu" style="width: 104px;height: 116px">
                        <input type="file" name="file" class="form-control" onchange="PreviewImage(this)"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品名称：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopName" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4 right">品牌：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopBrand" class="form-control"/>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品分类：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopType" style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${type}" var="t">
                                <option value="${t.id}" style="color: black">${t.shoptypeName}</option>
                            </c:forEach>

                        </select>

                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">状态：</label>
                    <div class="col-md-8">
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="1" checked/>上架
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="0"/>下架
                        </label>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品单位：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopUnit" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">所在仓库：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopWh"  style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${wh}" var="t">
                                <option value="${t.id}" style="color: black">${t.whName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">市场价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopRcp" class="form-control"/>
                    </div>
                </div>

                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">成本价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopPrice" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品描述：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopSpec" class="form-control"/>
                    </div>
                </div>
            </div>
        </form>
        <form id="update" class="form-horizontal" enctype="multipart/form-data">
            <div class="row">
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">商品图片：</label>
                    <div class="col-md-8">
                        <img src=""  style="width: 104px;height: 116px">
                        <input type="file" name="file"  class="form-control" onchange="PreviewImage(this)"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品名称：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopName" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4 right">品牌：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopBrand" class="form-control"/>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品分类：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopType"  style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${type}" var="t">
                                <option value="${t.id}" style="color: black">${t.shoptypeName}</option>
                            </c:forEach>

                        </select>

                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">状态：</label>
                    <div class="col-md-8">
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="1" checked/>上架
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="shopState" value="0"/>下架
                        </label>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品单位：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopUnit" class="form-control"/>
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">所在仓库：</label>
                    <div class="col-md-8">
                        <select class="form-control" name="shopWh"  style="background-color: rgba(0,0,0,0);color: white">
                            <c:forEach items="${wh}" var="t">
                                <option value="${t.id}" style="color: black">${t.whName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">市场价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopRcp" class="form-control"/>
                    </div>
                </div>

                <div class="form-group col-md-5">
                    <label class="control-label col-md-4">成本价格：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopPrice" class="form-control"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-5"style="margin-left: 63px;">
                    <label class="control-label col-md-4">商品描述：</label>
                    <div class="col-md-8">
                        <input type="text" name="shopSpec" class="form-control"/>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>



</body>
<script src="${ctx}/static/js/common.js"></script>
<script>
    var type;
    var start;
    var wh;
    var sname;
    var ii=0;
    var xuan=0;
    $(document).ready(function(){
        initAdd();
    });
    function  State(value,row,index) {
        alert(row.shopState);
        return row.shopState==0?"上架":"下架";
    }
    function initAdd(){
        $("#add").dialog({
            title:"添加商品",
            btnName:"添加",
            btnBind:function(){
                var param=$("#add").serialize();
                $.post(ctx+"shop/shopadd",param,function(msg){
                    toastr.warning(msg);
                    $("#table").bootstrapTable("refresh");
                    $("#add").dialog("close");
                },"text");
            }
        });
        $("#chakan").dialog({
            title:"查看商品",
            btnName:"确定",
        });$("#update").dialog({
            title:"修改商品",
            btnName:"修改",
            btnBind:function(){
                var param=$("#update").serialize();
                $.post(ctx+"shop/shopupdate",param,function(msg){
                    toastr.warning(msg);
                    $("#table").bootstrapTable("refresh");
                    $("#add").dialog("close");
                },"text");
            }
        });

    }
    function de(){
        var aa=" <button type=\"button\" class=\"btn btn-large ev\" style=\"width: 18% ;\" onclick='chakan()'>查看</button>";
        var bb=" <button type=\"button\" class=\"btn btn-large ee\" style=\"width: 18% ;\" onclick='update()'>修改</button>";
        return aa+"&nbsp;"+bb;
    }

    $("#table").on("ifClicked",function (event) {
        if($(this).attr("checked",true)){
            alert("13");
            $("#biao1").css("display","none");
            $("#biao2").css("display","block");
        }

    })
    $("#table").bootstrapTable({
        onCheckAll:function (row) {
            $("#biao1").css("display","none");
            $("#biao2").css("display","block");
            xuan=5;
            $("#xuanxiang").html(xuan);
        }, onUncheckAll:function (row) {
            xuan=0;
            $("#biao1").css("display","block");
            $("#biao2").css("display","none");
            $("#xuanxiang").html(xuan);
        },
        onCheck:function (row) {
            xuan++;
            $("#biao1").css("display","none");
            $("#biao2").css("display","block");
            $("#xuanxiang").html(xuan);
        },
        onUncheck:function (row) {
            xuan--;
            if(xuan==0){
                $("#biao1").css("display","block");
                $("#biao2").css("display","none");
            }
            $("#xuanxiang").html(xuan);
        }

    })
    $("#type").change(function () {
        type=$("#type").val();
        ii=1;
        $("table").bootstrapTable("refresh");
    })
    $("#wh").change(function () {
        wh=$("#wh").val();
        ii=1;
        $("table").bootstrapTable("refresh");
    })
    $("#start").change(function () {
        start=$("#start").val();
        ii=1;
        $("table").bootstrapTable("refresh");
    })
    function query(params) {
        var cname=$("#name").val();
        var offset=0;
        var limit=5;
        if(cname==sname||ii==1){
            offset=params.offset;
            limit=params.limit;
            ii=0;
        }

        var tem={
            offset:offset,
            limit:limit,
            name:$("#name").val(),
            start:start,
            type:type,
            wh:wh
        };

        return tem;
    }
    $("#btn").click(function () {
        sname=$("#name").val();
        $("table").bootstrapTable("refresh");
    })

    //批量删除
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
                $.post("shop/shopdel",pp,function(msg){
                    toastr.info(msg);
                    $("table").bootstrapTable("refresh");
                    $("#biao1").css("display","block");
                    $("#biao2").css("display","none");
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
    function shangjia() {
        var arry = $("table").bootstrapTable("getSelections");
        if(arry.length>0){
            var pp = $(arry).map(function () {
                return "ids=" + this.id
            }).get().join("&")
            swal({
                title:"确定上架吗",
                text:"该操作不可逆请慎重",
                type:"warning",
                showConfirmButton:"true",
                showCancelButton:"true",
                confirmButtonText:"确定",
                cancelButtonText:"取消",
            }).then(function () {
                $.post("shop/shangjia",pp,function(msg){
                    toastr.info(msg);
                    $("table").bootstrapTable("refresh");
                    $("#biao1").css("display","block");
                    $("#biao2").css("display","none");
                },"text");
            })
        }else{
            swal({
                title:"上架操作",
                text:"请选择下架对象",
                type:"warning",
                showConfirmButton:"true",

                confirmButtonText:"确定",


            })
        }
    }
    function xiajia() {
        var arry = $("table").bootstrapTable("getSelections");
        if(arry.length>0){
            var pp = $(arry).map(function () {
                return "ids=" + this.id
            }).get().join("&")
            swal({
                title:"确定下架吗？",
                text:"该操作不可逆请慎重",
                type:"warning",
                showConfirmButton:"true",
                showCancelButton:"true",
                confirmButtonText:"确定",
                cancelButtonText:"取消",
            }).then(function () {
                $.post("shop/xiajia",pp,function(msg){
                    toastr.info(msg);
                    $("table").bootstrapTable("refresh");
                    $("#biao1").css("display","block");
                    $("#biao2").css("display","none");
                },"text");
            })
        }else{
            swal({
                title:"下架操作",
                text:"请选择下架对象",
                type:"warning",
                showConfirmButton:"true",

                confirmButtonText:"确定",


            })
        }
    }
    function PreviewImage(imgFile)
    {
        var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;
        if(!pattern.test(imgFile.value))
        {
            imgFile.focus();
        }
        else
        {
            var path;
            var count;
            if(document.all)//IE
            {
                imgFile.select();
                path = document.selection.createRange().text;
            }
            else//FF
            {
                count=imgFile.files.length;
                for(var i=0;i<count;i++){
                    path = URL.createObjectURL(imgFile.files[i]);
                    $("#touxiangimg").attr("src",path);
                    $("input[name=fff]").val(path);
                }
            }
        }}
    $("#touxiangimg").click(function () {
        $("input[type=file]").trigger("click");
    })
    $(function () {
        $("input[type=file]").css("display","none");

        // $(".check").bind(change,function () {
        //     alert("12312")
        //     var check=$(".check");
        //     var bool=false;
        //     var u=0;
        //
        //     for(var i=0;check.length;i++){
        //         if(check[i].is(checkbox)){
        //             bool=true;
        //             u++;
        //         }
        //     }
        //     if(bool){
        //         $("#biao1").css("display","none");
        //         $("#biao2").css("display","block");
        //         $("#xuanxiang").text(u);
        //     }else {
        //         $("#xuanxiang").text(0);
        //         $("#biao1").css("display","block");
        //         $("#biao2").css("display","none");
        //     }
        // })
    })
</script>
</html>