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

    <!--pickers css-->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-datepicker/css/bootstrap-datepicker.css" />
    <%--<link rel="stylesheet" type="text/css" href="js/bootstrap-datepicker/css/bootstrap-datepicker3.css" />--%>

    <!--tags input-->
    <link rel="stylesheet" type="text/css" href="js/jquery-tags-input/jquery.tagsinput.css" />

    <!--common-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">






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
                    <li><a href="#"><i class="fa fa-user"></i> <span>个人主页</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>设置</span></a></li>
                    <li><a href="signout"><i class="fa fa-sign-out"></i> <span>注销</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li><a href="index"><i class="fa fa-home"></i> <span>桌面</span></a>
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
                        <li><a href="fileview"> 文件预览</a></li>
                        <li class="active"><a href="file_command"> 编辑文件信息</a></li>

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
                            <li><a href="person/<%=session.getAttribute("userid")%>"><i class="fa fa-user"></i>  个人主页</a></li>
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
                        <header class="panel-heading custom-tab dark-tab">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#file_view" data-toggle="tab">文件总览</a>
                                </li>
                                <li class="">
                                    <a href="#music_view" data-toggle="tab">音乐信息</a>
                                </li>
                                <li class="">
                                    <a href="#picture_view" data-toggle="tab">图片信息</a>
                                </li>
                                <li class="">
                                    <a href="#video_view" data-toggle="tab">视频信息</a>
                                </li>
                                <li class="">
                                    <a href="#article_view" data-toggle="tab">文字信息</a>
                                </li>
                            </ul>
                        </header>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="file_view">
                                    <div class="panel panel-info">
                                        <div class="panel-body">
                                            <section class="panel">
                                                <header class="panel-heading">
                                                    <h4 class="panel-title">文件列表</h4>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="adv-table">
                                                        <table id="file_table"  data-toggle="table"  data-classes="table table-hover table-no-bordered" style="table-layout: fixed" data-unique-id="id"  >
                                                            <thead>
                                                            <tr>
                                                                <th data-field="index" data-align="center" data-valign="middle" data-formatter="indexFormatter">序号</th>
                                                                <th data-field="id" data-align="center" data-valign="middle" data-sortable="true">id</th>
                                                                <th data-field="name" data-title="name" data-align="center" data-valign="middle" class="truncate">名称</th>
                                                                <th data-field="fileType" data-title="fileType" data-align="center" data-valign="middle"  data-formatter="fileTypeFormatter">类型</th>
                                                                <th data-field="suffix" data-align="center" data-valign="middle"  data-formatter="suffixFormatter">格式</th>
                                                                <th data-field="size" data-align="center" data-align="center">大小</th>
                                                                <th data-field="introduction" data-title="introduction" data-align="center" data-valign="middle"   class="text-info truncate" >介绍</th>
                                                                <th data-field="upUserid" data-align="center" data-valign="middle">上传者</th>
                                                                <th data-field="upTime" data-align="center" data-valign="middle" data-sortable="true" data-formatter="timeFormatter">更新时间</th>
                                                                <th class="col-xs-2" data-field="action" data-events="actionEvents" data-align="center" data-valign="middle" data-formatter="actionFormatter">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="music_view">
                                    <div class="panel panel-info">
                                        <div class="panel-body">
                                            <section class="panel">
                                                <header class="panel-heading">
                                                    <h4 class="panel-title">音乐列表</h4>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="adv-table">
                                                        <table id="music_table"  data-toggle="table"  data-classes="table table-hover table-no-bordered" style="table-layout: fixed" data-unique-id="id"  >
                                                            <thead>
                                                            <tr>
                                                                <th data-field="index" data-align="center" data-valign="middle" data-formatter="indexFormatter1">序号</th>
                                                                <th data-field="id" data-align="center" data-valign="middle" data-sortable="true">id</th>
                                                                <th data-field="name" data-align="center" class="truncate" data-valign="middle">名称</th>
                                                                <th data-field="size" data-align="center" >大小</th>
                                                                <th data-field="issutime" data-align="center" data-valign="middle" data-formatter="timeFormatter">发行时间</th>
                                                                <th data-field="clickNum" data-align="center" data-valign="middle">点击量</th>
                                                                <th data-field="label" data-align="center" data-valign="middle">标签</th>
                                                                <th data-field="introduction" data-align="center" class="truncate text-info" data-valign="middle">介绍</th>
                                                                <th class="col-xs-2" data-field="action" data-events="actionEvents" data-align="center" data-valign="middle" data-formatter="actionFormatter">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="picture_view">
                                    <div class="panel panel-info">
                                        <div class="panel-body">
                                            <section class="panel">
                                                <header class="panel-heading">
                                                    <h4 class="panel-title">音乐列表</h4>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="adv-table">
                                                        <table id="picture_table"  data-toggle="table"  data-classes="table table-hover table-no-bordered" style="table-layout: fixed" data-unique-id="id"  >
                                                            <thead>
                                                            <tr>
                                                                <th data-field="index" data-align="center" data-valign="middle" data-formatter="indexFormatter2">序号</th>
                                                                <th data-field="id" data-align="center" data-valign="middle" data-sortable="true">id</th>
                                                                <th data-field="name" data-align="center" class="truncate" data-valign="middle">名称</th>
                                                                <th data-field="size" data-align="center" data-valign="middle" >大小</th>
                                                                <th data-field="format" data-align="center" data-valign="middle">格式</th>
                                                                <th data-field="label" data-align="center" data-valign="middle">标签</th>
                                                                <th data-field="introduction" data-align="center" class="truncate text-info" data-valign="middle">介绍</th>
                                                                <th class="col-xs-2" data-field="action" data-events="actionEvents" data-align="center" data-valign="middle" data-formatter="actionFormatter">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="video_view">
                                    <div class="panel panel-info">
                                        <div class="panel-body">
                                            <section class="panel">
                                                <header class="panel-heading">
                                                    <h4 class="panel-title">视频列表</h4>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="adv-table">
                                                        <table id="video_table"  data-toggle="table"  data-classes="table table-hover table-no-bordered" style="table-layout: fixed" data-unique-id="id"  >
                                                            <thead>
                                                            <tr>
                                                                <th data-field="index" data-align="center" data-valign="middle" data-formatter="indexFormatter3">序号</th>
                                                                <th data-field="id" data-align="center" data-valign="middle" data-sortable="true">id</th>
                                                                <th data-field="name" data-align="center" class="truncate" data-valign="middle">名称</th>
                                                                <th data-field="size" data-align="center" >大小</th>
                                                                <th data-field="issuetime" data-align="center" data-valign="middle" data-formatter="timeFormatter">发行时间</th>
                                                                <th data-field="clickNum" data-align="center" data-valign="middle">点击量</th>
                                                                <th data-field="label" data-align="center" data-valign="middle">标签</th>
                                                                <th data-field="introduction" data-align="center" class="truncate text-info" data-valign="middle">介绍</th>
                                                                <th class="col-xs-2" data-field="action" data-events="actionEvents" data-align="center" data-valign="middle" data-formatter="actionFormatter">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="article_view">
                                    <div class="panel panel-info">
                                        <div class="panel-body">
                                            <section class="panel">
                                                <header class="panel-heading">
                                                    <h4 class="panel-title">文章列表</h4>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="adv-table">
                                                        <table id="article_table"  data-toggle="table"  data-classes="table table-hover table-no-bordered" style="table-layout: fixed" data-unique-id="id"  >
                                                            <thead>
                                                            <tr>
                                                                <th data-field="index" data-align="center" data-valign="middle" data-formatter="indexFormatter1">序号</th>
                                                                <th data-field="id" data-align="center" data-valign="middle" data-sortable="true">id</th>
                                                                <th data-field="name" data-align="center" class="truncate" data-valign="middle">名称</th>
                                                                <th data-field="size" data-align="center" >大小</th>
                                                                <th data-field="issutime" data-align="center" data-valign="middle" data-formatter="timeFormatter">发行时间</th>
                                                                <th data-field="clickNum" data-align="center" data-valign="middle">点击量</th>
                                                                <th data-field="label" data-align="center" data-valign="middle">标签</th>
                                                                <th data-field="introduction" data-align="center" class="truncate text-info" data-valign="middle">介绍</th>
                                                                <th class="col-xs-2" data-field="action" data-events="actionEvents" data-align="center" data-valign="middle" data-formatter="actionFormatter">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
    <div class="modal-dialog modal-lg">
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
                <button data-dismiss="modal" class="btn btn-primary" type="button">取消</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->



