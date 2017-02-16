<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/10/18
  Time: 20:23
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

    <!--icheck-->
    <link href="js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/square.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="js/iCheck/skins/square/blue.css" rel="stylesheet">

    <!--dashboard calendar-->
    <link href="css/clndr.css" rel="stylesheet">

    <!--file upload-->
    <link rel="stylesheet" type="text/css" href="css/bootstrap-fileupload.min.css" />

    <!--jquery-confirm-->
    <link rel="stylesheet" href="css/jquery-confirm.css" />

    <!--loaders-->
    <link rel="stylesheet" href="css/loaders.css" />

    <!--animate-->
    <link rel="stylesheet" href="css/animate.min.css"/>

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
                    <li><a href="person/<%=session.getAttribute("userid")%>"><i class="fa fa-user"></i> <span>个人主页</span></a></li>
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
                        <li class="active"><a href="file_up"> 文件上传</a></li>
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
                            <li><a href="#"><i class="fa fa-user"></i>  个人主页</a></li>
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
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">上传文件</h3>
                        </div>
                        <div class="panel-body">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h4 class="panel-title">文件信息编辑</h4>
                                </header>
                                <div class="panel-body">
                                    <form class="form-horizontal" id="uploadfileform" role="form" method="post" action="" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label for="inputEmail2" class="col-lg-2 col-sm-2 control-label col-lg-offset-1">文件名</label>
                                            <div class="col-lg-6">
                                                <input type="text" name="filename" class="form-control" id="fileName" placeholder="fileName">
                                                <p class="help-block">给你要上传的文件取个响亮的名字吧.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword2" class="col-lg-2 col-sm-2 col-lg-offset-1 control-label">路径</label>
                                            <div class="col-lg-6">
                                                <input type="text" readonly name="urlpath" class="form-control" id="urlPath" placeholder="urlPath" value="/file/">
                                                <!--<p class="help-block">Example block-level help text here.</p>-->
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword1" class="col-lg-2 col-sm-2 col-lg-offset-1 control-label">文件类型</label>
                                            <div class="col-lg-6">
                                                <select name="filetype" onchange="changefiletype()" class="form-control _selected_" id="fileType" placeholder="fileType">
                                                    <option value="0"></option>
                                                    <c:forEach items="${FileType}" var="item">
                                                        <option value="${item.id}">${item.name}</option>
                                                    </c:forEach>
                                                </select>
                                                <!--<p class="help-block">Example block-level help text here.</p>-->
                                            </div>
                                        </div>
                                        <div id="pic" class="form-group last">
                                            <label class="col-lg-2 col-sm-2 col-lg-offset-1 control-label" style="line-height: 170px;">选择图片</label>
                                            <div class="controls col-lg-6">
                                                <div class="fileupload fileupload-new" data-provides="fileupload">
                                                    <div class="fileupload-new thumbnail" style="width: 300px; height: 170px;">
                                                        <img src="<%=request.getContextPath()%>/img/-text.png" alt="" />
                                                    </div>
                                                    <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 300px; max-height: 170px; line-height: 20px;"></div>
                                                    <div>
                                                   <span class="btn btn-default btn-file">
                                                   <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Select image</span>
                                                   <span class="fileupload-exists"><i class="fa fa-undo"></i> 重选</span>
                                                   <input type="file" name="file_pic" class="default" />
                                                   </span>
                                                        <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> 移除</a>
                                                    </div>
                                                </div>
                                                <br/>
                                                <span class="label label-warning ">注意! </span>
                                             <span>
                                             附加图像缩略图只支持最新版的Firefox, Chrome, Opera Safari and Internet Explorer 10
                                             </span>
                                            </div>
                                        </div>
                                        <div id="file" class="form-group">
                                            <label class="col-lg-2 col-sm-2 col-lg-offset-1 control-label">选择文件</label>
                                            <div class="controls col-lg-6">
                                                <div class="fileupload fileupload-new" data-provides="fileupload" >
                                                <span class="btn btn-default btn-file">
                                                <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Select file</span>
                                                <span class="fileupload-exists"><i class="fa fa-undo"></i> 重选</span>
                                                <input type="file" name="up_file" class="default" />
                                                </span>
                                                    <span class="fileupload-preview" style="margin-left:5px;"></span>
                                                    <a href="#" class="close fileupload-exists" data-dismiss="fileupload" style="float: none; margin-left:5px;"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" style="line-height: 150px;">
                                            <label for="inputPassword1" class="col-lg-2 col-sm-2 col-lg-offset-1 control-label">简介</label>
                                            <div class="col-lg-6">
                                                <textarea type="text" name="introduction" class="form-control" id="introduction" placeholder="" style="height: 150px;"></textarea>
                                                <!--<p class="help-block">Example block-level help text here.</p>-->
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-lg-offset-3 col-lg-7">
                                                <button type="button" class="btn btn-success col-lg-10" onclick="dosubmit()">提交上传</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer>
            <div class="text-center">
                2016 &copy; All Rights Reserved By Zeal
            </div>
        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>

