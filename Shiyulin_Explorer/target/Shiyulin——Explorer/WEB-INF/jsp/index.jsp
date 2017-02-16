<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/10/18
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <!--icheck-->
    <link href="js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/square.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/blue.css" rel="stylesheet">

    <!--dashboard calendar-->
    <link href="css/clndr.css" rel="stylesheet">


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
            <a href="index"><img src="images/logo1.jpg" alt="" style="height: 40px;float: left;">
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
                <li class="active"><a href="index.html"><i class="fa fa-home"></i> <span>桌面</span></a>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-legal"></i> <span>权限管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="blank_page.html"> 用户管理</a></li>
                        <li><a href="boxed_view.html"> 角色管理</a></li>
                        <li><a href="leftmenu_collapsed_view.html"> 功能定义</a></li>

                    </ul>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-folder"></i> <span>文件模块管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="file_up"> 文件上传</a></li>
                        <li><a href="fileview"> 文件预览</a></li>
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
            <form class="searchform" action="#" method="post">
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
            <div class="row states-info">
                <div class="col-md-3">
                    <div class="panel red-bg">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-video-camera"></i>
                                </div>
                                <div class="col-xs-8">
                                    <span class="state-title"> 新 增 视 频 </span>
                                    <h4>232</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel blue-bg">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-tag"></i>
                                </div>
                                <div class="col-xs-8">
                                    <span class="state-title">  新 增 文 章  </span>
                                    <h4>80</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel green-bg">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-picture-o"></i>
                                </div>
                                <div class="col-xs-8">
                                    <span class="state-title">  新 增 图 片  </span>
                                    <h4>5980</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel yellow-bg">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-music"></i>
                                </div>
                                <div class="col-xs-8">
                                    <span class="state-title">  新 增 音 乐  </span>
                                    <h4>100</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <section class="panel">
                        <header class="panel-heading">
                            访 问 动 态
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                        </header>
                        <div class="panel-body">
                            <div id="visitors-chart">
                                <div id="visitors-container" style="width: 100%;height:358px; text-align: center; margin:0 auto;">
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            热 门 视 频
                    		<span class="tools pull-right">
                    			<a href="javascript:;" class="fa fa-chevron-down"></a>
                          <a href="javascript:;" class="fa fa-times"></a>
                    		</span>
                        </header>
                        <div class="panel-body">
                            <div class="dir-info">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img  alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"> </a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img  alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"> </a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img  alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user4.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Its my life</h5>
                                        <span>
                                            <a href="#" class="small"> Bon jovi</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">334</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user1.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Bulet Proof</h5>
                                        <span>
                                            <a href="#" class="small"> Bruno Mars</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">44</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            音 乐 飙 升 榜
                    		<span class="tools pull-right">
                    			<a href="javascript:;" class="fa fa-chevron-down"></a>
                          <a href="javascript:;" class="fa fa-times"></a>
                    		</span>
                        </header>
                        <div class="panel-body">
                            <div class="dir-info">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img  alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            热 搜  图 片
                    		<span class="tools pull-right">
                    			<a href="javascript:;" class="fa fa-chevron-down"></a>
                          <a href="javascript:;" class="fa fa-times"></a>
                    		</span>
                        </header>
                        <div class="panel-body">
                            <div class="dir-info">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5></h5>
                                        <span>
                                            <a href="#" class="small"></a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small"></span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="panel">
                        <header class="panel-heading">
                            热 门 文 章
                    		<span class="tools pull-right">
                    			<a href="javascript:;" class="fa fa-chevron-down"></a>
                          <a href="javascript:;" class="fa fa-times"></a>
                    		</span>
                        </header>
                        <div class="panel-body">
                            <div class="dir-info">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user2.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Wild Awake</h5>
                                        <span>
                                            <a href="#" class="small"> katy Perry</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">434</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user1.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Bulet Proof</h5>
                                        <span>
                                            <a href="#" class="small"> Bruno Mars</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">441</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user3.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Bit it</h5>
                                        <span>
                                            <a href="#" class="small"> Jackson</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">124</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user4.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Its my life</h5>
                                        <span>
                                            <a href="#" class="small"> Bon jovi</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">334</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-3">
                                        <div class="avatar">
                                            <img src="images/photos/user1.png" alt=""/>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <h5>Bulet Proof</h5>
                                        <span>
                                            <a href="#" class="small"> Bruno Mars</a>
                                        </span>
                                    </div>
                                    <div class="col-xs-3">
                                        <a class="dir-like" href="#">
                                            <span class="small">44</span>
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>


        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer>
            2014 &copy; AdminEx by ThemeBucket
        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="js/easypiechart/jquery.easypiechart.js"></script>
<script src="js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="js/sparkline/jquery.sparkline.js"></script>
<script src="js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="js/iCheck/jquery.icheck.js"></script>
<script src="js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>
<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
<script src="js/flot-chart/jquery.flot.selection.js"></script>
<script src="js/flot-chart/jquery.flot.stack.js"></script>
<script src="js/flot-chart/jquery.flot.time.js"></script>
<script src="js/main-chart.js"></script>
<script src="js/sweetalert/js/sweetalert.min.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script type="text/javascript">
    //初始化热门视频，音频，图片以及文章列表
    function initHot(){
        var videourl="getfiveHotVideoInfoList";
        var musicurl="getfiveHotMusicInfoList";
        var pictureurl="getfiveHotPictureInfoList";
        $.ajax({
            url:videourl,
            type:'get',
            async:'true',
            success:function(data){
                $.each(data.rows,function(k,v){
                    $('.panel:eq(5) .row:eq('+k+') img').attr('src','<%=request.getContextPath()%>'+ v.videoUrl);
                    $('.panel:eq(5) .row:eq('+k+') h5').html(v.name);
                    $('.panel:eq(5) .row:eq('+k+') .col-xs-6 span a').html( v.playactor);
                    $('.panel:eq(5) .row:eq('+k+') .dir-like .small').html( v.clickNum);
                });
            }
        });
        $.ajax({
            url:musicurl,
            type:'get',
            async:'true',
            success:function(data){
                $.each(data.rows,function(k,v){
                    $('.panel:eq(6) .row:eq('+k+') img').attr('src','<%=request.getContextPath()%>'+ v.musicUrl);
                    $('.panel:eq(6) .row:eq('+k+') h5').html(v.name);
                    $('.panel:eq(6) .row:eq('+k+') .col-xs-6 span a').html( v.playactor);
                    $('.panel:eq(6) .row:eq('+k+') .dir-like .small').html( v.clickNum);
                });
            }
        });
        $.ajax({
            url:pictureurl,
            type:'get',
            async:'true',
            success:function(data){
                $.each(data.rows,function(k,v){
                    $('.panel:eq(7) .row:eq('+k+') img').attr('src','<%=request.getContextPath()%>'+ v.pictureUrl);
                    $('.panel:eq(7) .row:eq('+k+') h5').html(v.name);
                    $('.panel:eq(7) .row:eq('+k+') .col-xs-6 span a').html( v.playactor);
                    $('.panel:eq(7) .row:eq('+k+') .dir-like .small').html( v.clickNum);
                });
            }
        });
//                swal({
//                            type: 'success',
//                            title:'操作提示',
//                            text:data
//                        }
//                );
    }
    $(document).ready(function(){
        initHot();

    });
</script>

</body>
</html>
