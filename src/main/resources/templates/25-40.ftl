<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>智慧旅游-25-40</title>

    <script type="text/javascript" src="/static/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.SuperSlide.2.1.1.js"></script>

    <link href="/static/css/25-40.css" rel="stylesheet" type="text/css" />

</head>
<body style="background:url(/static/images/bg.jpg) center 0 no-repeat ;width:100%;height:100%;">
<a name="top"></a>
<table width="100%">
    <tr>
        <td align="right" id="shang">
            <#if Session.userId??>
            <a href="#" id="a"><b>${Session.username}</b>&nbsp;| </a>
            <a href="/smartravel/wd" id="a"><b>我的预定</b></a>
            <#else>
            <a href="/smartravel/login" id="a"><b>登录</b>&nbsp;| </a>
            <a href="/smartravel/join" id="a"><b>注册</b></a>
            </#if>
        </td>
    </tr>
</table>

<div id="container">
    <div id="top2">
        <ul>
            <li><a href="/smartravel/index">网站首页</a></li>
            <li><a href="/smartravel/10-25">10-25岁</a></li>
            <li><a href="/smartravel/25-40">25-40岁</a></li>
            <li><a href="/smartravel/hc">火车票</a></li>
            <li><a href="/smartravel/jd">酒店预定</a></li>
            <li><a href="/smartravel/travel">旅行攻略</a></li>
        </ul>
    </div>
    <br/>

    <div class="banner-box">
        <div class="bd">
            <ul>
                <li style="background:#F3E5D8;">
                    <div class="m-width">
                        <a href="javascript:void(0);"><img src="/static/images/1.jpg"/></a>
                    </div>
                </li>
                <li style="background:#B01415">
                    <div class="m-width">
                        <a href="javascript:void(0);"><img src="/static/images/2.jpg"/></a>
                    </div>
                </li>
                <li style="background:#C49803;">
                    <div class="m-width">
                        <a href="javascript:void(0);"><img src="/static/images/3.jpg"/></a>
                    </div>
                </li>
                <li style="background:#FDFDF5">
                    <div class="m-width">
                        <a href="javascript:void(0);"><img src="/static/images/4.jpg"/></a>
                    </div>
                </li>

            </ul>
        </div>
        <div class="banner-btn">
            <a class="prev" href="javascript:void(0);"></a>
            <a class="next" href="javascript:void(0);"></a>
            <div class="hd">
                <ul></ul>
            </div>
        </div>
    </div>
    <div id="video" style="width: 960px;text-align: center;">
        <ul>
            <li>
                <img src="/static/images/1.png"/>

            </li>
            <li>
                <img src="/static/images/2.png"/>

            </li>
            <li>
                <img src="/static/images/3.png"/>

            </li>
            <li>
                <img src="/static/images/4.png"/>

            </li>
            <ul style="position:absolute;left:285px; top:610px;">
                <li>
                    <video src="/static/mp4/01.mp4" controls="controls" width="320" height="180"></video>
                </li>
                <li style="padding-left: 133px;">
                    <video src="/static/mp4/2.mp4" controls="controls" width="320" height="180"></video>
                </li>
            </ul>
            <ul style="position:absolute;left:285px; top:794px;">
                <li style="padding-top: 125px;">
                    <video src="/static/mp4/3.mp4" controls="controls" width="320" height="180"></video>
                </li>
                <li style="padding-left: 133px;">
                    <video src="/static/mp4/4.mp4" controls="controls" width="320" height="180"></video>
                </li>
            </ul>
        </ul>
        <div>
            <img src="/static/images/f1.jpg"/>
            <table class="table2">
                <tr>
                    <td>
                        <a href="stln.html">
                            <img src="/static/images/hi3.jpg" width="206" height="315"/>
                            <div id="lx">
                                <a href="stln.html" id="e">
                                    圣托里尼婚纱旅拍5晚7日
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <img src="/static/images/hi5.png" width="206" height="315"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    印度婚纱旅拍4晚6日
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <img src="/static/images/hi6.png" width="206" height="315"/>
                            <div id="lx">
                                <a href="#" id="e">捷克布拉格婚旅5晚7日</a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#">
                            <img src="/static/images/hi7.jpg" width="206" height="315"/>
                            <div id="lx">
                                <a href="#" id="e">法国巴黎婚纱旅拍5晚7日</a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <img src="/static/images/f2.jpg"/>
            <table class="table3">
                <tr>
                    <td>
                        <a href="#"><img src="/static/images/xz1.jpg" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    日本哆啦A梦列车
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/xz2.jpg" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    大连东港水城2日游
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/xz3.jpg" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    库布齐沙漠3日游
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/xz4.jpg" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    青海日照沙滩2日游
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                </tr>
            </table>
            <img src="/static/images/f3.jpg"/>
            <table class="table3">
                <tr>
                    <td>
                        <a href="#"><img src="/static/images/qzy2.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    库布齐沙漠游
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg" />
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/qzy3.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    成都熊猫义工
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/qzy4.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    开心农场集结号
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/qzy6.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    景德镇艺妹瓷都
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                </tr>
            </table>
            <img src="/static/images/f4.jpg"/>
            <table class="table3">
                <tr>
                    <td>
                        <a href="#"><img src="/static/images/tj2.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    上海影视乐园
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/tj3.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    武汉神农架
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/tj4.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    海南三亚划船
                                </a>
                            </div>

                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                    <td>
                        <a href="#"><img src="/static/images/tj1.png" width="206" height="137"/>
                            <div id="lx">
                                <a href="#" id="e">
                                    北京永定河大峡谷
                                </a>
                            </div>
                            <img src="/static/images/价格1.jpg"/>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
     <div id="foot">
        <img src="/static/images/p8.jpg" width="960" height="70"/>
    </div>

    <a href="#top" style="display:block;position:fixed;right:50px; bottom:20px;">
        <img src="/static/images/返回顶部1.png" width="100" height="110"
             onmouseover="this.src='/static/images/返回顶部2.png';"
             onmouseout="this.src='/static/images/返回顶部1.png';"/>
    </a>

    <script type="text/javascript">
        $(document).ready(function () {

            $(".prev,.next").hover(function () {
                $(this).stop(true, false).fadeTo("show", 0.9);
            }, function () {
                $(this).stop(true, false).fadeTo("show", 0.4);
            });

            $(".banner-box").slide({
                titCell: ".hd ul",
                mainCell: ".bd ul",
                effect: "fold",
                interTime: 3500,
                delayTime: 500,
                autoPlay: true,
                autoPage: true,
                trigger: "click"
            });

        });
    </script>
</div>
</body>
</html>
