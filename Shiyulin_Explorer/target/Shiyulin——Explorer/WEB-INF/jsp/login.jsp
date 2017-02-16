<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/10/18
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="myicon.ico" type="image/png">

    <title>Login</title>


    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" action="index" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">运维管理平台登录</h1>
            <img src="images/logo1.jpg" alt=""/>
        </div>
        <div class="login-wrap">
            <input id="username" type="text" class="form-control" placeholder="UserName" autofocus>
            <input id="password" type="password" class="form-control" placeholder="Password">

            <button id="btn_submit" data-loading-text="正在登录..." class="btn btn-lg btn-login btn-block" type="button" autocomplete="off">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                没有账号?
                <a class="" href="registration">
                    立即注册
                </a>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> 记住密码
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> 忘记密码?</a>

                </span>
            </label>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Forgot Password ?</h4>
                    </div>
                    <div class="modal-body">
                        <p>Enter your e-mail address below to reset your password.</p>
                        <input type="text"  placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                        <button class="btn btn-primary" type="button">Submit</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal -->

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/sweetalert/js/sweetalert.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script type="text/javascript">
    $("#btn_submit").on("click",function(){
        var $btn = $(this).button('loading');
        var username=$("#username").val().trim();
        var password=$("#password").val().trim();
        if(username==""||username==undefined||password==""||password==undefined){
            swal({
                type: 'warning',
                title:'操作提示',
                text:'用户名或者密码输入不能为空！',
                showConfirmButton:false,
                timer:2000
            });
            $btn.button('reset');
        }else{
            $.ajax({
                type:"post",
                url:"userLogin",
                data:{username:username,password:password},
                aysnc:true,
                success:function(data){
                    $btn.button('reset');
                    if(data==1){
                        swal({
                            type: 'info',
                            title:'操作提示',
                            text:'用户不存在！',
                            showConfirmButton:false,
                            timer:2000
                        });
                    }else if(data==2){
                        swal({
                            type: 'error',
                            title:'操作提示',
                            text:'密码不正确！',
                            showConfirmButton:false,
                            timer:2000
                        });
                    }else if(data==3){
//                        setTimeout(function(){$btn.button('reset');$("form").submit();},3000);
                        $("form").submit();
                    }
                },
                error:function(){}
            });
        }

    });

</script>
</body>
</html>
