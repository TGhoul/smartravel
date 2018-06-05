<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-线路预定</title>
    <link href="/static/css/yd.css" rel="stylesheet">
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
</div>
<div style="width:960px; margin:40px auto;
   background-color:white;">
    <table>
        <tr>
            <td align="left">
                <img src="${scenic.summaryImg}" style="width:600px;height:350px;"/>
            </td>
            <td align="right">
                <input type="hidden" class="scenic" data-id="${scenic.id}">
                <b style="float: left;font-size: 25px;margin-left: 40px;margin-top:20px;font-family: 黑体">${scenic.name}</b>
                <br/> <br/> <br/>
                <b style="float: left;  background-color:#fff9ed;color:#ff6300;font-size: 30px;width:350px;height: 60px;text-align: center;padding-top: 20px;">价格：${scenic.price}</b>
                <input class="btn" type="button" value="立即预定"
                       style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 20px;"/>
            </td>
        </tr>
    </table>
</div>


<div id="foot">
    <img src="/static/images/p8.jpg" width="960" height="70"/>
</div>
<script src="/static/js/jquery-3.3.1.min.js"></script>
<script>
    $('.btn').on('click', function () {
        var scenicId = $('.scenic').attr('data-id');
        $.post('/smartravel/scenic/preorder', {scenicId: scenicId}, function (res) {
            if (res.isSuccess === 1) {
                alert('预定成功');
            } else {
                alert(res.errmsg);
            }
        });
    });
</script>
</body>
</html>