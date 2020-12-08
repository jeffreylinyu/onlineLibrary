<%--
  Created by IntelliJ IDEA.
  User: linyu
  Date: 2020/11/28
  Time: 2:19 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        img{
            height: 250px;
            position:absolute;
            right:475px;
        }
        button{
            float:right;
        }
        form{

            position:absolute;
            right:510px;
            top: 300px;
        }
        #id1{
            position:absolute;
            top: 80px;
            left:50px;
        }
        .form-inline{
            position:absolute;
            left:50px;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <img src="/img/allbook2.jpg">
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <form action="/login" method="post"><br>
                <div class="form-group">
                    <label for="exampleInputEmail1">電子郵件地址:</label>
                    <input name="enterEmail" style="width:420px;" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="輸入電子郵件地址" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密碼:</label>
                    <input name="enterPassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="輸入密碼" required>
                </div>
                <div class="form-check">
                    <a id="a1" style="color:grey;" href="/register">尚未註冊？</a>
                </div>
                <button type="submit" class="btn btn-primary">登入</button>
            </form>
        </div>
    </div>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>