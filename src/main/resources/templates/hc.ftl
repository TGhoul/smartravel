<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-火车票预订</title>
    <link href="/static/css/hc.css" rel="stylesheet"/>
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
    <div id="content" style="background-color:#2ca999; margin-top:40px;text-align: center;width:960px;">
        <ul style="padding-left: 1px; margin-top:0;">
            <li style="list-style-type:none;text-align: center;">
                火车票查询：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="出发" name="username" id="username"
                                                     autofocus="autofocus"
                                                     style="width:250px;height:33px;margin:10px 0 10px 0; padding-left: 20px;"/>
                &nbsp;&nbsp;&nbsp;&nbsp;—&nbsp;&nbsp;到&nbsp;&nbsp;—
                <input type="text" placeholder="到达" name="username" id="username"
                       style="width:250px;height:33px; margin:10px 20px 10px 20px;padding-left: 20px;"/>
                <input type="submit" value="搜索" onclick="location.href='/smartravel/hcyd'"
                       style="width:80px;height:40px;background:#e75659;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px;"/>
            </li>
        </ul>
    </div>
    <img src="/static/images/hcp.jpg" style="margin-top: 0px;"/>
</div>


</body>
</html>