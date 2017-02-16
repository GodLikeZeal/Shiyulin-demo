<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="myicon.ico">
    <link rel="Bookmark" href="myicon.ico">
    <title>主页</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/materialize/materialize.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/mystyle.css" />

</head>
<style type="text/css">
</style>
<body>

<div class="my_nav">
    <nav>
        <div class="nav-wrapper">
            <a href="#" class="brand-logo" style="padding-left: 100px;">
                <img style="height: 60px;width: 60px" src="images/website/logo.gif"/>
                <p style="float: right;position:relative;top:-6px;right:66px;font-size: 26px">雨霖铃</p>
                <p style="float:right;position:relative;top:18px;font-size: 14px">Shiyulin</p>
            </a>
            <ul id="nav-mobile" class=" hide-on-med-and-down" style="padding-left: 300px;">
                <li class="active"><a href="index.html" style="font-size: large;padding: 0 20px;">首 页</a></li>
                <li><a href="badges" style="font-size: large;padding: 0 20px;">圈 子</a></li>
                <li><a href="badges" style="font-size: large;padding: 0 20px;">图 片</a></li>
                <li><a href="buttons" style="font-size: large;padding: 0 20px;">视 频</a></li>
                <li><a href="footer" style="font-size: large;padding: 0 20px;">故 事</a></li>
                <li><a href="footer" style="font-size: large;padding: 0 20px;">音 乐</a></li>
                <div class="lol">
                    <ul hidden="hidden" class="hide-on-med-and-down right" style="padding-right: 20px;">
                        <li><a id="login_btn" href="##">登录</a></li>
                        <li><a id="register_btn" href="##">注册</a></li>
                        <form id="loginform"  hidden="hidden" method="get"></form>
                    </ul>
                    <input id="userid" type="text" hidden="hidden" value='<%=session.getAttribute("userid")%>' />

                </div>
                <ul hidden="hidden" class="hide-on-med-and-down right" style="padding-right: 20px;">
                    <li><a href="#">欢饮您！<%=session.getAttribute("username")%></a></li>
                </ul>
            </ul>
        </div>
    </nav>

</div>
<div class="my_container">
    <!--
        作者：zhangleifor@163.com
        时间：2016-09-26
        描述：视频新片模块部分
    -->
    <div class="new_content">
        <div class="row">
            <div class="col offset-l4 s4">
                <h3 class="center-align white-text" style="height: 100px;line-height: 100px;">新片首发</h3>
                <ul class="tabs">
                    <li class="tab col s1"><a class="active"  href="#video_all">全部</a></li>
                    <li class="tab col s1"><a href="#video_recorder">MV</a></li>
                    <li class="tab col s1"><a href="#video_game">游戏</a></li>
                    <li class="tab col s1"><a href="#video_share">分享</a></li>
                </ul>
            </div>
            <div class="new_video_content">
                <div id="video_all" class="col s12">
                    <div class="slider">
                        <ul class="slides">
                            <li>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/T002R300x300M000003Ctqmg188NDK.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >就说我们都是华丽的单身族</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >Twins</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/T002R300x300M000002omcya2uFH4M.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >Illuminate(Deluxe)</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >Shawn Mendes</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/T002R300x300M00000005L3o08HGar.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >The Life Is 82(0.5)</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >슈퍼비</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/T002R300x300M000001sPJdX3FilE4.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >童装高跟鞋</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >陈明憙Jocelyn</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/278243-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >英雄联盟</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >Roit</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/288086-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >速度与激情6</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >范·迪塞尔、保罗·沃克</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/89057-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >魔兽世界</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >暴雪娱乐</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/34792-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >鬼泣5</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >CAPCOM</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/32364-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >刺客信条</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >CAPCOM</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/218536-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >速度与激情7</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >保罗</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/305968-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text"  >微微一笑很倾城</a>
                                    </h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >郑爽，杨洋</a>
                                    </div>
                                </div>
                                <div class="playlist__item_box">
                                    <div class="playlist__cover">
                                        <a href="##" >
                                            <img class="cover_img" src="images/website/index/333117-106.jpg" />
                                            <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                                        </a>
                                    </div>
                                    <h5 class="playlist__title center-align white-text truncate">
                                        <a href="##" class="white-text" >女团</a></h5>
                                    <div class="playlist__author center-align">
                                        <a href="##" style="color: #B3B3B3;" >T-ara</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="video_recorder" class="col s12">记录</div>
                <div id="video_game" class="col s12">游戏</div>
                <div id="video_share" class="col s12">分享</div>
            </div>
            <a id="new_left_btn" href="##" class="slide_action slide_action-left">
                <i class="slide_action__arrow--left"></i>
            </a>
            <a id="new_right_btn" href="##" class="slide_action slide_action-right slide_action__arrow--right">
                <i class=""></i>
            </a>
        </div>
    </div>
