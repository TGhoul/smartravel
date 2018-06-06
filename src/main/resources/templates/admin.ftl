<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>智慧旅游-后台管理</title>
    <link href="/static/css/wd.css" rel="stylesheet" type="text/css"/>
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
    <div id="navileft" style="background: url(/static/images/left1.jpg) no-repeat;margin-top: 60px;">
        <ul>
            <li id="content2" onmouseover="changeContent(this)"><a class="btn1" href="#3">订单管理</a></li>
            <li id="content2" onmouseover="changeContent(this)"><a class="btn2" href="#3">线路上新</a></li>
        </ul>
    </div>
    <div id="naviright1" style="background-color:aliceblue ;margin-top:60px;height:650px;width:780px;float: right;">
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

    <div id="naviright2" style="background-color:aliceblue ;margin-top:60px;display: none;height:650px;width:780px;float: right;">
        <img src="/static/images/admin.jpg"/>
        <input type="hidden" class="img-upload" data-url="">
        添加标题：<input type="text" class="name" name="username"
                    style="width:300px;height:33px; "/>
        添加价格：<input type="text" class="price" name="price"
                    style="width:300px;height:33px; "/><br /><br />
        出发日期：<input type="text" class="startDate" name="date"
                    style="width:300px;height:33px; " placeholder="选择出发日期"/>
        结束日期：<input type="text" class="endDate" name="date"
                    style="width:300px;height:33px; " placeholder="选择结束日期"/>
        添加图片：<input id="fileupload" type="file" name="imgfile" data-url="/smartravel/upload/img" multiple
                    style="width:305px;height:40px;background:#0594a2;color:white;font-size:18px; font-family:黑体;  border:2px solid #057380; border-radius:5px;margin-top: 25px;"/><br/><br/>
        添加详情：<textarea row="5"  cols="20" type="text" class="detail" name="textarea"
                    style="width:300px;height:100px; "></textarea><br/><br/>
        <select class="type" style="width:305px;height:40px;">
            <option value="0">省内推荐</option>
            <option value="1">国内推荐</option>
            <option value="2">国外推荐</option>
        </select>
        <input class="btn-save" type="button" value="保存"
               style="width:80px;height:45px;background:#0594a2;color:white;font-size:18px; font-family:黑体;  border:2px solid #057380; border-radius:5px;margin-top: 15px;"/>
    </div>

    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <script src="/static/js/jquery.ui.widget.js"></script>
    <script src="/static/js/jquery.iframe-transport.js"></script>
    <script src="/static/js/jquery.fileupload.js"></script>
    <script src="/static/laydate/laydate.js"></script>
    <script>
        //上传图片
        $(function () {
            $('#fileupload').fileupload({
                dataType: 'json',
                done: function (e, res) {
                    var imgurl = res.result.data.imgurl;
                    if (imgurl !== null || imgurl !== '') {
                        alert('上传成功');
                    } else {
                        alert('上传失败');
                    }
                    $('.img-upload').attr('data-url', imgurl);
                }
            });

            //时间选择插件
            laydate.render({
                elem: '.startDate', //指定元素
                format: 'yyyy-MM-dd'
            });

            laydate.render({
                elem: '.endDate', //指定元素
                format: 'yyyy-MM-dd'
            });
        });
        //保存旅游线路
        $('.btn-save').on("click", function () {
            var imgurl = $('.img-upload').attr('data-url');
            var price = $('.price').val();
            var name = $('.name').val();
            var startDate = $('.startDate').val();
            var endDate = $('.endDate').val();
            var type = $('.type').val();
            var detail = $('.detail').val();
            $.post('/smartravel/scenic/save', {
                name: name, summaryImg: imgurl,
                price: price, startDate: startDate,
                endDate: endDate, type: type, detail: detail
            }, function (res) {
                if (res.isSuccess === 1) {
                    alert('保存成功');
                } else {
                    alert('保存失败');
                }
            });
        });

        function orderList() {
            //渲染退款订单列表
            $.post('/smartravel/admin/order/list', function (res) {
                if (res.isSuccess === 1) {
                    var hotelList = res.data['hotel'];
                    var scenicList = res.data['scenic'];
                    var trainList = res.data['train'];

                    var html = '';
                    for (var i = 0; i < hotelList.length; i++) {
                        html += '<tr>\n' +
                                '    <td id="m">' + hotelList[i].hotelName + '</td>\n' +
                                '    <td id="m">退款中</td>\n' +
                                '    <td id="m" class="refund-btn" data-type="1" data-id="' + hotelList[i].id + '"><a href="#">审批退款</a></td>\n' +
                                '</tr>';
                    }

                    for (var j = 0; j < scenicList.length; j++) {
                        html += '<tr>\n' +
                                '    <td id="m">' + scenicList[j].scenicName + '</td>\n' +
                                '    <td id="m">退款中</td>\n' +
                                '    <td id="m" class="refund-btn" data-type="2" data-id="' + scenicList[j].id + '"><a href="#">审批退款</a></td>\n' +
                                '</tr>';
                    }

                    for (var k = 0; k < trainList.length; k++) {
                        html += '<tr>\n' +
                                '    <td id="m">' + trainList[k].name + '</td>\n' +
                                '    <td id="m">退款中</td>\n' +
                                '    <td id="m" class="refund-btn" data-type="3" data-id="' + trainList[k].id + '"><a href="#">审批退款</a></td>\n' +
                                '</tr>';
                    }

                    $('.order-list').empty();
                    $('.order-list').append(html);
                }
            });
        }

        orderList();

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
        //线路上新
        $('.btn2').on('click', function () {
            $('#naviright1').hide();
            $('#naviright2').show();

        });
        //订单列表
        $('.btn1').on('click', function () {
            $('#naviright1').show();
            $('#naviright2').hide();
            orderList();
        });

    </script>
</body>
</html>
