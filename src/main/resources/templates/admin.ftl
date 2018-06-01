<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>智慧旅游-后台管理</title>
    <link href="/static/css/wd.css" rel="stylesheet" type="text/css"/>
    <script src="/static/js/jquery-1.7.2.min.js"></script>
</head>
<script>
    var currentNode = "content2";
    var changeContent = function (obj) {
        document.getElementById(currentNode).style.color = "black";
        document.getElementById("about" + currentNode).style.display = "none";
        currentNode = obj.getAttribute("id");
        document.getElementById(currentNode).style.color = "red";
        document.getElementById("about" + currentNode).style.display = "block";
    } </script>
<body style="background:url(/static/images/bg.jpg) center 0 no-repeat ;width:100%;height:100%;">
<a name="top"></a>
<table width="100%">
</table>

<div id="container">
    <div id="navileft" style="background: url(/static/images/left1.jpg) ;margin-top:60px;">
        <ul>
            <li id="content2" onmouseover="changeContent(this)"><a href="#3">订单管理</a></li>
        </ul>
    </div>
    <div id="naviright" style="background-color:aliceblue ;margin-top:60px;">
        <img src="/static/images/admin.jpg"/>
        <table>
            <tr>
                <td id="n">商品信息</td>
                <td id="n">交易状态</td>
                <td id="n">操作</td>
            </tr>
        </table>
        <div id="aboutcontent2">
            <table class="order-list">
                <#--<tr>-->
                    <#--<td id="m">上海徐汇云睿酒店</td>-->
                    <#--<td id="m">预定成功</td>-->
                    <#--<td id="m"><a href="#">审批退款</a></td>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td id="m">上海延安酒店</td>-->
                    <#--<td id="m">预定成功</td>-->
                    <#--<td id="m"><a href="#">审批退款</a></td>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td id="m">杭州蝶来望湖宾馆</td>-->
                    <#--<td id="m">预定成功</td>-->
                    <#--<td id="m"><a href="#">审批退款</a></td>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td id="m">浙江梅地亚宾馆</td>-->
                    <#--<td id="m">预定成功</td>-->
                    <#--<td id="m"><a href="#">审批退款</a></td>-->
                <#--</tr>-->
            </table>
        </div>
    </div>

    <script>
        //渲染退款订单列表
        $.post('/smartravel/admin/order/list', function (res) {
            if (res.isSuccess === 1) {
                var hotelList = res.data['hotel'];
                var scenicList = res.data['scenic'];
                var trainList = res.data['train'];

                var html = '';
                for (var i = 0; i < hotelList.length; i++) {
                    html += '<tr>\n' +
                            '    <td id="m">'+ hotelList[i].hotelName +'</td>\n' +
                            '    <td id="m">退款中</td>\n' +
                            '    <td id="m" class="refund-btn" data-type="1" data-id="'+ hotelList[i].id +'"><a href="#">审批退款</a></td>\n' +
                            '</tr>';
                }

                for (var j = 0; j < scenicList.length; j++) {
                    html += '<tr>\n' +
                            '    <td id="m">'+ scenicList[j].scenicName +'</td>\n' +
                            '    <td id="m">退款中</td>\n' +
                            '    <td id="m" class="refund-btn" data-type="1" data-id="'+ scenicList[j].id +'"><a href="#">审批退款</a></td>\n' +
                            '</tr>';
                }

                for (var k = 0; k < trainList.length; k++) {
                    html += '<tr>\n' +
                            '    <td id="m">'+ trainList[k].name +'</td>\n' +
                            '    <td id="m">退款中</td>\n' +
                            '    <td id="m" class="refund-btn" data-type="1" data-id="'+ trainList[k].id +'"><a href="#">审批退款</a></td>\n' +
                            '</tr>';
                }

                $('.order-list').empty();
                $('.order-list').append(html);
            }
        });

        $('body').on('click', '.refund-btn', function () {
            if (confirm('确定通过用户退款请求？')) {
                //申请退款
                var type = $(this).attr('data-type');
                var orderId = $(this).attr('data-id');
                $.post('/smartravel/admin/review/order', {type: type, orderId: orderId}, function (res) {
                    if (res.isSuccess === 1) {
                        alert('退款成功');
                        location.href = '/smartravel/admin/index';
                    } else {
                        alert('退款失败');
                    }
                });
            }
        });
    </script>
</body>
</html>
