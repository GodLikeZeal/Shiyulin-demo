<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/11/11
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="myicon.ico" type="image/png">

    <title>雨霖铃运维管理平台</title>

    <!--bootstrap-table-->
    <link rel="stylesheet" href="js/bootstrap-tables/css/bootstrap-table.css" />

    <!--file upload-->
    <link rel="stylesheet" type="text/css" href="css/bootstrap-fileupload.min.css" />

    <!--jquery-confirm-->
    <link rel="stylesheet" href="css/jquery-confirm.css" />

    <!--loaders-->
    <link rel="stylesheet" href="css/loaders.css" />

    <!--animate-->
    <link rel="stylesheet" href="css/animate.min.css"/>


    <!--tags input-->
    <link rel="stylesheet" type="text/css" href="js/jquery-tags-input/jquery.tagsinput.css" />

    <!--common-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">


    <style type="text/css">
        .isotope img{
            width: 22%;
            height:12%;
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            transform: scale(1);
            -webkit-transition: transform .75s ;
            -moz-transition: transform .75s ;
            transition: transform .75s ;
        }
        .isotope img:hover{
            -webkit-transform: scale(1.05);
            -moz-transform: scale(1.05);
            transform: scale(1.05);
            -webkit-transition: transform .75s ;
            -moz-transition: transform .75s ;
            transition: transform .75s ;
        }
        .item{
            color: #7A7676;
            background-color : transparent;
            transition: background-color .5s ease-in .1s,color .5s ease-in .1s;
        }
        .item:hover{

            background-color : #65CEA7;
            transition: background-color .5s ease-in .1s;
        }
        .item:hover p{
            color: #FFFFFF;
            transition: color .5s ease-in ;
        }
    </style>



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.html"><img src="images/logo1.jpg" alt="" style="height: 40px;float: left;"/>
                <div style="float: left;margin-top: -8px;padding-left: 8px;">
                    <h6>运 维 管 理 平 台</h6>
                    <h6>Shiyulin_Explorer</h6>
                </div>
            </a>
        </div>

        <div class="logo-icon text-center">
            <a href="index"><img src="images/logo1.jpg" alt="" style="width: 40px;"></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img class="img-circle" alt="" src="img/158741229739166156.jpg" class="media-object" style="width: 45px;float: left;">
                    <div class="media-body">
                        <h4><a href="#"><%=session.getAttribute("username")%></a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">账户信息</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="<%=request.getContextPath()%>/person/<%=session.getAttribute("userid")%>"><i class="fa fa-user"></i> <span>个人主页</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>设置</span></a></li>
                    <li><a href="signout"><i class="fa fa-sign-out"></i> <span>注销</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="index.html"><i class="fa fa-home"></i> <span>桌面</span></a>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-legal"></i> <span>权限管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="blank_page.html"> 用户管理</a></li>
                        <li><a href="boxed_view.html"> 角色管理</a></li>
                        <li><a href="leftmenu_collapsed_view.html"> 功能定义</a></li>

                    </ul>
                </li>

                <li class="menu-list nav-active"><a href=""><i class="fa fa-folder"></i> <span>文件模块管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="file_up"> 文件上传</a></li>
                        <li class="active"><a href="fileview"> 文件预览</a></li>
                        <li><a href="file_command"> 编辑文件信息</a></li>

                    </ul>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-pencil-square-o"></i> <span>朋友圈管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="form_layouts.html"> 朋友圈布局管理</a></li>
                        <li><a href="form_advanced_components.html"> 朋友圈过滤</a></li>
                        <li><a href="form_wizard.html"> 不文明字设置</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-male"></i> <span>用户管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="flot_chart.html"> 黑名单用户设置 </a></li>
                        <li><a href="morris.html"> 禁言用户设置</a></li>

                    </ul>
                </li>
                <li class="menu-list"><a href="#"><i class="fa fa-gear"></i> <span>常规设置</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="basic_table.html"> 系统变量设置</a></li>
                        <li><a href="dynamic_table.html"> 数据字典配置</a></li>
                        <li><a href="responsive_table.html"> 页面路径配置</a></li>

                    </ul>
                </li>

                <li class="menu-list"><a href="#"><i class="fa fa-pencil"></i> <span>帮助文档</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="google_map.html"> 帮助文档v1.0</a></li>

                    </ul>
                </li>

                <li><a href="signout"><i class="fa fa-sign-in"></i> <span>退出登录</span></a></li>

            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->

    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->

            <!--search start-->
            <form class="searchform" action="" method="post">
                <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
            </form>
            <!--search end-->


            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img class="img-circle" src="img/158741229739166156.jpg" alt="" />
                            <%=session.getAttribute("username")%>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="<%=request.getContextPath()%>/person/<%=session.getAttribute("userid")%>"><i class="fa fa-user"></i>  个人主页</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i>  设置</a></li>
                            <li><a href="signout"><i class="fa fa-sign-out"></i> 注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->



        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col col-lg-12">
                    <section class="panel">
                        <header class="panel-heading dark-tab custom-tab">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#std_view"  data-toggle="tab">列表视图</a>
                                </li>
                                <li class="">
                                    <a href="#flow_view" data-toggle="tab">瀑布流</a>
                                </li>
                            </ul>

                        </header>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="std_view">
                                    <ul id="filters" class="media-filter">
                                        <li><a href="#" data-filter="*"> 全部</a></li>
                                        <li><a href="#" data-filter=".picture">图片</a></li>
                                        <li><a href="#" data-filter=".video">视频</a></li>
                                        <li><a href="#" data-filter=".music">音乐</a></li>
                                        <li><a href="#" data-filter=".other">其他</a></li>
                                    </ul>

                                    <div class="btn-group pull-right">
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i> Select all</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-folder-open"></i> Add New</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-upload"></i> Upload New File</button>
                                    </div>



                                    <div id="gallery" class="media-gal">
                                        <%--<div class="images item " >--%>
                                        <%--<a>--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                        <%--</a>--%>
                                        <%--<p>img01.jpg </p>--%>
                                        <%--</div>--%>

                                    </div>

                                    <%--<div class="col-md-12 text-center clearfix">--%>
                                    <%--<ul class="pagination">--%>
                                    <%--<li><a href="#">«</a></li>--%>
                                    <%--<li><a href="#">1</a></li>--%>
                                    <%--<li><a href="#">2</a></li>--%>
                                    <%--<li><a href="#">3</a></li>--%>
                                    <%--<li><a href="#">4</a></li>--%>
                                    <%--<li><a href="#">5</a></li>--%>
                                    <%--<li><a href="#">»</a></li>--%>
                                    <%--</ul>--%>
                                    <%--</div>--%>
                                    <div class="col-md-12 text-center clearfix">
                                        <ul class="pagination" id="pagination">
                                        </ul>
                                        <input type="hidden" id="PageCount"  />
                                        <input type="hidden" id="PageSize"  value="12" />
                                        <input type="hidden" id="PageNumber"  value="1"/>
                                        <!--设置最多显示的页码数 可以手动设置 默认为7-->
                                        <input type="hidden" id="maxvisiblePages"  value="7" />
                                    </div>

                                </div>
                                <div class="tab-pane" id="flow_view">
                                    <ul id="flow_filters" class="media-filter">
                                        <li><a href="#" data-filter="*"> 全部</a></li>
                                        <li><a href="#" data-filter=".picture">图片</a></li>
                                        <li><a href="#" data-filter=".video">视频</a></li>
                                        <li><a href="#" data-filter=".music">音乐</a></li>
                                        <li><a href="#" data-filter=".other">其他</a></li>
                                    </ul>

                                    <div class="btn-group pull-right">
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-check-square-o"></i> Select all</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-folder-open"></i> Add New</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                        <button type="button" class="btn btn-primary btn-sm"><i class="fa fa-upload"></i> Upload New File</button>
                                    </div>



                                    <div id="flow_gallery" class="media-gal">
                                        <%--<div class="images item " >--%>
                                        <%--<a>--%>
                                        <%--<img src="images/gallery/image1.jpg" alt="" />--%>
                                        <%--</a>--%>
                                        <%--<p>img01.jpg </p>--%>
                                        <%--</div>--%>

                                    </div>
                                </div>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">Edit Media Gallery</h4>
                                        </div>

                                        <div class="modal-body row">

                                            <div class="col-md-5 img-modal">
                                                <img src="images/gallery/image1.jpg" alt="">
                                                <a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit Image</a>
                                                <a href="#" class="btn btn-white btn-sm"><i class="fa fa-eye"></i> View Full Size</a>

                                                <p class="mtop10"><strong>File Name:</strong> img01.jpg</p>
                                                <p><strong>File Type:</strong> jpg</p>
                                                <p><strong>Resolution:</strong> 300x200</p>
                                                <p><strong>Uploaded By:</strong> <a href="#">ThemeBucket</a></p>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label> Name</label>
                                                    <input id="name" value="img01.jpg" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label> Tittle Text</label>
                                                    <input id="title" value="awesome image" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label> Description</label>
                                                    <textarea rows="2" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label> Link URL</label>
                                                    <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                                </div>
                                                <div class="pull-right">
                                                    <button class="btn btn-danger btn-sm" type="button">Delete</button>
                                                    <button class="btn btn-success btn-sm" type="button">Save changes</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- modal -->

                        </div>
                    </section>


                </div>
            </div>
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer>

            <%--<div class="loader">--%>
            <%--<div class="loading">--%>
            <%--<div class="dot"></div>--%>
            <%--<div class="dot"></div>--%>
            <%--<div class="dot"></div>--%>
            <%--<div class="dot"></div>--%>
            <%--<div class="dot"></div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <div class="text-center">
                2016 &copy; All Rights Reserved By Zeal
            </div>
        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!-- Modal -->
