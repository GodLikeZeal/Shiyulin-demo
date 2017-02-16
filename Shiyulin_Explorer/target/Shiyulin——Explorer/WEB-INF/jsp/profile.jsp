<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/12/22
  Time: 14:26
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
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/myicon.ico" type="image/png">

    <title>雨霖铃运维管理平台</title>

    <!--bootstrap-table-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/bootstrap-tables/css/bootstrap-table.css" />

    <!--file upload-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-fileupload.min.css" />

    <!--jquery-confirm-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-confirm.css" />

    <!--loaders-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/loaders.css" />

    <!--animate-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css"/>

    <!--pickers css-->
    <link rel="stylesheet" type="text/css" href="js/bootstrap-datepicker/css/datepicker-custom.css" />

    <!--tags input-->
    <link rel="stylesheet" type="text/css" href="js/jquery-tags-input/jquery.tagsinput.css" />

    <!--common-->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style-responsive.css" rel="stylesheet">






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
            <a href="index.html"><img src="<%=request.getContextPath()%>/images/logo1.jpg" alt="" style="height: 40px;float: left;"/>
                <div style="float: left;margin-top: -8px;padding-left: 8px;">
                    <h6>运 维 管 理 平 台</h6>
                    <h6>Shiyulin_Explorer</h6>
                </div>
            </a>
        </div>

        <div class="logo-icon text-center">
            <a href="index"><img src="<%=request.getContextPath()%>/images/logo1.jpg" alt="" style="width: 40px;"></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img class="img-circle" alt="" src="<%=request.getContextPath()%>/img/158741229739166156.jpg" class="media-object" style="width: 45px;float: left;">
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
                <li><a href="<%=request.getContextPath()%>/index"><i class="fa fa-home"></i> <span>桌面</span></a>
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
                        <li><a href="<%=request.getContextPath()%>/file_up"> 文件上传</a></li>
                        <li><a href="<%=request.getContextPath()%>/fileview"> 文件预览</a></li>
                        <li><a href="<%=request.getContextPath()%>/file_command"> 编辑文件信息</a></li>

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
                            <img class="img-circle" src="<%=request.getContextPath()%>/img/158741229739166156.jpg" alt="" />
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
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-pic text-center">
                                        <img alt="" src="<%=request.getContextPath()%>/img/158741229739166156.jpg">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <ul class="p-info">
                                        <li>
                                            <div class="title">昵称</div>
                                            <div class="desk" title="${user.name}">${user.name}</div>
                                        </li>
                                        <li>
                                            <div class="title">性别</div>
                                            <div class="desk">
                                                <c:if test="${user.sex==1}">
                                                <span class="boy" title="男"></span>
                                                </c:if></div>
                                                <c:if test="${user.sex==2}">
                                                <span class="girl" title="女"></span>
                                                </c:if>
                                        </li>
                                        <li>
                                            <div class="title">情感状态</div>
                                            <div class="desk" title="${user.lovestatus}">${user.lovestatus}</div>
                                        </li>
                                        <li>
                                            <div class="title">学校</div>
                                            <div class="desk" title="BSC. in CSE">BSC. in CSE</div>
                                        </li>
                                        <li>
                                            <div class="title">签名</div>
                                            <div class="desk">${user.signature}</div>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body p-states">
                                    <div class="summary pull-left">
                                        <h4>Total <span>Upload</span></h4>
                                        <span>Video prince</span>
                                        <h3>$ 5,600</h3>
                                    </div>
                                    <div id="expense" class="chart-bar"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body p-states green-box">
                                    <div class="summary pull-left">
                                        <h4>Product <span>refund</span></h4>
                                        <span>Monthly Summary</span>
                                        <h3>160</h3>
                                    </div>
                                    <div id="pro-refund" class="chart-bar"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body p-states">
                                    <div class="summary pull-left">
                                        <h4>Total <span>Earning</span></h4>
                                        <span>Monthly Summary</span>
                                        <h3>$ 51,2600</h3>
                                    </div>
                                    <div id="expense2" class="chart-bar"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <div class="profile-desk">
                                        <h1>john doe</h1>
                                        <span class="designation">PRODUCT DESIGNER (UX / UI / Visual Interaction)</span>
                                        <p>
                                            I have 10 years of experience designing for the web, and specialize in the areas of user interface design, interaction design, visual design and prototyping. I’ve worked with notable startups including Pearl Street Software.
                                        </p>
                                        <a class="btn p-follow-btn pull-left" href="#"> <i class="fa fa-check"></i> Following</a>

                                        <ul class="p-social-link pull-right">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li class="active">
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-google-plus"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <form>
                                    <textarea class="form-control input-lg p-text-area" rows="2" placeholder="Whats in your mind today?"></textarea>
                                </form>
                                <footer class="panel-footer">
                                    <button class="btn btn-post pull-right">Post</button>
                                    <ul class="nav nav-pills p-option">
                                        <li>
                                            <a href="#"><i class="fa fa-user"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-camera"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa  fa-location-arrow"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-meh-o"></i></a>
                                        </li>
                                    </ul>
                                </footer>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <header class="panel-heading">
                                    recent activities
                                    <span class="tools pull-right">
                                        <a class="fa fa-chevron-down" href="javascript:;"></a>
                                        <a class="fa fa-times" href="javascript:;"></a>
                                     </span>
                                </header>
                                <div class="panel-body">
                                    <ul class="activity-list">
                                        <li>
                                            <div class="avatar">
                                                <img src="<%=request.getContextPath()%>/images/photos/user1.png" alt=""/>
                                            </div>
                                            <div class="activity-desk">
                                                <h5><a href="#">Jonathan Smith</a> <span>Uploaded 5 new photos</span></h5>
                                                <p class="text-muted">7 minutes ago near Alaska, USA</p>
                                                <div class="album">
                                                    <a href="#">
                                                        <img alt="" src="<%=request.getContextPath()%>/images/gallery/image1.jpg">
                                                    </a>
                                                    <a href="#">
                                                        <img alt="" src="<%=request.getContextPath()%>/images/gallery/image2.jpg">
                                                    </a>
                                                    <a href="#">
                                                        <img alt="" src="<%=request.getContextPath()%>/images/gallery/image3.jpg">
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="avatar">
                                                <img src="<%=request.getContextPath()%>/images/photos/user2.png" alt=""/>
                                            </div>
                                            <div class="activity-desk">
                                                <h5><a href="#">John Doe</a> <span>Completed the Sight visit.</span></h5>
                                                <p class="text-muted">2 minutes ago near Alaska, USA</p>
                                                <div class="location-map">
                                                    <div id="map-canvas"></div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="avatar">
                                                <img src="<%=request.getContextPath()%>/images/photos/user3.png" alt=""/>
                                            </div>
                                            <div class="activity-desk">

                                                <h5><a href="#">Jonathan Smith</a> <span>attended a meeting with</span>
                                                    <a href="#">John Doe.</a></h5>
                                                <p class="text-muted">2 days ago near Alaska, USA</p>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="avatar">
                                                <img src="<%=request.getContextPath()%>/images/photos/user4.png" alt=""/>
                                            </div>
                                            <div class="activity-desk">

                                                <h5><a href="#">Jonathan Smith</a> <span>completed the task “wireframe design” within the dead line</span></h5>
                                                <p class="text-muted">4 days ago near Alaska, USA</p>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="avatar">
                                                <img src="<%=request.getContextPath()%>/images/photos/user5.png" alt=""/>
                                            </div>
                                            <div class="activity-desk">

                                                <h5><a href="#">Jonathan Smith</a> <span>was absent office due to sickness</span></h5>
                                                <p class="text-muted">4 days ago near Alaska, USA</p>
                                            </div>
                                        </li>


                                    </ul>
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
<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/modernizr.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js"></script>
<script src="<%=request.getContextPath()%>/js/swipebox-master/js/jquery.swipebox.min.js"></script>

<!--bootstrap-table-->
<script src="<%=request.getContextPath()%>/js/bootstrap-tables/js/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-tables/js/bootstrap-table-zh-CN.js"></script>

<!--tags input-->
<script src="<%=request.getContextPath()%>/js/jquery-tags-input/jquery.tagsinput.js"></script>

<!--Sparkline Chart-->
<script src="<%=request.getContextPath()%>/js/sparkline/jquery.sparkline.js"></script>
<script src="<%=request.getContextPath()%>/js/sparkline/sparkline-init.js"></script>

<!--google map-->
<%--<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&AMP;sensor=false"></script>--%>

<!--sort js-->
<script src="<%=request.getContextPath()%>/js/jquery.isotope.js"></script>

<!--分页js-->
<script src="<%=request.getContextPath()%>/js/jqPaginator.min.js"></script>
<!--pickers plugins-->
<script type="text/javascript" src="js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<!--common scripts for all pages-->
<script src="<%=request.getContextPath()%>/js/scripts.js"></script>

<script src="<%=request.getContextPath()%>/js/common.js"></script>

<script type="text/javascript">


</script>


</body>
</html>