<!-- pictureModal -->
<div class="modal fade" id="pictureupdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改图片信息</h4>
            </div>

            <div class="modal-body row">

                <div class="col-md-5 img-modal">
                    <img name="picture_url"  alt="">
                    <a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit Image</a>
                    <a href="#" class="btn btn-white btn-sm"><i class="fa fa-eye"></i> View Full Size</a>

                    <p class="mtop10"><strong>File Name:</strong> <span name="file_name"></span></p>
                    <p ><strong>文件格式:</strong><span name="format"> </span></p>
                    <p><strong>文件大小:</strong> <span name="size"> </span></p>
                    <div class="form-group">
                        <label> 标签</label>
                        <input  name="label" type="text" class="tags "  />
                    </div>

                </div>
                <div class="col-md-7">
                    <div class="form-group">
                        <label> 名称</label>
                        <input  name="name"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label> 简介</label>
                        <textarea style="height: 250px" name="introduction" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label> Link URL</label>
                        <input  name="pictureUrl" class="form-control">
                    </div>
                    <div class="pull-right">
                        <button data-dismiss="modal" class="btn btn-warning btn-sm" type="button">返回</button>
                        <button class="btn btn-success btn-sm" type="button">保存修改</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
<!-- modal -->

<!-- videoupdateModal -->
<div class="modal fade" id="videoupdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改视频信息</h4>
            </div>

            <div class="modal-body row">

                <div class="col-md-5 img-modal">
                    <img  name="fm" width="340.83" height="191.7" src="">
                    </img>
                    <a href="#" class="btn btn-white btn-sm" onclick="setImg('video')"><i class="fa fa-pencil"></i> 设置封面</a>
                    <a href="#" class="btn btn-white btn-sm"><i class="fa fa-eye"></i> View Full Size</a>
                    <p class="mtop10"><strong style="width: 40%">文 件 名 :</strong>  <span style="width: 60%" name="file_name"></span></p>
                    <p ><strong style="width: 40%">文件格式:</strong>  <span style="width: 60%" name="suffix"> </span></p>
                    <p ><strong >发行时间:</strong> <input  type="text" class="default-date-picker" name="issuetime"/> </p>
                    <p ><strong >点 击 量 :</strong> <span  name="click_num"> </span></p>
                    <p><strong >分 辨 率 :</strong> <input  type="text"  name="resolution"/></p>
                    <p><strong >文件大小:</strong> <span  name="size"> </span></p>
                    <p class="form-group">
                        <label> 标签</label>
                        <input  name="label" type="text" class="tags "  />
                    </p>

                </div>
                <div class="col-md-7">
                    <div class="form-group">
                        <label> 名称</label>
                        <input  name="name"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label> 出演</label>
                        <input  name="playactor"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label> 简介</label>
                        <textarea style="height: 270px" name="introduction" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label> Link URL</label>
                        <input  name="videoUrl" class="form-control">
                    </div>
                    <div class="pull-right">
                        <button data-dismiss="modal" class="btn btn-danger btn-sm" type="button">返回</button>
                        <button class="btn btn-success btn-sm" type="button">保存修改</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
