<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery File Upload Example</title>
</head>
<body>
<input id="fileupload" type="file" name="imgfile" data-url="/smartravel/upload/img" multiple>
<input type="hidden" class="img-upload" data-url="">
<script src="/static/js/jquery-3.3.1.min.js"></script>
<script src="/static/js/jquery.ui.widget.js"></script>
<script src="/static/js/jquery.iframe-transport.js"></script>
<script src="/static/js/jquery.fileupload.js"></script>
<script>
    $(function () {
        $('#fileupload').fileupload({
            dataType: 'json',
            done: function (e, res) {
                var imgurl = res.result.data.imgurl;
                $('.img-upload').attr('data-url', imgurl);
            }
        });
    });
</script>
</body>
</html>