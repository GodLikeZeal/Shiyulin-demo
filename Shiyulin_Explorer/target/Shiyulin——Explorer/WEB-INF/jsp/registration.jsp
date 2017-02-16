<%--
  Created by IntelliJ IDEA.
  User: Zeal
  Date: 2016/10/19
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="myicon.ico" type="image/png">

    <title>Registration</title>

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

    <form class="form-signin" action="index" method="post" >
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">用户注册</h1>
            <img src="images/logo1.jpg"  alt=""/>
        </div>


        <div class="login-wrap">
            <p> 填写你的账户信息</p>
            <input type="text" autofocus="" name="username" placeholder="User Name" class="form-control" onblur="checUserkExist()" onfocus="return $(this).parent().find('[name=username]+p').hide(500);">
            <p hidden="hidden"></p>
            <input type="password" name="password" placeholder="Password" class="form-control">
            <input type="password" placeholder="Re-type Password" class="form-control">
            <p hidden="hidden"></p>
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> 我同意<a href="#"><strong>服务条款</strong></a>
            </label>
            <button type="button" disabled class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                已经注册用户.
                <a href="login" class="">
                    点此登录
                </a>
            </div>

        </div>

        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="registerModel" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button"></button>
                        <button class="btn btn-primary" type="button"></button>
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
<script src="js/jquery-confirm.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>

<script type="text/javascript">

    function checUserkExist(){
        var username=$("[name=username]").val().trim();
        if(username==""){
            $("[name=username]+p").html("-_-|||  用户名这么重要怎么能为空呢！");
            $("[name=username]+p").show(800);
        }else {
            url="registration/queryUserExist"
            $.ajax({
                type:'post',
                url:url,
                async:false,
                data:{username:username},
                success:function(data){
                    if(data==1){
                        $("[name=username]+p").html("-_-|||  这么好的昵称已经被别人捷足先登了，换个吧！");
                        $("[name=username]+p").show(800);
                    }
                },
            });
        }

    }

    $(".btn-login").on("click",function(){
        var username=$("[name=username]").val().trim();
        var psd=$("[name=password]").val().trim();
        var repsd=$("[name=password]+input").val().trim();
        checUserkExist();
        if(username==""){
            $("[name=username]+p").html("-_-|||  用户名这么重要怎么能为空呢！");
            $("[name=username]+p").show(800);
            return;
        }
        if($("[name=username]+p").is(':visible')){
            return;
        }
        if(psd!=repsd){
            $("[type=password]+p").html("-_-|||  两次密码输入不一致，太大意了吧！");
            $("[type=password]+p").show(800);
        }else {
            $("[type=password]+p").hide(300);
            url="userRegister";
            $.post(url,{username:username,password:psd},function(data){
                data=JSON.parse(data);
                if(data.status=="ERORR"){
                    $("#registerModel .modal-title").html("很遗憾的告诉你");
                    $("#registerModel .modal-body p").html(data.error);
                    $("#registerModel .modal-footer .btn-default").html("返回再试试");
                    $("#registerModel .modal-footer .btn-primary").hide();
                    $("#registerModel").modal('toggle');
                }else if(data.status=="SUCCESS"){
                    $("#registerModel .modal-title").html('喔唷！恭喜你,注册成功！你是第'+data.id+'个注册的新用户！');
                    $("#registerModel .modal-body p").html('您的用户名为：'+data.name+'</br>您的密码为：'+data.password+'');
                    $("#registerModel .modal-footer .btn-default").html("返回");
                    $("#registerModel .modal-footer .btn-primary").html("进入主页");
                    $("#registerModel .modal-footer .btn-primary").show();
                    $("#registerModel").modal('toggle');
                }
            });
        }
    });

    $(':checkbox').on('change',function(){
        if($(':checkbox').prop('checked')) {
            $('.btn-login').removeAttr('disabled');
        }else {
            $('.btn-login').attr('disabled','disabled');
        }
    });

    $("#registerModel .btn-primary").on("click",function(){
        var username=$("[name=username]").val().trim();
        var password=$("[name=password]").val().trim();
        if(username==""||username==undefined||password==""||password==undefined){
            $.alert({
                keyboardEnabled: true,
                title:'操作提示',
                content:'用户名或者密码输入不能为空！'
            });
        }else{
            $.ajax({
                type:"post",
                url:"userLogin",
                data:{username:username,password:password},
                aysnc:true,
                success:function(data){
                    if(data==1){
                        $.alert({
                            keyboardEnabled: true,
                            title:'操作提示',
                            content:'用户不存在！'
                        });
                    }else if(data==2){
                        $.alert({
                            keyboardEnabled: true,
                            title:'操作提示',
                            content:'密码不正确！'
                        });
                    }else if(data==3){
                        $("form").submit();
                    }
                },
                error:function(){}
            });
        }
    });
    $(".checkbox a").on('click',function(){
        $("#registerModel .modal-title").html('服务条款');
        $("#registerModel .modal-body p").html('第一条：根据中华人民共和国xxx法规定，能注册者，要么帅到爆，要么美得飞起！');
        $("#registerModel .modal-footer .btn-default").html("确定");
        $("#registerModel .modal-footer .btn-primary").hide();
        $("#registerModel").modal('toggle');
    });

</script>
</body>
</html>
