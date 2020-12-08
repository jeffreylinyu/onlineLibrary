<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #add{
        position:absolute;
        left:610px;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="/">
                    <img src="/img/logo.jpg" width="30" height="30" class="d-inline-block align-middle" alt="">
                    線上書庫
                </a>
                <a class="navbar-brand" href="/queryAllBook">熱門書籍</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black">
                                快速分類
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/queryByLike/?bookNameOrSort=程式語言">程式語言</a>
                                <a class="dropdown-item" href="/queryByLike/?bookNameOrSort=股票投資">股票、投資</a>
                                <a class="dropdown-item" href="/queryByLike/?bookNameOrSort=小說">小說</a>
                                <a class="dropdown-item" href="/queryByLike/?bookNameOrSort=科學">科學</a>
                                <a class="dropdown-item" href="/queryAllBook">全部</a>
                            </div>
                        </li>

                            <form class="form-inline my-2 my-lg-0" action="/queryByLike">
                                <input name="bookNameOrSort" class="form-control mr-sm-2" type="search" placeholder="書名 or 分類" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜尋</button>
                            </form>


                        <li>
                            <a id="add" class="btn btn-outline-success" href="/user/toInsert" role="button">新增書籍</a>

                        </li>

                    </ul>
                     <c:choose>
                         <c:when test="${sessionScope.userSession == null}">
                             <a class="nav-link text-success" href="/login.jsp" >登入</a>
                             |
                             <a class="nav-link text-success" href="/toRegister" >註冊</a>
                         </c:when>
                         <c:otherwise>
                             ${sessionScope.userSession}
                             <a class="nav-link text-success" href="/user/signOut" >登出</a>
                         </c:otherwise>
                     </c:choose>

                </div>
            </nav>
        </div>
    </div>
</div>
