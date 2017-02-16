<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>大学纪念册</title>
<!--WOW动态css-->
<link href="css/animate.min.css" rel="stylesheet" type="text/css" />
<!--幻灯片JS-->
<link rel="stylesheet" href="css/jquery.fullPage.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
<link rel="stylesheet" href="css/style.css" />
<style type="text/css">
		.tabs .tab a{
			color: #26a69a;
		}
		.tabs .tab a:hover{
			color: #B2DFDB;
		}
		.tabs .indicator{
			background-color: #26a69a;
		}
		#login_container{
			border: 2px solid #00796B;
			border-radius: 10px;
		}
	</style>
</head>
<body>

    <div id="fullpage">
    	<div class="fullpage-login-register lol">
    		<div class="fullpage-login"><a href="##" id="login_btn">登录</a></div>
    		<form id="loginform"  hidden="hidden" method="get"></form>
    		<div class="line">|</div>
    		<div class="fullpage-register"><a href="##" id="register_btn">注册</a></div>
    	</div>
        <div class="section">
            <!--<div class="bg" style="z-index:3"><img src="images/index/1zhezhao.png"></div>-->
            <!--菜单按钮-->
            <div class="sq_menu_container">
                <div class="sq_menu" style="display: none;">
                    <div class="sq_m_span">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="sq_m_meun">
                        MEUN
                    </div>
                </div>
                <div class="sq_meun_back"></div>
                <div class="sq_meun_nav">
                    <div class="sq_nav_1 nav0">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">主页</span>
                    </div>
                    <div class="sq_nav_1 nav1">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">图片</span>
                    </div>
                    <div class="sq_nav_1 nav2">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">视频</span>
                    </div>
                    <div class="sq_nav_1 nav3">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">故事</span>
                    </div>
                    <div class="sq_nav_1 nav4">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">音乐</span>
                    </div>
                    <div class="sq_nav_1 nav5">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">关于我们 </span>
                    </div>
                    <div class="sq_nav_1 nav6">
                        <span class="sq_nav_park"></span>
                        <span class="sq_nav_left">TEL:400-868-288</span>
                    </div>
                </div>
            </div>
            <!--QQ-电话-->
            <!--<div class="sq_concat">
                <div class="sq_concat_back">
                    <div class="sq_phone"><img src="images/index/phone.png" alt="联系电话"></div>
                    <div class="sq_qq"><img src="images/index/qq.png" alt="联系QQ"></div>
                    <div class="sq_weixin"><img src="images/index/weixin.png" alt="微信"></div>
                </div>
            </div>-->
            
            <div class="sq_center sq_position"><img src="images/index/er.png"></div>
            <div class="sq_center_1 sq_position"><img src="images/index/zuiwai.png"></div>
            <div class="sq_center_2"><img src="images/index/nei.png"></div>

            <!--从这里开始-->
            <div class="sq_start">从这里开始</div>
            <div class="sq_mouse">
                <img src="images/index/shubiao.png">
                <div class="sq_m_small"></div>
            </div>
           <div class="bg">
               <img src="images/index/FirstScreen.jpg" alt="第一屏">
           </div>
        </div>

        <div class="section">
           <!--<div class="bg" style="z-index:3"><img src="images/index/2zhezhao.png"></div>-->
           <div class="sq_tow_screen">
               <p>黄家湖的日出，多少次在梦里与你们一起看到。</p> 
                <div>
               	<p>烟花会谢，笙歌会停。显得这故事的尾声更加动听。</p>
               	<footer class="right"><span class="valign-wrapper" style="border: 1px solid;width: 35px;float: left;margin-top: 15px;"></span>玉仔</footer>
               </div>
           </div>
            <div class="sq_tow_msg" style="z-index: 6">
                <ul>
                    <li class="sq_li1">
                        <div class="sq_img">
                            <img src="images/index/ic_movie_creation_white_48dp.png" alt="视频">
                            <p class="sq_img_s1">视频</p>
                            <p>VIDEO</p>
                        </div>
                    </li>
                    <li class="sq_li2">
                        <div class="sq_img">
                            <img src="images/index/ic_photo_white_48dp.png" alt="图片">
                            <p class="sq_img_s1">图片</p>
                            <p>PICTURE</p>
                        </div>
                    </li>
                    <li class="sq_li3">
                        <div class="sq_img">
                            <img src="images/index/ic_brush_white_48dp.png" alt="故事">
                            <p class="sq_img_s1">故事</p>
                            <p>STORY</p>
                        </div>
                    </li>
                    <li class="sq_li4">
                        <div class="sq_img">
                            <img src="images/index/ic_music_note_white_48dp.png" alt="音乐">
                            <p class="sq_img_s1">音乐</p>
                            <p>MUSIC</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sq_zw"><img src="images/index/zhewen.png"></div>
            <div class="bg">
                <img src="images/index/FirstScreen2.jpg" alt="第二屏">
            </div>
        </div>
        <div class="section">
            <!--<div class="bg" style="z-index:3"><img src="images/index/2zhehzoa.jpg.png"></div>-->
            <div class="sq_three">
                             网络1203
                <div class="sq_three_s1">
                    <span class="sq_three_s1_span"></span>
                    <span class="sq_three_s1_span1"></span>
                </div>
            </div>

            <div class="sq_three_s2" style="z-index: 6">
                <ul>
                    <li>
                        <div class="sq_three_img">
                            <div class="sq_three_re" style="position: relative;">
                                <img src="images/index/an1.jpg" alt="难忘大一">
                                <div class="sq_z_back"></div>
                                <span class="sq_z_left"><img src="images/index/zoom_1.png"></span>
                                <span class="sq_z_right"><img src="images/index/zoom_2.png"></span>
                            </div>
                            <div class="sq_three_top">
                                <span>Unforgettable</span>
                                <span style="font-size: 18px;">难忘大一</span>
                            </div>
                            <div class="sq_three_top" style="color:#787878">2016.07.19</div>
                            <div class="sq_three_top sq_solid" style="width:270px;background: #959595;height: 2px;"></div>
                        </div>
                    </li>
                    <li>
                        <div class="sq_three_img">
                            <div class="sq_three_re" style="position: relative;">
                                <img src="images/index/an2.jpg" alt="精彩集锦">
                                <div class="sq_z_back"></div>
                                <span class="sq_z_left"><img src="images/index/zoom_1.png"></span>
                                <span class="sq_z_right"><img src="images/index/zoom_2.png"></span>
                            </div>

                            <div class="sq_three_top">
                                <span>Highlights</span>
                                <span style="font-size: 18px;">精彩集锦</span>
                            </div>
                            <div class="sq_three_top" style="color:#787878">2016.07.19</div>
                            <div class="sq_three_top sq_solid" style="width:270px;background: #959595;height: 2px;"></div>
                        </div>
                    </li>

                    <li>
                        <div class="sq_three_img">
                            <div class="sq_three_re" style="position: relative;">
                                <img src="images/index/an3.jpg" alt="1243">
                                <div class="sq_z_back"></div>
                                <span class="sq_z_left"><img src="images/index/zoom_1.png"></span>
                                <span class="sq_z_right"><img src="images/index/zoom_2.png"></span>
                            </div>

                            <div class="sq_three_top">
                                <span>One Two Four Three</span>
                                <span style="font-size: 18px;">1243</span>
                            </div>
                            <div class="sq_three_top" style="color:#787878">2016.07.19</div>
                            <div class="sq_three_top sq_solid" style="width:270px;background: #959595;height: 2px;"></div>
                        </div>
                    </li>

                    <li>
                        <div class="sq_three_img">
                            <div class="sq_three_re" style="position: relative;">
                                <img src="images/index/an4.jpg" alt="毕业留念">
                                <div class="sq_z_back"></div>
                                <span class="sq_z_left"><img src="images/index/zoom_1.png"></span>
                                <span class="sq_z_right"><img src="images/index/zoom_2.png"></span>
                            </div>

                            <div class="sq_three_top">
                                <span>Graduation pictures</span>
                                <span style="font-size: 18px;">毕业留念</span>
                            </div>
                            <div class="sq_three_top" style="color:#787878">2016.07.19</div>
                            <div class="sq_three_top sq_solid" style="width:270px;background: #959595;height: 2px;"></div>
                        </div>
                    </li>

                </ul>
            </div>
            <div class="sq_three_s3">
                <div class="sq_three_all">ALL</div>
            </div>
            <div class="bg">
                <img src="images/index/FirstScreen3.jpg" alt="第三屏">
            </div>
        </div>
        <div class="section">
            <div class="bg" style="z-index:3"><img src="images/index/2zhehzoa.jpg"></div>
            <div class="sq_four">
                <img src="images/index/ready.png">
            </div>
            <div class="sq_four_all">To be continued...</div>
            <div class="sq_four2"><img src="images/index/go.png"></div>
            <div class="bg">
                <img src="images/index/FirstScreen4.jpg" alt="第四屏">
            </div>
        </div>
    </div>
        <!--
        	作者：zhangleifor@163.com
        	时间：2016-07-18
        	描述：登录和注册的demo
        -->
     
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/materialize.min.js" ></script>
    <script type="text/javascript" src="js/jquery.fullPage.min.js"></script>
    <script type="text/javascript" src="js/style.js"></script>
    <script type="text/javascript" src="js/common.js" ></script>
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <script type="text/javascript">
        $(function(){
            $('#fullpage').fullpage({
                'verticalCentered': false,
                anchors: ['page1', 'page2', 'page3', 'page4'],
                'navigation': true,                //是否显示导航栏
                'navigationPosition': 'left'  //导航栏的位置
            });


            var back=$(".sq_concat_back").find("div");
            var img=["images/index/phone_1.png","images/index/qq_1.png","images/index/weixin_1.png"];
            var imgs=["images/index/phone.png","images/index/qq.png","images/index/weixin.png"];
            back.hover(function(){
                $(this).children("img").attr("src",img[back.index(this)]);
            },function(){
                $(this).children("img").attr("src",imgs[back.index(this)]);
            });

            var sq_img=$(".sq_three_s2 ul").find("li");
            sq_img.hover(function(){
                $(this).children("div").children(".sq_three_re").children(".sq_z_back").css({ "opacity":"0.7"});
                $(this).children("div").children(".sq_solid").css("background","#3CAF5A");
                $(this).children("div").children(".sq_three_re").children(".sq_z_left").animate({
                    "opacity":"1",
                    "left":"38%"
                },500);
                $(this).children("div").children(".sq_three_re").children(".sq_z_right").animate({
                    "opacity":"1",
                    "right":"45%"
                },500);
            },function(){
                $(this).children("div").children(".sq_three_re").children(".sq_z_back").css("opacity","0");
                $(this).children("div").children(".sq_solid").css("background","#959595");
                $(this).children("div").children(".sq_three_re").children(".sq_z_left").animate({
                    "opacity":"0",
                    "left":"0"
                },500);
                $(this).children("div").children(".sq_three_re").children(".sq_z_right").animate({
                    "opacity":"0",
                    "right":"0"
                },500);
            });
        });
        
        //初始化页面
        $(document).ready(function(){
        	login_register();
        	var html='<div class="model_bg"></div><div id="login_container" class="animated fadeInDown" style="margin-top: 120px;width: 25%;height:350px;position: fixed;z-index: 102;left: 38%;top: 0px;background-color: #FFFFFF;display: none;color: #000000;"><div id="loading"  style="display:none;position: absolute;margin:30% 40%" class="preloader-wrapper big active"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div><div class="row"><div class="col s12 "><ul class="tabs"><li class="tab col s6 "><a href="#login_div">登录</a></li><li class="tab col s6 "><a href="#register_div">注册</a></li></ul></div></div><div id="login_div" class="row"><form class="col s12 "><div class="input-field col s12"><i class="prefix" style="background-image: url(images/icons/ic_account_circle_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="username" type="text" class="validate" /><label for="username">Your Name</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="password" type="password" class="validate" /><label for="password">PassWord</label></div><div class="col s12" style="margin-top: 27px;margin-bottom: 15px;"><p class="col offset-s1"><input id="remenberpassword" type="checkbox" class="filled-in" /><label for="remenberpassword">记住密码</label></p><p class="col offset-s1"><a href="##" style="color: #26A69A;">忘记密码？</a></p></div><div class="col s12" style="vertical-align: bottom"><a id="login_action" class="waves-effect waves-light btn s12 col" href="javascript:LoginRegisterService(0);">登录</a></div></form></div><div id="register_div" class="row"><form class="col s12"><div class="input-field col s12"><i class="prefix" style="background-image: url(images/icons/ic_account_circle_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_name" type="text" class="validate" /><label for="register_name">Your Name</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_password" type="password" class="validate" /><label for="register_password">PassWord</label></div><div class="input-field col s12"><i class="prefix" style="background-image:url(images/icons/ic_lock_outline_black_48dp.png);background-size:cover;display: block;width: 40px;height: 40px;"></i><input id="register_repassword" type="password" class="validate" /><label for="register_repassword">Rewrite PassWord</label></div><div class="col s12"><a id="register_action" class="waves-effect waves-light btn s12 col" href="#">快速注册</a></div></form></div></div> ';
        	$(document.body).append(html);
        	$('ul.tabs').tabs();
        	//LoginRegisterService();

	    });
    </script>
</body>
</html>