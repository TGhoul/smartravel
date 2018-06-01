<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>智慧旅游-我的订单</title>
    <link href="/static/css/wd.css" rel="stylesheet" type="text/css" />
    <script src="/static/js/jquery-1.7.2.min.js"></script>
</head>

<body  style="background:url(/static/images/bg.jpg) center 0 no-repeat ;width:100%;height:100%;">
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
    <div id="navileft" style="background: url(/static/images/left1.jpg) ;margin-top:60px;">
        <ul>
            <li id="content1" class="order" data-type="1"><a href="#3">全部订单</a></li>
            <li id="content2" class="order" data-type="2"><a href="#3">酒店订单</a></li>
            <li id="content3" class="order" data-type="3"><a href="#3">旅游订单</a></li>
            <li id="content4" class="order" data-type="4"><a href="#3">火车票订单</a></li>
        </ul>
    </div>
    <div id="naviright"style="background-color:aliceblue ;margin-top:60px;">
        <img src="/static/images/hy.jpg"/>
        <table>
            <tr >
                <td id="n">商品信息</td>
                <td id="n">实付款</td>
                <td id="n">交易状态</td>
            </tr>
        </table>
        <div id="aboutcontent1">

            <table class="order-list">
                <tr >
                    <td id="m">上海徐汇云睿酒店</td>
                    <td id="m">¥398</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">上海延安酒店</td>
                    <td id="m">¥498</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">杭州蝶来望湖宾馆</td>
                    <td id="m">¥688</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">浙江梅地亚宾馆</td>
                    <td id="m">¥999</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">上海迪士尼一日游</td>
                    <td id="m">¥268</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">圣托里尼婚纱旅拍5晚7日游</td>
                    <td id="m">¥14800</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>二等座</td>
                    <td id="m">¥553</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>一等座</td>
                    <td id="m">¥933</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>商务座</td>
                    <td id="m">¥1748</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>二等座</td>
                    <td id="m">¥553</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>一等座</td>
                    <td id="m">¥933</td>
                    <td id="m">预定成功</td>
                </tr>
                <tr >
                    <td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>商务座</td>
                    <td id="m">¥1748</td>
                    <td id="m">预定成功</td>
                </tr>
            </table>
        </div>

        <#--<div id="aboutcontent2">-->

            <#--<table>-->
                <#--<tr >-->
                    <#--<td id="m">上海徐汇云睿酒店</td>-->
                    <#--<td id="m">¥398</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">上海延安酒店</td>-->
                    <#--<td id="m">¥498</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">杭州蝶来望湖宾馆</td>-->
                    <#--<td id="m">¥688</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">浙江梅地亚宾馆</td>-->
                    <#--<td id="m">¥999</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
            <#--</table>-->
        <#--</div>-->

        <#--<div id="aboutcontent4">-->

            <#--<table>-->

                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>二等座</td>-->
                    <#--<td id="m">¥553</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>一等座</td>-->
                    <#--<td id="m">¥933</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥 <br/>08:05——13:47 <br/>商务座</td>-->
                    <#--<td id="m">¥1748</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>二等座</td>-->
                    <#--<td id="m">¥553</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>一等座</td>-->
                    <#--<td id="m">¥933</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">北京南到上海虹桥<br/> 08:35——14:22 <br/>商务座</td>-->
                    <#--<td id="m">¥1748</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
            <#--</table>-->
        <#--</div>-->
        <#--<div id="aboutcontent3">-->

            <#--<table>-->

                <#--<tr >-->
                    <#--<td id="m">上海迪士尼一日游</td>-->
                    <#--<td id="m">¥268</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
                <#--<tr >-->
                    <#--<td id="m">圣托里尼婚纱旅拍5晚7日游</td>-->
                    <#--<td id="m">¥14800</td>-->
                    <#--<td id="m">预定成功</td>-->
                <#--</tr>-->
            <#--</table>-->
        <#--</div>-->
    </div>

</div>
<script>
    var currentNode = "content2"; var changeContent = function(obj){
        document.getElementById(currentNode).style.color="black"; document.getElementById("about"+currentNode).style.display = "none";
        currentNode = obj.getAttribute("id");
        document.getElementById(currentNode).style.color="red"; document.getElementById("about"+currentNode).style.display = "block";
    };

    $('.order').on('click', function () {
        var orderType = Number($(this).attr('data-type'));
        //全部订单
        if (orderType === 1) {
            allOrder();
        } else if (orderType === 2) {
            hotelOrder();
        } else if (orderType === 3) {

        } else {
            trainOrder();
        }
    });

    function allOrder() {
        var html = '';
        var hotelList;
        var trainList;
        $.post('/smartravel/hotel/order/list', function (res) {
            if (res.isSuccess === 1) {
                hotelList = res.data;
                $.post('/smartravel/train/order/list', function (res) {
                    if (res.isSuccess === 1) {
                        trainList = res.data;
                        for (var i = 0; i < hotelList.length; i++) {
                            html += '<tr >\n' +
                                    '    <td id="m">'+ hotelList[i].hotelName +'</td>\n' +
                                    '    <td id="m">¥'+ hotelList[i].price +'</td>\n' +
                                    '    <td id="m">预定成功</td>\n' +
                                    '</tr>';
                        }

                        for (var j = 0; j < trainList.length; j++) {
                            html += '<tr >\n' +
                                    '    <td id="m">'+ trainList[j].name +'<br/>'+ trainList[j].startTime +'——'+ trainList[j].endTime +'<br/>商务座</td>\n' +
                                    '    <td id="m">¥'+ trainList[j].price +'</td>\n' +
                                    '    <td id="m">预定成功</td>\n' +
                                    '</tr>';
                        }

                        $('.order-list').empty();
                        $('.order-list').append(html);
                    }
                });
            }
        });
    }
    allOrder();

    function hotelOrder() {
        $.post('/smartravel/hotel/order/list', function (res) {
            if (res.isSuccess === 1) {
                var hotelList = res.data;
                var html = '';
                for (var i = 0; i < hotelList.length; i++) {
                    html += '<tr >\n' +
                            '    <td id="m">'+ hotelList[i].hotelName +'</td>\n' +
                            '    <td id="m">¥'+ hotelList[i].price +'</td>\n' +
                            '    <td id="m">预定成功</td>\n' +
                            '</tr>';
                }
                $('.order-list').empty();
                $('.order-list').append(html);
            }
        });
    }

    function trainOrder() {
        $.post('/smartravel/train/order/list', function (res) {
            if (res.isSuccess === 1) {
                var trainList = res.data;
                var html = '';
                for (var j = 0; j < trainList.length; j++) {
                    html += '<tr >\n' +
                            '    <td id="m">'+ trainList[j].name +'<br/>'+ trainList[j].startTime +'——'+ trainList[j].endTime +'<br/>商务座</td>\n' +
                            '    <td id="m">¥'+ trainList[j].price +'</td>\n' +
                            '    <td id="m">预定成功</td>\n' +
                            '</tr>';
                }

                $('.order-list').empty();
                $('.order-list').append(html);
            }
        });
    }
</script>
</body>
</html>
