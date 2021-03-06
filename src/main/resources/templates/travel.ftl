<!DOCTYPE html>
<html>
<head>
    <title>足迹旅游网-旅行攻略</title>
    <link href="/static/css/travel.css" rel="stylesheet"/>
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

    <div id="navi">
        <ul>
            <li><a class="n1" href="#1">当季<br/>热门</a></li>
            <li><a class="n2" href="#2">主题<br/>推荐</a></li>
            <li><a class="n3" href="#3">摄影<br/>贴图</a></li>
            <li><a class="n4" href="#4">达人<br/>经验</a></li>
        </ul>
    </div>
    <img id="img" src="/static/images/p20.jpg"/>
    <div id="content">
        <a name="1" > <p>当季热门</p></a>
    </div>
    <div id="right">
        <li><a href="" title="大理"><img src="/static/images/p23.jpg" width="240" height="140"/></a>&nbsp;&nbsp;
            <a href="" title="巴厘岛"><img src="/static/images/p24.jpg" width="240" height="140"/></a></li>
        <li><a href="" title="香港迪士尼"><img src="/static/images/p25.jpg" width="240" height="140"/></a>&nbsp;&nbsp;
            <a href="" title="上海"><img src="/static/images/p2.jpg" width="240" height="140"/></a></li>
    </div>
    &nbsp;&nbsp;<a href="" title="三亚"><img src="/static/images/p21.jpg" height="314" width="380"/></a>
    <div id="content">
        <a name="2" ><p>主题推荐</p></a>
    </div>
    &nbsp;&nbsp;<a href="" title="户外活动"><img src="/static/images/zt1.png" width="180"/></a>
    <a href="" title="人文探索"><img src="/static/images/zt2.png" width="180"/></a>
    <a href="" title="赛事庆典"><img src="/static/images/zt3.png" width="180"/></a>
    <a href="" title="拓展提升"><img src="/static/images/zt4.png" width="180"/></a>
    <a href="" title="健康养生"><img src="/static/images/zt5.png" width="180"/></a>
    <div id="content">
        <a name="3" ><p>摄影贴图</p></a>
    </div>
    &nbsp;<img src="/static/images/sy1.jpg" height="314" width="230"/>
    <img src="/static/images/sy2.png" height="314" width="230"/>
    <img src="/static/images/sy3.jpg" height="314" width="230"/>
    <img src="/static/images/sy4.jpg" height="314" width="230"/>
    &nbsp;<img src="/static/images/sy5.jpg" height="314" width="230"/>
    <img src="/static/images/sy6.jpg" height="314" width="230"/>
    <img src="/static/images/sy7.jpg" height="314" width="230"/>
    <img src="/static/images/sy8.jpg" height="314" width="230"/>
    <div id="content">
        <a name="4" ><p>达人经验</p></a>
    </div>
    &nbsp;&nbsp;<img src="/static/images/dr1.png" height="314" width="930"/>
    &nbsp;&nbsp;<img src="/static/images/dr2.png" height="314" width="930"/>
    &nbsp;&nbsp;<img src="/static/images/dr3.png" height="314" width="930"/>
    <div id="foot">
        <img src="/static/images/p8.jpg" width="960" height="70"/>
    </div>
   <a href="#top" style="display:block;position:fixed;right:50px; bottom:20px;"><img src="/static/images/返回顶部1.png"  width="100" height="110" onmouseover="this.src='/static/images/返回顶部2.png';"onmouseout="this.src='/static/images/返回顶部1.png';"/></a>
</div>
</body>
</html>







