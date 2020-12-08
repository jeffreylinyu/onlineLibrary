<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%--    <meta property="og:title" content="註冊表單" />--%>
    <%--    <meta property="og:description" content="註冊頁就是門面擔當，負責吸引那些只憑第一印象就決定喜不喜歡的潛在粉絲，萬一門面外貌欠佳，行為又讓人反感，再好的的服務都很難成功出道，一個不小心還可能直接出殯，擁有一個好門面，可以降低路人轉粉絲的門檻，有效協助把空虛的瀏覽數變成真實的會員資料。" />--%>
    <%--    <meta property="og:locale" content="zh_TW" />--%>
    <%--    <meta property="og:type" content="website" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" integrity="sha512-oc9+XSs1H243/FRN9Rw62Fn8EtxjEYWHXRvjS43YtueEewbS6ObfXcJNyohjHqVKFPoXXUxwc+q1K7Dee6vv9g==" crossorigin="anonymous"/>
    <title>註冊表單</title>
</head>
<body>
<div class="card p-3 my-3">
    <div class="card-header">
        <h2>建立帳戶</h2>
    </div>
    <div class="card-body">
        <form action="/addUser" method="post">
            <div class="form-group">
                <label for="email">電子郵件地址<span class="text-danger">*</span></label>
                <input type="email" id="email" name="email" class="form-control" placeholder="輸入電子郵件"/>
            </div>
            <div class="form-group">
                <label for="email-confirm">確認電子郵件地址<span class="text-danger">*</span></label>
                <input type="email" id="email-confirm" name="emailConfirm" class="form-control" placeholder="確認電子郵件"/>
            </div>
            <div class="form-group">
                <label for="country">國家</label>
                <input type="text" id="country" name="country" class="form-control" placeholder="非必填" />
            </div>
            <div class="form-group">
                <label for="password">密碼<span class="text-danger">*</span></label>
                <input required type="password" id="password" name="userPassword" class="form-control" placeholder="至少 5 個字元" />
            </div>
            <div class="form-group">
                <label for="password-confirm">確認密碼<span class="text-danger">*</span></label>
                <input required type="password" id="password-confirm" name="passwordConfirm" class="form-control" placeholder="至少 5 個字元" />
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label> <input id="termsOfUse" type="checkbox" name="termsOfUse" /> 同意我們的使用條款和隱私權政策。<span class="text-danger">*</span></label>
                </div>
            </div>
            <input type="submit" value="建立帳戶" class="btn btn-success" />
        </form>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.3/umd/popper.min.js" integrity="sha512-53CQcu9ciJDlqhK7UD8dZZ+TF2PFGZrOngEYM/8qucuQba+a+BXOIRsp9PoMNJI3ZeLMVNIxIfZLbG/CdHI5PA==" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.min.js" integrity="sha512-8qmis31OQi6hIRgvkht0s6mCOittjMa9GMqtK9hes5iEQBQE/Ca6yGE5FsW36vyipGoWQswBj/QBm2JR086Rkw==" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js" integrity="sha512-UdIMMlVx0HEynClOIFSyOrPggomfhBKJE28LKl8yR3ghkgugPnG6iLfRfHwushZl1MOPSY6TsuBDGPK2X4zYKg==" crossorigin="anonymous" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/localization/messages_zh_TW.min.js" integrity="sha512-OMvEz/fg5WM53pG8acvtNd979QFBbGI5sJVP0k0Gex3tMmFPUqg9Sdo9zy/86hyhDkNpCgxqZlm29U7XXZADXw==" crossorigin="anonymous" defer></script>
<script src="js/sign-up-form.js" defer></script>
<script src="js/jquery.twzipcode.min.js" defer></script>
</body>
</html>