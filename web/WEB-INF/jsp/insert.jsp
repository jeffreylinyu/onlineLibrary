<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增書籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增書籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="/user/addBook" method="post">
        <div class="form-group" >
            <label>書名：</label>
            <input name="bookName" type="text" class="form-control"  placeholder="書名" required>
        </div>
        <div class="form-group">
            <label>作者：</label>
            <input name="writer" type="text" class="form-control"  placeholder="作者" required>
        </div>
        <div class="form-group">
            <label>出版日：</label>
            <input name="date" type="text" class="form-control"  placeholder="出版日" required>
        </div>
        <div class="form-group">
            <label>分類：</label>
            <input name="sort" type="text" class="form-control"  placeholder="分類" required>
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
    </form>
</div>
</body>
</html>