<div data-backdrop="true" aria-hidden="true"  aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Model" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">文件信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label text-center" style="width: 10%;float: left;padding-right: 3%">id</label>
                        <div style="width: 40%;float: left;padding-right: 3%">
                            <input class="form-control" readonly type="text" name="id" />
                        </div>
                        <label class=" control-label text-center" style="width: 10%;float: left;padding-right: 3%">名称</label>
                        <div style="width: 40%;float: left;padding-right: 3%">
                            <input class="form-control" type="text" name="name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label text-center" style="width: 10%;float: left;padding-right: 3%;line-height: 200px">介绍</label>
                        <div style="width: 90%;float: left;padding-right: 3%">
                            <textarea type="text" class="form-control"  name="introduction" style="height: 200px;"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button  class="btn btn-success" type="button" onclick="updateaction()">保存</button>
                <button data-dismiss="modal" class="btn btn-primary " type="button">取消</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->





<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/swipebox-master/js/jquery.swipebox.min.js"></script>

<!--bootstrap-table-->
<script src="js/bootstrap-tables/js/bootstrap-table.js"></script>
<script src="js/bootstrap-tables/js/bootstrap-table-zh-CN.js"></script>

<!--tags input-->
<script src="js/jquery-tags-input/jquery.tagsinput.js"></script>