</div>
<!--
    作者：zhangleifor@163.com
    时间：2016-09-28
    描述：热门推荐模块部分
-->
<div class="hot_content">
    <h3 class="center-align" style="height: 140px;line-height: 140px;">热门榜单</h3>
    <div class="hot_video_content" >
        <div class="slider" >
            <ul class="slides">
                <li>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/218536-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align ">
                            <a class="white-text" href="##">速度与激情7</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：480万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/305968-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">微微一笑很倾城</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：465.4万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/119259-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">艾薇儿</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：184.4万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/185005-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">仙剑奇侠传三</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：156.2万</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/278243-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">英雄联盟</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：150.8万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/288086-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">速度与激情6</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：146.1万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/89057-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a class="white-text" href="##">魔兽世界</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：140.2万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/34792-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a href="##" style="color: #B3B3B3;" >鬼泣5</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：137.3万</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/300483-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;">
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a href="##" style="color: #B3B3B3;" >女团</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：120万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/300483-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a href="##" style="color: #B3B3B3;" >女团</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：120万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-4" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-4')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/300483-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">女团</h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：120万</a>
                        </div>
                    </div>
                    <div class="playlist__item_box grey darken-3" onmousemove="this.className=('playlist__item_box')" onmouseout="this.className=('playlist__item_box grey darken-3')">
                        <div class="playlist__cover">
                            <a href="##" >
                                <img class="cover_img" src="images/website/index/300483-106.jpg" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png" style="width: 64px;height: 64px;left: 115px;top: -50px;"/>
                            </a>
                        </div>
                        <h5 class="playlist__title center-align white-text">
                            <a href="##" style="color: #B3B3B3;" >女团</a>
                        </h5>
                        <div class="playlist__author center-align">
                            <a href="##" style="color: #B3B3B3;" >播放量：120万</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <a id="hot_left_btn" href="##" class="slide_action slide_action-left" style="top: 1040px;">
        <i class="slide_action__arrow--left"></i>
    </a>
    <a id="hot_right_btn" href="##" class="slide_action slide_action-right slide_action__arrow--right" style="top: 1040px;">
        <i class=""></i>
    </a>
</div>
<!--
    作者：zhangleifor@163.com
    时间：2016-09-28
    描述：页脚部分