<!-- modal -->

<!-- Modal -->
<div class="modal fade" id="musicupdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改音乐信息</h4>
            </div>

            <div class="modal-body row">

                <div class="col-md-5 img-modal">
                    <img  name="fm" width="341px" height="192px" src="">
                    </img>
                    <a href="#" class="btn btn-white btn-sm" onclick="setImg('music')"><i class="fa fa-pencil"></i> 设置封面</a>
                    <a href="#" class="btn btn-white btn-sm"><i class="fa fa-eye"></i> View Full Size</a>

                    <p class="mtop10"><strong>File Name:</strong> <span name="file_name"></span></p>

                    <p><strong>发行时间:</strong><input type="text" class="default-date-picker" name="issuetime"/></p>
                    <p ><strong>点击量:</strong><span name="click_num"> </span></p>
                    <p><strong>文件大小:</strong> <span name="size"> </span></p>
                    <div class="form-group">
                        <label> 标签</label>
                        <input  name="label" type="text" class="tags "  />
                    </div>


                </div>
                <div class="col-md-7">
                    <div class="form-group">
                        <label> 名称</label>
                        <input  name="name"  class="form-control">
                    </div>
                    <div class="form-group">
                        <label> 流派</label>
                        <input  name="genre" type="text" class="tags "  />
                    </div>
                    <div class="form-group">
                        <label> 简介</label>
                        <textarea style="height: 140px" name="introduction" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label> Link URL</label>
                        <input  name="musicUrl" class="form-control">
                    </div>
                    <div class="pull-right">
                        <button data-dismiss="modal" class="btn btn-danger btn-sm" type="button">返回</button>
                        <button class="btn btn-success btn-sm" type="button">保存修改</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
