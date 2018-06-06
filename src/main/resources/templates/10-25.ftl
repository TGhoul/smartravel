<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-10-25</title>
    <link href="/static/css/15-25.css" rel="stylesheet"/>
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
    <embed src="/static/swf/动画.swf" width="960" height="430" wmode="transparent" />
    <img src="/static/images/xian.png" width="960"/>
    <div id="navi1">
        <p>&nbsp;<img class="t" src="/static/images/周边游.jpg"/>
            <a name="p1">
                <a href="#">迪士尼</a>
                <a href="#">方特</a>
                <a href="#">欢乐谷</a>
                <a href="#">世界之窗</a>
                <a href="#">海洋公园</a>
                <a href="#">恐龙园</a>
                <a href="#">长隆</a>
                <a href="#">更多</a>
            </a>
        </p>
    </div>
    <div id="content1">
        <img src="/static/images/ylc.jpg" width="215" height="455"/>
        <table class="table2">
            <tr>
                <td onclick="location.href = '/smartravel/dsn';">
                    <a href="#">
                        <img src="/static/images/dsn.jpg" width="210" height="120"/>
                        <div id="lx">
                            <a href = "/smartravel/dsn" id="e">
                                上海迪士尼-2日游
                            </a>
                        </div>
                        <img src="/static/images/价格3.jpg"/>
                    </a>
                </td>

                <td>
                    <a href="#"><img src="/static/images/ft.jpg" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                郑州方特-1日游
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>

                <td>
                    <a href="#"><img src="/static/images/hlg2.jpg" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                北京欢乐谷-1日游
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#">
                        <img src="/static/images/sjzc.jpg" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                深圳世界之窗-1日游
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/hy.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                香港海洋公园-1日游
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/kl.jpg" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                常州中华恐龙园-1日游
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <div id="navi2">
        <p>&nbsp;<img class="t" src="/static/images/国内游.jpg "/>
            <a name="p2"><a href="#">北京</a>
                <a href="#">上海</a>
                <a href="#">三亚</a>
                <a href="#">湖南</a>
                <a href="#">河南</a>
                <a href="#">杭州</a>
                <a href="#">四川</a>
                <a href="#">武汉</a>
                <a href="#">广州</a>
                <a href="#">更多</a>
            </a>
        </p>
    </div>

    <div id="content2">
        <img src="/static/images/xly.jpg" width="215" height="455"/>
        <table class="table2">
            <tr>
                <td>
                    <a href="#"><img src="/static/images/xly1.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                奇幻森林3日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/xly2.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                野趣探索5日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/xly3.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                三亚潜水1日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#"><img src="/static/images/xly4.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                竹林探索3日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/xly5.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                田间体验1日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
                <td>
                    <a href="#"><img src="/static/images/xly7.png" width="210" height="120"/>
                        <div id="lx">
                            <a href="#" id="e">
                                野外生存3日营
                            </a>
                        </div>
                        <img src="/static/images/价格1.jpg"/>
                    </a>
                </td>
            </tr>
        </table>
    </div>

    <div id="navi3">
        <p>&nbsp;<img class="t" src="/static/images/出境短.jpg"/>
            <a name="p3">
                <a href="#">英国</a>
                <a href="#">美国</a>
                <a href="#">加拿大</a>
                <a href="#">韩国</a>
                <a href="#">日本</a>
                <a href="#">泰国</a>
                <a href="#">法国</a>
                <a href="#">德国</a>
                <a href="#">印度</a>
                <a href="#">更多</a>
            </a>
        </p>
    </div>

    <div id="content3">
        <img src="/static/images/yx.jpg" width="215" height="455"/>
        <table class="table2">
            <tr>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx1.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            美国伯克利音乐学院
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx2.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            英国牛津大学
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/></td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx3.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            英国曼彻斯特大学
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx4.png" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            英国剑桥大学
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>

                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx5.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            加拿大多伦多大学
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>

                <td>
                    <a href="#"></a>
                    <img src="/static/images/yx6.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            美国哈佛大学
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="navi4">
        <p>&nbsp;<img class="t" src="/static/images/出境长.jpg"/>
            <a name="p4">
                <a href="#"></a>
                <a href="#">厦门</a>
                <a href="#">青岛</a>
                <a href="#">成都</a>
                <a href="#">云南</a>
                <a href="#">香港</a>
                <a href="#">澳门</a>
                <a href="#">台湾</a>
                <a href="#">美洲</a>
                <a href="#">澳洲</a>
                <a href="#">更多</a>
            </a>
        </p>
    </div>

    <div id="content4">
        <img src="/static/images/bylx.jpg" width="215" height="455"/>
        <table class="table2">
            <tr>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx1.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            厦门鼓浪屿3日游
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx2.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            青岛2日游
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx3.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            成都2日游
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx4.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            云南大理5日游
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx5.jpg" width="210" height="120"/>
                    <div id="lx">
                        <a href="#" id="e">
                            青海湖5日游
                        </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
                <td>
                    <a href="#"></a>
                    <img src="/static/images/bylx6.jpg" width="210" height="120"/>
                    <div id="lx"><a href="#" id="e">
                        上海3日游
                    </a>
                    </div>
                    <img src="/static/images/价格1.jpg"/>
                </td>
            </tr>
        </table>
    </div>


    <div id="foot">
        <img src="/static/images/p8.jpg" width="960" height="70"/>
    </div>
    <a href="#top" style="display:block;position:fixed;right:50px; bottom:20px;"><img src="/static/images/返回顶部1.png"
                                                                                      width="100"
                                                                                      height="110"
                                                                                      onmouseover="this.src='/static/images/返回顶部2.png';"
                                                                                      onmouseout="this.src='/static/images/返回顶部1.png';"/></a>
</div>
</body>
</html>