<!-- Modal -->
<div data-backdrop="false" aria-hidden="true"  aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="Model" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">文件上传中...</h4>
            </div>
            <div class="modal-body">
                <p>当前正在上传<i></i></p>
                <div class="progress progress-striped active progress-sm">
                    <div  aria-valuemax="" aria-valuemin="0" aria-valuenow="" role="progressbar" class="progress-bar progress-bar-success">
                        <span ></span>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button  class="btn btn-default" type="button">暂停</button>
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

<!--easy pie chart-->
<script src="js/easypiechart/jquery.easypiechart.js"></script>
<script src="js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="js/sparkline/jquery.sparkline.js"></script>
<script src="js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="js/iCheck/jquery.icheck.js"></script>
<script src="js/icheck-init.js"></script>

<!--file upload-->
<script type="text/javascript" src="js/bootstrap-fileupload.min.js"></script>

<!--jquery-confirm-->
<script type="text/javascript" src="js/jquery-confirm.js" ></script>

<!--jquery-form-->
<script type="text/javascript" src="js/jquery-form/jquery-form.js"></script>

<!-- jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>
<script src="js/flot-chart/jquery.flot.pie.resize.js"></script>
<script src="js/flot-chart/jquery.flot.selection.js"></script>
<script src="js/flot-chart/jquery.flot.stack.js"></script>
<script src="js/flot-chart/jquery.flot.time.js"></script>
<script src="js/main-chart.js"></script>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<script src="js/common.js"></script>

<script type="text/javascript">
    function dosubmit(){
        var formdata= new FormData($("#uploadfileform")[0]);   //创建FormData对象，初始化为form表单中的数据。需要添加其他数据可使用formData.append("property", "value");
        //var formdata=new FormData();
        //var url='uploadfile';
        //$('#Model').modal('toggle');
        $('.modal-header :button').hide();
        $('.modal-footer').html('');
        showModel();
        $('section').animate({'opacity':0.7},'normal');
        $.ajax({
            type:'post',
            url:'uploadfile',
            data:formdata,
            contentType:false,  //必须false才会自动加上正确的Content-Type
            processData:false,   //必须false才会避开jQuery对 formdata 的默认处理
            success:function(result){
                //alert(result);
            },
            error:function(){

                alert('error!');
            },
            xhr:function(){     //获取ajaxSettings中的xhr对象，为它的upload属性绑定progress事件的处理函数
                myXhr= $.ajaxSettings.xhr();
                if(myXhr.upload){   //检查upload属性是否存在
                    //绑定progress事件的回调函数
                    myXhr.upload.addEventListener('progress',progressFunction, false);
                }
                return myXhr;    //xhr对象返回给jQuery使用
            }
        });
    }

    $('#Model').on('hidden.bs.modal', function (e) {
        // do something...
        $('section').animate({'opacity':1},'normal');
    })

    function changefiletype(){
        var v= $('select').find('option:selected').text();
        $('#urlPath').val('/file/'+v);
        if(v=='picture'){
            $('#file').hide();
            $('#pic').show();
        }else {
            $('#file').show();
            $('#pic').hide();
        }
    }

    function progressFunction(evt){
        var progressBar = $('.progress-bar');
        var percentageDiv = $('.progress-bar span');
        if (evt.lengthComputable) {
            $('.progress').show();
            progressBar.maxValue = evt.total;
            progressBar.value = evt.loaded;
            $('.modal-body p i').html(evt.fileName);
            progressBar.css('width',Math.round(evt.loaded / evt.total * 100) + "%");
            percentageDiv.html(Math.round(evt.loaded / evt.total * 100) + "%");
            if(evt.loaded==evt.total){
                $('.modal-body p').html('已上传完成！');
                setTimeout(function(){
                    progressBar.css('width',0 + "%");
                    percentageDiv.html(0 + "%");
                    $('.progress').hide();
                    $('#Model').modal('toggle');
                },500);
            }
        }

    }
</script>

</body>
</html>
