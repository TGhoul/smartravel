<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-酒店预订</title>
    <link href="/static/css/jd.css" rel="stylesheet"/>
    <script src="/static/js/jquery-1.7.2.min.js"></script>
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
    <img src="/static/images/jd.jpg"/>
    <div id="navi1">
        <p>&nbsp;
            <img class="t" src="/static/images/rm.jpg"/>

            <a href="#" id="content1" onmouseover="changeContent(this)">北京</a>
            <a href="#" id="content2" onmouseover="changeContent(this, 1)">上海</a>
            <a href="#" id="content3" onmouseover="changeContent(this, 2)">杭州</a>
            <a href="#">成都</a>
            <a href="#">深圳</a>
            <a href="#">广州</a>
        </p>

    </div>
    <br/>
    <div id="content1">
        <img src="/static/images/rm5.jpg" id="aboutcontent1"/>
        <input class="pre-order1 btn" type="button" value="立即预定" style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 100px;margin-left: 810px; position: absolute;"/>
        <input class="pre-order2 btn" type="button" value="立即预定" style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 280px;margin-left: 810px; position: absolute;"/>
        <input class="pre-order3 btn" type="button" value="立即预定" style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 460px;margin-left: 810px; position: absolute;"/>
        <input class="pre-order4 btn" type="button" value="立即预定" style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 640px;margin-left: 810px; position: absolute;"/>
        <input class="pre-order5 btn" type="button" value="立即预定" style="width:120px;height:45px;background:#f15609;color:white;font-size:18px; font-family:黑体;  border:1px solid #ba460c; border-radius:5px; margin-top: 820px;margin-left: 810px; position: absolute;"/>

        <img src="/static/images/rm2.jpg" id="aboutcontent2"/>
        <img src="/static/images/rm3.jpg" id="aboutcontent3"/>


    </div>

</div>
<a href="#top" style="display:block;position:fixed;right:50px; bottom:20px;"><img src="/static/images/返回顶部1.png" width="100"
                                                                                  height="110"
                                                                                  onmouseover="this.src='/static/images/返回顶部2.png';"
                                                                                  onmouseout="this.src='/static/images/返回顶部1.png';"/></a>

<script>
    var currentNode = "content1";
    var changeContent = function (obj, place) {
        document.getElementById(currentNode).style.color = "black";
        document.getElementById("about" + currentNode).style.display = "none";
        currentNode = obj.getAttribute("id");
        document.getElementById(currentNode).style.color = "red";
        document.getElementById("about" + currentNode).style.display = "block";

        if (place === 1) {
            $('.pre-order1').attr('data-id', 1);
            $('.pre-order2').attr('data-id', 2);
            $('.pre-order3').attr('data-id', 3);
            $('.pre-order4').attr('data-id', 4);
            $('.pre-order5').attr('data-id', 5);
        } else {
            $('.pre-order1').attr('data-id', 6);
            $('.pre-order2').attr('data-id', 7);
            $('.pre-order3').attr('data-id', 8);
            $('.pre-order4').attr('data-id', 9);
            $('.pre-order5').attr('data-id', 10);
        }
    };

    $('.btn').on('click', function () {
        var hotelId = $(this).attr('data-id');
        $.post('/smartravel/hotel/preorder', {hotelId: hotelId}, function (res) {
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