<!--sort js-->
<script src="js/jquery.isotope.js"></script>

<!--分页js-->
<script src="js/jqPaginator.min.js"></script>

<!--弹出层-->
<script src="js/layer/layer.js"></script>

<!--pickers plugins-->
<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script src="js/common.js"></script>

<script type="text/javascript">

    $(document).ready(function(){
        initgallery();
        pagebind("pagination","PageCount","PageSize","PageNumber","maxvisiblePages","gallery");
        initflowview();
    });
    function initgallery(){
        var $container = $('#gallery');
        var iso = $container.isotope({
            itemSelector: '.item',
            layoutMode: 'fitRows',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
        if(iso.length>1){
            $container.isotope({ filter: '.metal' });
        }
        // filter items when filter link is clicked
        $('#filters a').click(function() {
            var selector = $(this).attr('data-filter');
            $container.isotope({filter: selector});
            return false;
        });
    }

    //瀑布流初始化操作
    function initflowview(){

        var $flow_container = $('#flow_gallery');
        $flow_container.isotope({
            itemSelector: '.item',
            layoutMode: 'masonry',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });
        // filter items when filter link is clicked
        $('#flow_filters a').click(function() {
            var selector = $(this).attr('data-filter');
            $flow_container.isotope({filter: selector});
            return false;
        });

        var lastId=0;//记录每一次加载时的最后一条记录id，跟您的排序方式有关。

        var isloading = false;
        $(window).bind("scroll", function () {
            if ($(document).scrollTop() + $(window).height()

                    > $(document).height() - 10 && !isloading) {
                isloading = true;
                getMore();
            }
        });
    }

    function getMore() {
        var url = "";

    }

    //视图分页操作
    function exeData(num, type,pagination,PageCount,PageSize,PageNumber,maxvisiblePages,targetID) {
        loadData(num,PageSize,targetID,PageCount,PageNumber);
        loadpage(pagination,PageCount,PageSize,PageNumber,maxvisiblePages);
        initgallery();
    }
    function loadpage(pagination,PageCount,PageSize,PageNumber,maxvisiblePages,targetID) {
        var myPageCount = parseInt($("#"+PageCount).val());
        var myPageSize = parseInt($("#"+PageSize).val());
        var countindex = myPageCount % myPageSize > 0 ? (myPageCount / myPageSize) + 1 : (myPageCount / myPageSize);
        $("#"+PageNumber).val(countindex);
        $.jqPaginator("#"+pagination, {
            totalPages: parseInt($("#"+PageNumber).val()),
            visiblePages: parseInt($("#"+maxvisiblePages).val()),
            currentPage: 1,
            first: '<li class="first"><a href="javascript:;">首页</a></li>',
            prev: '<li class="prev"><a href="javascript:;"><i class="arrow arrow2"></i>上一页</a></li>',
            next: '<li class="next"><a href="javascript:;">下一页<i class="arrow arrow3"></i></a></li>',
            last: '<li class="last"><a href="javascript:;">末页</a></li>',
            page: '<li class="page"><a href="javascript:;">{{page}}</a></li>',
            onPageChange: function (num, type) {
                if (type == "change") {
                    exeData(num, type,pagination,PageCount,PageSize,PageNumber,maxvisiblePages,targetID);
                }
            }
        });
    }
    function loadData(num,PageSize,targetID,PageCount,PageNumber) {
        //分页加载数据
        var url="myfile";
        var pageNumber=$("#"+PageNumber).val()*1;
        var pagesize=$("#"+PageSize).val()*1;
        var currentpage=num;
        if(currentpage<1){
            currentpage=1;
        }
        $.ajax({
            type:'get',
            async:false,
            url:url,
            data:{pageNumber:currentpage,pageSize:pagesize},
            success:function(result){
                $("#"+PageCount).val(result.total);
                $('#'+targetID).html("");
                $('#'+targetID).isotope( 'destroy' );
                var html="";
                $.each(result.rows,function(k,v){
                    switch (v.fileType){
                        case 0:break;
                        case 1:
                            var fmurl='<%=request.getContextPath()%>/getFm/'+v.id;
                            $.ajax({
                                url:fmurl,
                                type:'get',
                                async:false,
                                success:function(result){
                                    if(result!=""){
                                        html+='<div class="music item" ><a><div class="text-center" style="width:333px;height:208px;padding-top:10px;color:#FFF;background-repeat: repeat;background-size:333px 208px;background-image:url(<%=request.getContextPath()%>'+result+')">'+ v.name+'</div><audio style="width:333px;height:32px;margin-bottom: -5px;" controls="controls"><source src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" /></audio></a></div>';
                                    }else{
                                        html+='<div class="music item" ><a><div class="text-center" style="width:333px;height:208px;padding-top:10px;color:#FFF;background-repeat: repeat;background-size:333px 208px;background-image:url(<%=request.getContextPath()%>/file/picture/26.jpg)">'+ v.name+'</div><audio style="width:333px;height:32px;margin-bottom: -5px;" controls="controls"><source src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" /></audio></a></div>';
                                    }
                                }
                            });
                            break;
                        case 2:
                            var fmurl='<%=request.getContextPath()%>/getFm/'+v.id;
                            $.ajax({
                                url:fmurl,
                                type:'get',
                                async:false,
                                success:function(result){
                                    if(result!=""){
                                        html+='<div class="video item" ><a class="swipebox-video" title="'+ v.name+'" href="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'"><video  style="background-image:url(<%=request.getContextPath()%>'+result+');background-size:cover;height:195px;width:333px;background-repeat: repeat;" width="333" height="195" src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" alt="" /></a><p>'+ v.name+'</p></div>';
                                    }else{
                                        html+='<div class="video item" ><a class="swipebox-video" title="'+ v.name+'" href="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'"><video  style="background-image:url(<%=request.getContextPath()%>/file/picture/3.jpg);background-size:cover;height:195px;width:333px;background-repeat: repeat;" width="333" height="195" src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" alt="" /></a><p>'+ v.name+'</p></div>';
                                    }
                                }
                            });
                            break;
                        case 3:
                            html+='<div class="article item" ><a class="swipebox" title="'+ v.name+'" href="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'"><img src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" alt="" /></a><p>'+ v.name+'</p></div>';
                            break;
                        case 4:
                            html+='<div class="picture item" ><a class="swipebox" title="'+ v.name+'" href="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'"><img src="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'" alt="" /></a><p>'+ v.name+'</p></div>';
                            break;
                        case 5:
                            html+='<div class="other item" ><a class="swipebox" title="'+ v.name+'" href="<%=request.getContextPath()%>'+ v.url+'/'+ v.id+''+ v.suffix+'"><img src="'+ v.url+''+ v.id+''+ v.suffix+'" alt="" /></a><p>'+ v.name+'</p></div>';
                            break;
                    }

                });
                $('#'+targetID).append(html);
                $('#flow_gallery').append(html);
                $( '.swipebox' ).swipebox();
                //$('#'+targetID).isotope('appended',$(html));
                //$('#'+targetID).append( $(html) ).isotope( 'appended', $(html) );

            }
        });


    }

    //分页操作 参数的含义：分页控件id，分页总数,每页显示条数，当前页数，分页最大可见页数，查询绑定数据的id
    function pagebind(pagination,PageCount,PageSize,PageNumber,maxvisiblePages,targetID){
        loadData(1,PageSize,targetID,PageCount,PageNumber);
        loadpage(pagination,PageCount,PageSize,PageNumber,maxvisiblePages,targetID);
    }
</script>


</body>
</html>
