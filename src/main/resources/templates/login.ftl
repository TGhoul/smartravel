<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-登录</title>
    <link href="/static/css/login.css" rel="stylesheet"/>
    <script src="/static/js/gVerify.js"></script>
</head>
<body style="background:url(/static/images/dl.jpg) center 0 no-repeat ;width:100%;height:100%;">
<a name="top"></a>
<table width="100%">
    <tr>
        <td align="left">
            <form id="ss" action="" name="searchFrm" method="post" style="font-size:0;">
                <input type="text" style="width:500px;height:33px;"/>
                <input type="submit" value="搜 索"
                       style="width:60px;height:40px;background:#4b589e;color:white;font-size:18px; font-family:黑体;border:none"/>
            </form>
        </td>
    </tr>
</table>

<div id="content">
    <form>
        <table>
            <tr>
                <td colspan="2">
                    <h2>用户登录</h2>
                </td>
            </tr>
            <tr>
                <td id="m"><input class="username" type="text" placeholder="用户名/手机号" name="username" id="username" autofocus="autofocus"
                                  style="width:300px;height:33px; "/></td>
            </tr>
            <tr>
                <td id="m"><input class="password" type="password" placeholder="登录密码" name="password" id="password"
                                  style="width:300px;height:33px; "/></td>
            </tr>
            <tr>
                <td id="m">
                    <input type="text" placeholder="验证码" name="code" id="code"
                           style="width:145px;height:33px;"/>
                    <div id="v_container" style="width:140px;height:39px;display: inline-block"></div>
                </td>
            </tr>
            <tr>
                <td id="n" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radiogroup" value="记住密码"/>记住密码
                    <input type="radio" name="radiogroup" value="忘记密码"/>忘记密码
                </td>
            </tr>
            <tr>
                <td><input id="btn" type="button" value="登 录"
                           style="width:305px;height:45px;background:#0594a2;color:white;font-size:18px; font-family:黑体;  border:2px solid #057380; border-radius:5px;"/>
                </td>
            </tr>
            <tr>
                <td class="zc"><img id="b" src="/static/images/wb1.png" height="25" width="25"
                                    onmouseover="this.src='/static/images/wb2.png';"
                                    onmouseout="this.src='/static/images/wb1.png';"/>
                    <img id="b" src="/static/images/qq1.png" height="25" width="25"
                         onmouseover="this.src='/static/images/qq2.png';"
                         onmouseout="this.src='/static/images/qq1.png';"/>
                    <img id="b" src="/static/images/wx1.png" height="25" width="25"
                         onmouseover="this.src='/static/images/wx2.png';"
                         onmouseout="this.src='/static/images/wx1.png';"/>
                    <a href="/smartravel/join">免费注册</a>
                </td>
            </tr>
        </table>
    </form>
</div>

<script src="/static/js/jquery-3.3.1.min.js"></script>
<script>
    var verifyCode = new GVerify("v_container");
    // 注册请求
    $('#btn').on('click', function () {
        var res = verifyCode.validate(document.getElementById("code").value);
        if (res) {
            var username = $('.username').val();
            var password = $('.password').val();
            $.post('/smartravel/signin', {username: username, password: password}, function (res) {
                if (res.isSuccess === 1) {
                    alert('登录成功');
                    location.href = '/smartravel/index';
                } else {
                    alert(res.errmsg);
                }
            });

        } else {
            alert("验证码错误");
        }
    });
</script>
</body>
</html>