-->
<div class="article_content">
    <h3 class="center-align white-text" style="height: 120px;line-height: 140px;">文章推荐</h3>
    <div class="article_container">
        <ul>
            <li class="article_list_item green">
                <h4 class="center-align article_list_item_hd">
                    <a href="##" class="white-text">
                        <i style="font-style: normal;font-size: 22px;font-weight: lighter;">巅峰榜</i><br />
                        <i style="font-style: normal;">流行指数</i>
                    </a>
                </h4>
                <ul class="article_list">
                    <li class="article_item white-text ">
                        <div class="article_item_num">1</div>
                        <div class="article_item_name truncate">
                            <a  href="##">唐诗三百首</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a  href="##">张磊</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">2</div>
                        <div class="article_item_name truncate">
                            <a href="##">西游记</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">吴承恩</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">3</div>
                        <div class="article_item_name truncate">
                            <a href="##">三国演义</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">罗贯中</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">4</div>
                        <div class="article_item_name truncate">
                            <a href="##">水浒传</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">施耐庵</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">5</div>
                        <div class="article_item_name truncate">
                            <a href="##">红楼梦</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">曹雪芹</a>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="article_list_item pink">
                <h4 class="center-align article_list_item_hd">
                    <a href="##" class="white-text">
                        <i style="font-style: normal;font-size: 22px;font-weight: lighter;">巅峰榜</i><br />
                        <i style="font-style: normal;">最新</i>
                    </a>
                </h4>
                <ul class="article_list">
                    <li class="article_item white-text ">
                        <div class="article_item_num">1</div>
                        <div class="article_item_name truncate">
                            <a  href="##">唐诗三百首</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a  href="##">张磊</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">2</div>
                        <div class="article_item_name truncate">
                            <a href="##">西游记</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">吴承恩</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">3</div>
                        <div class="article_item_name truncate">
                            <a href="##">三国演义</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">罗贯中</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">4</div>
                        <div class="article_item_name truncate">
                            <a href="##">水浒传</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">施耐庵</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">5</div>
                        <div class="article_item_name truncate">
                            <a href="##">红楼梦</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">曹雪芹</a>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="article_list_item blue">
                <h4 class="center-align article_list_item_hd">
                    <a href="##" class="white-text">
                        <i style="font-style: normal;font-size: 22px;font-weight: lighter;">巅峰榜</i><br />
                        <i style="font-style: normal;">热门</i>
                    </a>
                </h4>
                <ul class="article_list">
                    <li class="article_item white-text ">
                        <div class="article_item_num">1</div>
                        <div class="article_item_name truncate">
                            <a  href="##">唐诗三百首</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a  href="##">张磊</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">2</div>
                        <div class="article_item_name truncate">
                            <a href="##">西游记</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">吴承恩</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">3</div>
                        <div class="article_item_name truncate">
                            <a href="##">三国演义</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">罗贯中</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">4</div>
                        <div class="article_item_name truncate">
                            <a href="##">水浒传</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">施耐庵</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">5</div>
                        <div class="article_item_name truncate">
                            <a href="##">红楼梦</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">曹雪芹</a>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="article_list_item purple">
                <h4 class="center-align article_list_item_hd">
                    <a href="##" class="white-text">
                        <i style="font-style: normal;font-size: 22px;font-weight: lighter;">巅峰榜</i><br />
                        <i style="font-style: normal;">连载</i>
                    </a>
                </h4>
                <ul class="article_list">
                    <li class="article_item white-text ">
                        <div class="article_item_num">1</div>
                        <div class="article_item_name truncate">
                            <a  href="##">唐诗三百首</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a  href="##">张磊</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">2</div>
                        <div class="article_item_name truncate">
                            <a href="##">西游记</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">吴承恩</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">3</div>
                        <div class="article_item_name truncate">
                            <a href="##">三国演义</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">罗贯中</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">4</div>
                        <div class="article_item_name truncate">
                            <a href="##">水浒传</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">施耐庵</a>
                        </div>
                    </li>
                    <li class="article_item white-text">
                        <div class="article_item_num">5</div>
                        <div class="article_item_name truncate">
                            <a href="##">红楼梦</a>
                        </div>
                        <div class="article_item_writer truncate">
                            <a href="##">曹雪芹</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<div class="mv_content">
    <h3 class="center-align" style="height: 120px;line-height: 140px;">MV首播</h3>
    <div class="row">
        <div class="col offset-s3 s6">
            <ul class="tabs">
                <li class="tab col s2"><a class="active"  href="#mv_all">全部</a></li>
                <li class="tab col s2"><a href="#mv_ND">内地</a></li>
                <li class="tab col s2"><a href="#mv_GT">港台</a></li>
                <li class="tab col s2"><a href="#mv_OM">欧美</a></li>
                <li class="tab col s2"><a href="#mv_K">韩国</a></li>
                <li class="tab col s2"><a href="#mv_J">日本</a></li>
            </ul>
        </div>
        <a class="right" style="margin-right: 74px; line-height: 48px;color: #ee6e73;" href="##" >全部 ></a>
    </div>
    <div class="mv_video_content">
        <div id="mv_all" class="col s12">
            <ul class="mv_list_list">
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214101.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">会孤单</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">张杰</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>48.9万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214136.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">很不低调</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">方大同</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>3.7万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214152.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">Power of the Paradise</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">嵐</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>4.6万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214205.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">拼图</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">陈明憙Jocelyn</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>4.3万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214220.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">숨</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">박효신</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>3万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214239.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">Take Me Down</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">The Pretty Reckless</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>2.7万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214251.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">Starboy</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">The Weeknd</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>2.4万</span>
                        </div>
                    </div>
                </li>
                <li class="mv_list_item">
                    <div class="mv_list_item_box">
                        <a class="mv_list__cover" href="##">
                            <div style="overflow: hidden;">
                                <img class="cover_img" src="images/website/index/QQ20161002214328.png" style="width: 100%; height: 170px;" />
                                <img class="play_icon circle" src="images/icons/ic_play_arrow_black_48dp.png"/>
                            </div>
                        </a>
                        <h5 class="mv_list_title">
                            <a href="##" style="color: #333;">Meteorite</a>
                        </h5>
                        <p class="mv_list_singer">
                            <a href="##" style="color: #999;">Years & Years</a>
                        </p>
                        <div class="mv_list_info">
                            <span><img class="mv_list_info_icon" src="images/icons/a.PNG"/>1.8万</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div id="mv_ND" class="col s12"></div>
        <div id="mv_GT" class="col s12"></div>
        <div id="mv_OM" class="col s12"></div>
        <div id="mv_K" class="col s12"></div>
        <div id="mv_J" class="col s12"></div>
    </div>