<!-- modal -->

<!-- Modal -->
<div data-backdrop="true" aria-hidden="true"  aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="deleteModel" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">删除文件提示</h4>
            </div>
            <div class="modal-body">
                <img src="<%=request.getContextPath()%>/images/delete.jpg">
                <div style="float:right;width: 60%;padding-top:10%;">
                    <input type="text" name="id" hidden="hidden"/>
                <h3 class="text-danger" >酱紫做的话删除后不可恢复，确定要删除 <i class="text-primary"></i> 吗？</h3>
                </div>
            </div>
            <div class="modal-footer">
                <button  class="btn btn-danger" type="button" >删除</button>
                <button data-dismiss="modal" class="btn btn-primary" type="button">取消</button>
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
<script src="js/sweetalert/js/sweetalert.min.js"></script>

<!--bootstrap-table-->
<script src="js/bootstrap-tables/js/bootstrap-table.js"></script>
<script src="js/bootstrap-tables/js/bootstrap-table-zh-CN.js"></script>

<!--tags input-->
<script src="js/jquery-tags-input/jquery.tagsinput.js"></script>

<!--弹出层-->
<script src="js/layer/layer.js"></script>

<!--pickers plugins-->
<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.min.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script src="js/common.js"></script>

<script type="text/javascript">
    var URL="<%=request.getContextPath()%>/myfile";
    var music_URL="<%=request.getContextPath()%>/mymusic";
    var picture_URL="<%=request.getContextPath()%>/mypicture";
    var video_URL="<%=request.getContextPath()%>/myvideo";
    var article_URL="<%=request.getContextPath()%>/myarticle";
    function actionFormatter(value, row, index){
        //通过formatter可以自定义列显示的内容
        // value：当前field的值，即id
        // row：当前行的数据

        var a = '<a href="javascript:void(0);" onclick="tableItems(this,$(this).parent().parent().parent().parent().attr(\'id\'))"><i class="fa fa-edit"></i>修改</a>&nbsp;&nbsp;<a href="javascript:void(0);" onclick="deleteItems(this,$(this).parent().parent().parent().parent().attr(\'id\'))"><i class="fa fa-times-circle"></i>删除</a>';
        return a;
    }
    //编辑界面点击事件
    function tableItems(i,tableid){
        var id=$(i).parent().parent().find('td:eq(1)').html();
        var rowdata=$('#'+tableid).bootstrapTable('getRowByUniqueId', id);
        var fmurl='<%=request.getContextPath()%>/getFm/'+rowdata.fileId;
        //alert(row);
        var model;
        if(tableid.indexOf("file")>=0){
            model="Model";
            $('#'+model+' input[name="id"]').val(rowdata.id);
            $('#'+model+' input[name="name"]').val(rowdata.name);
            $('#'+model+' textarea[name="introduction"]').val(rowdata.introduction);
            $('#'+model+'').modal('toggle');
        }else if(tableid.indexOf("video")>=0){
            model="videoupdateModel";
            $('#'+model+' .btn-success').attr("onclick","videoupdateaction("+rowdata.id+","+rowdata.fileId+")");
            $('#'+model+' input[name="id"]').val(rowdata.id);
            $('#'+model+' span[name="file_name"]').html(rowdata.fileId+rowdata.suffix);
            $('#'+model+' span[name="size"]').html(rowdata.size);
            $('#'+model+' input[name="name"]').val(rowdata.name);
            $('#'+model+' input[name="playactor"]').val(rowdata.playactor);
            $('#'+model+' span[name="suffix"]').html(rowdata.suffix.substring(1));
            $('#'+model+' input[name="issuetime"]').val(new Date(rowdata.issuetime).Format("yyyy-MM-dd"));
            $('#'+model+' input[name="resolution"]').val(rowdata.resolution);
            if(rowdata.label!=null){
                $('#'+model+' input[name="label"]').importTags(rowdata.label);
            }else{
                $('#'+model+' input[name="label"]').importTags('');
            }
            $('#'+model+' input[name="videoUrl"]').val(rowdata.videoUrl);
            $('#'+model+' textarea[name="introduction"]').val(rowdata.introduction);
            $('#'+model+'').modal('toggle');
        }else if(tableid.indexOf("music")>=0){
            model="musicupdateModel";
            $('#'+model+' .btn-success').attr("onclick","musicupdateaction("+rowdata.id+","+rowdata.fileId+")");
            $('#'+model+' span[name="file_name"]').html(rowdata.musicUrl.toString().split('/')[rowdata.musicUrl.toString().split('/').length-1]);
            $('#'+model+' span[name="size"]').html(rowdata.size);
            $('#'+model+' input[name="name"]').val(rowdata.name);
            $('#'+model+' input[name="issuetime"]').val(new Date(rowdata.issutime).Format("yyyy-MM-dd"));
            if(rowdata.label!=null){
                $('#'+model+' input[name="label"]').importTags(rowdata.label);
            }else{
                $('#'+model+' input[name="label"]').importTags('');
            }
            $('#'+model+' input[name="musicUrl"]').val(rowdata.musicUrl);
            $('#'+model+' textarea[name="introduction"]').val(rowdata.introduction);
            $('#'+model+'').modal('toggle');
        }else if(tableid.indexOf("picture")>=0){
            model="pictureupdateModel";
            $('#'+model+' input[name="id"]').val(rowdata.id);
            $('#'+model+' .btn-success').attr("onclick","pictureupdateaction("+rowdata.id+","+rowdata.fileId+")");
            $('#'+model+' span[name="file_name"]').html(rowdata.fileId+'.'+rowdata.format);
            $('#'+model+' img[name="picture_url"]').attr("src",'<%=request.getContextPath()%>'+rowdata.pictureUrl);
            $('#'+model+' span[name="size"]').html(rowdata.size);
            $('#'+model+' input[name="name"]').val(rowdata.name);
            $('#'+model+' span[name="format"]').html(rowdata.format);
            if(rowdata.label!=null){
                $('#'+model+' input[name="label"]').importTags(rowdata.label);
            }else{
                $('#'+model+' input[name="label"]').importTags('');
            }
            $('#'+model+' input[name="pictureUrl"]').val(rowdata.pictureUrl);
            $('#'+model+' textarea[name="introduction"]').val(rowdata.introduction);
            $('#'+model+'').modal('toggle');
        }
        $('#'+model+' img[name="fm"]').attr("src","");
        $.ajax({
            url:fmurl,
            type:'get',
            async:false,
            success:function(result){
                if(result!=""){
                    $('#'+model+' img[name="fm"]').attr("src",'<%=request.getContextPath()%>'+result);
                }
            }
        });

    }
    //删除按钮点击事件
    function deleteItems(i,flag){
        var id=$(i).parent().parent().find('td:eq(1)').html();
        var name=$(i).parent().parent().find('td:eq(2)').html();
        $('#deleteModel  i').html(name);
        $('#deleteModel  input[name="id"]').val(id);
        $('#deleteModel').modal('toggle');
        $('#deleteModel .btn-danger').attr("onclick","deleteaction(\'"+flag+"\')");
    }
    //文件更新服务
    function updateaction(){
        var id=$('#Model input[name="id"]').val().trim();
        var name=$('#Model input[name="name"]').val().trim();
        var introduction=$('#Model textarea[name="introduction"]').val().trim();
        var url="myfile/"+id;
        $.ajax({
            type:'post',
            url:url,
            data:{_method:'put',name:name,introduction:introduction},
            async:true,
            success:function(data){
                if(data>0) {
                    swal({
                        type: 'success',
                        title:'操作提示',
                        text:'保存成功！'
                        },
                        function(){
                            $('#Model').modal('toggle');
                            initTable("file_table",URL);
                        }
                    );
                    //initTable("music_table",music_URL);
                    //initTable("video_table",video_URL);
                    //initTable("picture_table",picture_URL);
                    //alert("success");
                }
                else {
                    swal({
                            type: 'error',
                            title:'操作提示',
                            text:'保存失败！'
                         });
                }
            }
        })
    }
    //音乐更新服务
    function musicupdateaction(id,fileid){
        var name=$('#musicupdateModel input[name="name"]').val().trim();
        var issuetime=$('#musicupdateModel input[name="issuetime"]').val().trim();
        var label=$('#musicupdateModel input[name="label"]').val().trim();
        var introduction=$('#musicupdateModel textarea[name="introduction"]').val().trim();
        var url="mymusic/"+id;
        $.ajax({
            type:'post',
            url:url,
            data:{_method:'put',name:name,issuetime:issuetime,label:label,introduction:introduction,fileId:fileid},
            async:true,
            success:function(data){
                if(data>0) {
                    swal({
                        type: 'success',
                        title:'操作提示',
                        text:'保存成功！',
                        },
                        function(){
                            $('#musicupdateModel').modal('toggle');
                            initTable("music_table",music_URL);
                        }
                    );
                    //initTable("file_table",URL);
                    //alert("success");
                }
            }
        })
    }
    //视频更新服务
    function videoupdateaction(id,fileid){
        var name=$('#videoupdateModel input[name="name"]').val().trim();
        var issuetime=$('#videoupdateModel input[name="issuetime"]').val().trim();
        var playactor=$('#videoupdateModel input[name="playactor"]').val().trim();
        var label=$('#videoupdateModel input[name="label"]').val().trim();
        var introduction=$('#videoupdateModel textarea[name="introduction"]').val().trim();
        var url="myvideo/"+id;
        $.ajax({
            type:'post',
            url:url,
            data:{_method:'put',name:name,playactor:playactor,issuetime:issuetime,label:label,introduction:introduction,fileId:fileid},
            async:true,
            success:function(data){
                if(data>0) {
                    swal({
                                type: 'success',
                                title:'操作提示',
                                text:'保存成功！',
                            },
                            function(){
                                $('#videoupdateModel').modal('toggle');
                                initTable("video_table",video_URL);
                            }
                    );

                    //initTable("file_table",URL);
                    //alert("success");
                }
            }
        })
    }
    //图片更新服务
    function pictureupdateaction(id,fileid){
        var name=$('#pictureupdateModel input[name="name"]').val().trim();
        var label=$('#pictureupdateModel input[name="label"]').val().trim();
        var introduction=$('#pictureupdateModel textarea[name="introduction"]').val().trim();
        var url="mypicture/"+id;
        $.ajax({
            type:'post',
            url:url,
            data:{_method:'put',name:name,label:label,introduction:introduction,fileId:fileid},
            async:true,
            success:function(data){
                if(data>0) {
                    swal({
                                type: 'success',
                                title:'操作提示',
                                text:'保存成功！',
                            },
                            function(){
                                $('#pictureupdateModel').modal('toggle');
                                initTable("picture_table",picture_URL);
                            }
                    );

                    //initTable("file_table",URL);
                    //alert("success");
                }
            }
        })
    }
    //删除服务
    function deleteaction(flag){
        var id=$('#deleteModel input[name="id"]').val().trim();
        var url="";
        var tab_url="";
        var a_url=""
        if(flag.indexOf("file")>=0){
            url="myfile/"+id;
            tab_url="file_table";
            a_url=URL;
        }else if(flag.indexOf("music")>=0){
            url="mymusic/"+id;
            tab_url="music_table";
            a_url=music_URL;
        }else if(flag.indexOf("video")>=0){
            url="myvideo/"+id;
            tab_url="video_table";
            a_url=video_URL;
        }else if(flag.indexOf("picture")>=0){
            url="mypicture/"+id;
            tab_url="picture_table";
            a_url=picture_URL;
        }

        $.ajax({
            type:'post',
            url:url,
            data:{_method:'delete'},
            async:true,
            success:function(data){
                if(data>0) {
                    swal({
                                type: 'success',
                                title:'操作提示',
                                text:'删除成功！',
                            },
                            function(){
                                $('#ComendModel').modal('toggle');
                                initTable(tab_url,a_url);
                            }
                    );
                    //$('#deleteModel').modal('toggle');
                    //initTable("file_table",URL);
                    //alert("success");
                }
            }
        })
    }
    //设置封面
    function setImg(e){
        switch (e){
            case "video":
                var type='video';
                var id_=$('#videoupdateModel span[name="file_name"]').html();
                var id=id_.split('.')[0];
                    layer.open({
                        type:2,
                        area: ['800px', '600px'],
                        content:"<%=request.getContextPath()%>/selectFM/"+type+"/"+id,
                        title:"选择封面"
                    });
                break;
            case "music":
                var type='music';
                var id_=$('#musicupdateModel span[name="file_name"]').html();
                var id=id_.split('.')[0];
                layer.open({
                    type:2,
                    area: ['800px', '600px'],
                    content:"<%=request.getContextPath()%>/selectFM/"+type+"/"+id,
                    title:"选择封面"
                });
                break;
            case "article":
                break;
            case "other":
                break;
        }
    }
    $(document).ready(function(){
        initTable("file_table",URL);
        initTable("music_table",music_URL);
        initTable("picture_table",picture_URL);
        initTable("video_table",video_URL);
        initTable("article_table",article_URL);
        $('.tags').tagsInput({width:'auto'});
        $('.default-date-picker').datepicker({
            todayBtn: true,
            keyboardNavigation: false,
            forceParse: false,
            clearBtn:true,
            todayHighlight:true,
            immediateUpdates:true,
            datesDisabled:[],
            language: "zh-CN",
            autoclose: true,
            format: 'yyyy-mm-dd'
        });
    })
</script>

</body>
</html>
