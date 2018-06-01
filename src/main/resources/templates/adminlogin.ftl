<!DOCTYPE html>
<html>
<head>
    <title>智慧旅游-管理员登录</title>
    <link href="/static/css/adminlogin.css" rel="stylesheet">
</head>
<body style="background:url(/static/images/dl.jpg) center 0 no-repeat ;width:100%;height:100%;">
<a name="top"></a>


<div id="content">
    <form>
        <table>
            <tr>
                <td colspan="2">
                    <h2>管理员登录</h2>
                </td>
            </tr>
            <tr>
                <td id="m"><input class="username" type="text" placeholder="用户名" name="username" id="username"
                                  style="width:300px;height:33px; "></td>
            </tr>
            <tr>
                <td id="m"><input class="password" type="password" placeholder="登录密码" name="password" id="password"
                                  style="width:300px;height:33px; "></td>
            </tr>
            <tr>
                <td><input class="btn" type="button" value="登 录"
                           style="width:305px;height:45px;background:#0594a2;color:white;font-size:18px; font-family:黑体;  border:2px solid #057380; border-radius:5px;margin-top: 25px;"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<script src="/static/js/jquery-1.7.2.min.js"></script>
<script>
    $('.btn').on('click', function () {
        var username = $('.username').val();
        var password = $('.password').val();
        $.post('/smartravel/admin/login', {username: username, password: password}, function (res) {
            if (res.isSuccess === 1) {
                alert('登录成功');
                location.href = '/smartravel/admin/index';
            } else {
                alert(res.errmsg);
            }
        });
    });
</script>
</body>
</html>





