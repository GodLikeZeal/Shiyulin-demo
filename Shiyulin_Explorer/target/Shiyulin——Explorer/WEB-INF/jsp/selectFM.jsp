<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/12/26
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="myicon.ico" type="image/png">
    <title>selectFM</title>

    <!--file upload-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-fileupload.min.css" />

    <!--common-->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style-responsive.css" rel="stylesheet">
    <style type="text/css">
        .panel-info img{
            width: 23%;
            height:120px;
            margin: 0 1%;
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            transform: scale(1);
            -webkit-transition: transform .75s ;
            -moz-transition: transform .75s ;
            transition: transform .75s ;
        }
        .panel-info img:hover{
            -webkit-transform: scale(1.15);
            -moz-transform: scale(1.15);
            transform: scale(1.15);
            -webkit-transition: transform .75s ;
            -moz-transition: transform .75s ;
            transition: transform .75s ;
        }
    </style>
</head>
<body>
<div class="main-content">
  <div class="wrapper">
    <div class="row">
            <div class="col-md-12">
                <form id="picform">
                <div class="fileupload fileupload-new text-center" data-provides="fileupload">
                    <div class="fileupload-new thumbnail" style="width: 333px; height: 200px;">
                        <img src="" alt="" />
                    </div>
                    <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 333px; max-height: 200px; line-height: 20px;"></div>
                    <div>
                       <span class="btn btn-default btn-file">
                       <span class="fileupload-new"><i class="fa fa-paper-clip"></i> 选择本地</span>
                       <span class="fileupload-exists"><i class="fa fa-undo"></i> 修改</span>
                       <input type="file" name="file_pic" class="default" />
                       </span>
                        <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> 移除</a>
                        <a class="btn btn-default" onclick="chosepic()">确定选择</a>
                    </div>
                </div>
                </form>
                <br/>
                <div class="text-center">
                <span class="label label-danger ">注意!</span>
                 <span>
                 附加图像缩略图只支持最新版的Firefox, Chrome, Opera Safari and Internet Explorer 10
                 </span>
                </div>
                <section class="panel">
                    <div class="panel-heading">
                        <h5>服务器图片库中浏览 <a class="btn btn-default" onclick="changepicture();">换一换</a> <img style="height: 50px" src="<%=request.getContextPath()%>/images/lazy.jpg"></h5>
                        <input type="text" hidden="hidden" name="img_id" />
                        <input type="text" hidden="hidden" name="img_url" />
                    </div>
                    <div class="panel-body">
                        <div class="panel-info text-center">
                        </div>
                    </div>
                </section>
            </div>

    </div>
  </div>
</div>
<!-- Placed js at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath()%>/js/swipebox-master/js/jquery.swipebox.min.js"></script>
<script src="<%=request.getContextPath()%>/js/sweetalert/js/sweetalert.min.js"></script>

<!--file upload-->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-fileupload.min.js"></script>

<!--common scripts for all pages-->
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>

<script src="<%=request.getContextPath()%>/js/common.js"></script>


<script type="text/javascript">


    //初始化随机加载4张图片
    function initpicture(){
        var url='<%=request.getContextPath()%>/randomgetpicture/4';
        $.ajax( {
            url:url,
            type:'get',
            async:false,
            success:  function(data){
            $('.panel-info').html("");
            $.each(data,function(e,v){
                $('.panel-info').append('<a href="#"><img src="<%=request.getContextPath()%>'+v.pictureUrl+'"><input hidden="hidden" type="text" value="'+ v.id+'" /><span hidden="hidden">'+v.pictureUrl+'</span></a>');
                $('.panel-info a').addClass("animated bounceInLeft");
            });
        }
        });
        $('.panel-info img').on('click',function(){
            $('.fileupload-new img').attr('src',this.src);
            $('input[name="img_id"]').val($(this).parent().find('input').val());
            $('input[name="img_url"]').val($(this).parent().find('span').html());
        });
    }

    //随机换图
    function changepicture(){
        $('.panel-info a').addClass("animated bounceOutRight");
        $('.panel-info a').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
            initpicture();
        });

    }
    //确定选择
    function chosepic(){
        var u=$('#picform .fileupload-new img').attr('src');
        var flag;
        var id=location.pathname.split('/')[location.pathname.split('/').length-1];
        var type=location.pathname.split('/')[location.pathname.split('/').length-2];
        var imgId=$('input[name="img_id"]').val();
        var imgUrl=$('input[name="img_url"]').val();
        if(u==null||u==undefined){
            swal({
                    type: 'warning',
                    title:'操作提示',
                    text:'亲，你还未选择或者上传呢！',
                    showConfirmButton:false,
                    timer:2000
                });
        }else if($('#picform .fileupload-preview img').attr('src')!=null&&$('#picform .fileupload-preview img').attr('src')!=undefined&&$('#picform .fileupload-preview img').attr('src')!=""){
            //上传一张
            flag=1;
            var turl="<%=request.getContextPath()%>/upfmgx";
            var formdata= new FormData($("#picform")[0]);   //创建FormData对象，初始化为form表单中的数据。需要添加其他数据可使用formData.append("property", "value");
            formdata.append("fileType", type);
            formdata.append("fileId", id);
            formdata.append("imgUrl", imgUrl);
            $.ajax({
                type:'post',
                url:turl,
                data:formdata,
                contentType:false,  //必须false才会自动加上正确的Content-Type
                processData:false,   //必须false才会避开jQuery对 formdata 的默认处理
                success:function(result){
                    if(result!="") {
                        if(type=="video"){
                            $('#videoupdateModel',window.parent.document).find('img').attr("src","<%=request.getContextPath()%>/"+result);
                        }else if(type=="music"){
                            $('#musicupdateModel',window.parent.document).find('img').attr("src","<%=request.getContextPath()%>/"+result);
                        }
                        swal({
                                    type: 'success',
                                    title: '操作提示',
                                    text: '设置封面成功！'
                                },
                                function () {

                                    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                                    parent.layer.close(index); //再执行关闭
                                }
                        );
                    }
                },
                error:function(){
                    swal({
                        type: 'error',
                        title:'操作提示',
                        text:'设置封面失败！'
                    });
                }
            });
        }else{
            //库里选择的
            flag=0;
            var turl="<%=request.getContextPath()%>/fmgx";
            $.ajax({
                url:turl,
                type:'post',
                async:true,
                data:{fileType:type,fileId:id,imgId:imgId,imgUrl:imgUrl},
                success:function(msg){
                    if(msg!=""){
                        if(type=="video"){
                            $('#videoupdateModel',window.parent.document).find('img').attr("src","<%=request.getContextPath()%>/"+msg);
                        }else if(type=="music"){
                            $('#musicupdateModel',window.parent.document).find('img').attr("src","<%=request.getContextPath()%>/"+msg);
                        }
                        swal({
                            type: 'success',
                            title:'操作提示',
                            text:'设置封面成功！'},
                            function(){

                                var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                                parent.layer.close(index); //再执行关闭
                            }
                        );
                    }
                }
            });
        }


    }
    $(document).ready(function(){
        initpicture();

    });
</script>
</body>
</html>
