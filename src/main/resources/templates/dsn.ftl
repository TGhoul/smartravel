﻿<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-迪士尼一日游</title>
    <link href="/static/css/dsn.css" rel="stylesheet">
</head>
<body style="background:url(/static/images/dsn5.jpg) center 0 no-repeat ;width:100%;height:100%;">
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
</div>
<input class="btn" data-id="1" type="button" value="立即预定"
       style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 247px;margin-left: 1010px;"/>


</body>
<script src="/static/js/jquery-1.7.2.min.js"></script>
<script>
    $('.btn').on('click', function () {
        var scenicId = $(this).attr('data-id');
        $.post('/smartravel/scenic/preorder', {scenicId: scenicId}, function (res) {
            if (res.isSuccess === 1) {
                alert('预定成功');
            } else {
                alert(res.errmsg);
            }
        });
    });
</script>
</html>