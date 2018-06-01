<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-注册</title>
    <link href="/static/css/zc.css" rel="stylesheet"/>
    <script src="/static/js/gVerify.js"></script>
    <script src="/static/js/jquery-1.7.2.min.js"></script>
</head>
<body style="background:url(/static/images/dl.jpg) center 0 no-repeat ;width:100%;height:100%;">
<a name="top"></a>
<div id="content">
    <form>
        <table>
            <tr>
                <td colspan="2">
                    <h2>用户注册</h2>
                </td>
            </tr>
            <tr>
                <td id="m"><input class="username" type="text" placeholder="输入用户名" name="username" id="username"
                                  style="width:300px;height:33px; "/></td>
            </tr>
            <tr>
                <td id="m"><input class="password" type="password" placeholder="输入密码" name="password" id="password"
                                  style="width:300px;height:33px; "/></td>
            </tr>
            <tr>
                <td id="m"><input class="password2" type="password" placeholder="确认密码" name="password" id="password"
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
                <td><input id="btn" type="button" value="注 册"
                           style="width:305px;height:45px;background:#0594a2;color:white;font-size:18px; font-family:黑体;  border:2px solid #057380; border-radius:5px;margin-top: 8px;"/>
                </td>
            </tr>

        </table>
    </form>
</div>

<script>
    var verifyCode = new GVerify("v_container");
    // 注册请求
    $('#btn').on('click', function () {
        var username = $('.username').val();
        var password = $('.password').val();
        var rePassword = $('.password2').val();
        var res = verifyCode.validate(document.getElementById("code").value);
        if (res) {
            $.post('/smartravel/join', {username: username, password: password, rePassword: rePassword}, function (res) {
                if (res.isSuccess === 1) {
                    alert('注册成功,请登录');
                    location.href = '/smartravel/login';
                } else {
                    alert(res.errmsg);
                }
            });

        } else {
            alert("验证码错误");
        }
    })
</script>
</body>
</html>





