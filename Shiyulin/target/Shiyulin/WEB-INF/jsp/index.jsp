<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>主页</title>
		<link rel="stylesheet" href="css/mystyle.css" />
		<link rel="stylesheet" href="css/animate.min.css" />
		<link rel="stylesheet" href="css/materialize.min.css" />
		<style type="text/css">
			html {
				font-family: "Open Sans", Helvetica, Tahoma, Arial, "Microsoft YaHei", 微软雅黑, STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif;
			}
		</style>
	</head>

	<body>

		<div class="my_nav">
			<nav>
				<div class="nav-wrapper">
					<a href="#" class="brand-logo" style="padding-left: 100px;">Logo</a>
					<ul id="nav-mobile" class=" hide-on-med-and-down" style="padding-left: 300px;">
						<li class="active"><a href="badges" style="font-size: large;padding: 0 20px;">圈子</a></li>
						<li><a href="badges" style="font-size: large;padding: 0 20px;">图片</a></li>
						<li><a href="buttons" style="font-size: large;padding: 0 20px;">视频</a></li>
						<li><a href="footer" style="font-size: large;padding: 0 20px;">故事</a></li>
						<div class="lol">
							<ul hidden="hidden" class="hide-on-med-and-down right" style="padding-right: 20px;">
								<li><a id="login_btn" href="##">登录</a></li>
								<li><a id="register_btn" href="##">注册</a></li>
								<form id="loginform"  hidden="hidden" method="get"></form>
							</ul>
							<input id="userid" type="text" hidden="hidden" value="<%=session.getAttribute("userid")%>" />
						
						</div>
							<ul hidden="hidden" class="hide-on-med-and-down right" style="padding-right: 20px;">
								<li><a href="#">欢饮您！<%=session.getAttribute("username")%></a></li>
							</ul>								
					</ul>
				</div>
			</nav>

		</div>
		<div class="my_container">
			<div class="left_nav">
				<!--左导航栏按钮-->
				<a class="left_btn"><span></span></a>
				<!--导航展开状态-->
				<div class="left_big">

				</div>
				<!--导航栏收起状态-->
				<div class="left_small"></div>
			</div>
			<div class="right_content">
			<div>
			  <div class="slider">
			    <ul class="slides">
			       <li>
			         <img src="images/web/index/214394-106.jpg"> <!-- random image -->
			         <div class="caption center-align">
			         <h3>终于要回去了!</h3>
			         <h5 class="light grey-text text-lighten-3">Are you ready?</h5>
			         </div>
			       </li>
			       <li>
			         <img src="images/web/index/291038-106.jpg"> <!-- random image -->
			         <div class="caption left-align">
			         <h3>是不是很激动？</h3>
			         <h5 class="light grey-text text-lighten-3">啥时候去吃饭啊？饿死了.</h5>
			         </div>
			       </li>
			       <li>
			         <img src="images/web/index/41182-106.jpg"> <!-- random image -->
			         <div class="caption right-align">
			         <h3>没外网啊</h3>
			         <h5 class="light grey-text text-lighten-3">真的是烦.</h5>
			         </div>
			       </li>
			       <li>
			         <img src="images/web/index/45561-106.jpg"> <!-- random image -->
			         <div class="caption center-align">
			         <h3>This is WEB 精灵啊!</h3>
			         <h5 class="light grey-text text-lighten-3">写点什么好呢？</h5>
			         </div>
			       </li>
			    </ul>
			  </div>
			</div>
				<div class="valign-wrapper" style="width: 200px;height: 80px;">
					<a class="waves-effect waves-light btn" >点击开启洪荒之力</a>

				</div>

			</div>
		</div>
		<div class="my_footer"></div>
		<script type="text/javascript" src="js/html5shiv.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/materialize.min.js"></script>
		<script type="text/javascript" src="js/layer/layer.js"></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('.slider').slider();
        	login_register();
        	var html='<div class="model_bg"></div><div id="login_container" class="animated fadeInDown" style="margin-top: 120px;width: 25%;height:350px;position: fixed;z-index: 102;left: 38%;top: 0px;background-color: #FFFFFF;display: none;color: #000000;"><div id="loading"  style="display:none;position: absolute;margin:30% 40%" class="preloader-wrapper big active"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div><div class="row"><div class="col s12 "><ul class="tabs"><li class="tab col s6 "><a href="#login_div">登录</a></li><li class="tab col s6 "><a href="#register_div">注册</a></li></ul></div></div><div id="login_div" class="row"><form class="col s12 "><div class="input-field col s12"><i class="prefix" style="background-image: url(images/icons/ic_account_circle_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="username" type="text" class="validate" /><label for="username">Your Name</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="password" type="password" class="validate" /><label for="password">PassWord</label></div><div class="col s12" style="margin-top: 27px;margin-bottom: 15px;"><p class="col offset-s1"><input id="remenberpassword" type="checkbox" class="filled-in" /><label for="remenberpassword">记住密码</label></p><p class="col offset-s1"><a href="##" style="color: #26A69A;">忘记密码？</a></p></div><div class="col s12" style="vertical-align: bottom"><a id="login_action" class="waves-effect waves-light btn s12 col" href="javascript:LoginRegisterService(0);">登录</a></div></form></div><div id="register_div" class="row"><form class="col s12"><div class="input-field col s12"><i class="prefix" style="background-image: url(images/icons/ic_account_circle_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_name" type="text" class="validate" /><label for="register_name">Your Name</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_password" type="password" class="validate" /><label for="register_password">PassWord</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_repassword" type="password" class="validate" /><label for="register_repassword">Rewrite PassWord</label></div><div class="col s12"><a id="register_action" class="waves-effect waves-light btn s12 col" href="#">快速注册</a></div></form></div></div> ';
        	$(document.body).append(html);
        	$('ul.tabs').tabs();			
			var userid=$("#userid").val();
			if(userid!=undefined&&userid!="undefined"&&userid!=""&&userid!=null&&userid!="null"){
				$(".hide-on-med-and-down .right:eq(0)").hide();
				$(".hide-on-med-and-down .right:eq(1)").show();
			}else{
				$(".hide-on-med-and-down .right:eq(0)").show();
				$(".hide-on-med-and-down .right:eq(1)").hide();
			}
		});
			$(".btn").on("click", function() {
				layer.open({type:2,title:"什么奇奇怪怪的",content:"",area:['800px','500px']});
				//layer.msg('<div id="loading" class="preloader-wrapper active"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div>',{area: ['90px', '90px'],shade: 0});
				//layer.alert("",{type:1,content:'<div class="preloader-wrapper big active"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div>',title:false,closeBtn: 0}); 
				//				layer.confirm('is not?', {icon: 3, title:'提示'}, function(index){
				//               // do something
				//
				//             layer.close(index);
				//             });
				//             layer.open({
				//                content: 'test'
				//              });
			});
		</script>
	</body>

</html>