</div>
<div class="my_footer" style="margin-top: -20px;">
    <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Contact to us</h5>
                    <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">友情链接</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="http://www.gisquest.com/">浙江臻善科技有限公司</a></li>
                        <li><a class="grey-text text-lighten-3" href="http://www.baidu.com/">百度一下</a></li>
                        <li><a class="grey-text text-lighten-3" href="http://www.imooc.com/">慕课网</a></li>
                        <li><a class="grey-text text-lighten-3" href="http://www.wust.edu.cn/">武汉科技大学</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <p>Copyright © 2015 -<script type="text/javascript">document.write(new Date().getFullYear());</script> Zeal. All Rights Reserved.</p>
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
    </footer>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jQuery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/materialize/materialize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/layer/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js" ></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.slider').slider();
    });
    $("#new_left_btn").on("click",function(){
        var $slider=$('#video_all .slider');
        var now_index=$('.new_video_content .slider').find(".active").index();
        if(now_index==0){
            //$(this).attr("data-tooltip","前面已经没有了");
            //$(this).tooltip({delay:50});
            //Materialize.toast("前面已经没有了",500,"info");
        }else{
            $slider.trigger("sliderPrev");
        }

    });
    $("#new_right_btn").on("click",function(){
        var $slider=$('#video_all .slider');
        var now_index=$('.new_video_content .slider').find(".active").index();
        if(now_index==2){
            //$(this).attr("data-tooltip","前面已经没有了");
            //$(this).tooltip({delay:50});
            //Materialize.toast("前面已经没有了",500,"info");
        }else{
            $slider.trigger("sliderNext");
        }

    });
    $("#hot_left_btn").on("click",function(){
        var $slider=$('.hot_video_content .slider');
        var now_index=$('.hot_video_content .slider').find(".active").index();
        if(now_index==0){
            //$(this).attr("data-tooltip","前面已经没有了");
            //$(this).tooltip({delay:50});
            //Materialize.toast("前面已经没有了",500,"info");
        }else{
            $slider.trigger("sliderPrev");
        }

    });
    $("#hot_right_btn").on("click",function(){
        var $slider=$('.hot_video_content .slider');
        var now_index=$('.hot_video_content .slider').find(".active").index();
        if(now_index==2){
            //$(this).attr("data-tooltip","前面已经没有了");
            //$(this).tooltip({delay:50});
            //Materialize.toast("前面已经没有了",500,"info");
        }else{
            $slider.trigger("sliderNext");
        }

    });
</script>
</body>

</html>