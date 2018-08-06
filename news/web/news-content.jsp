<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/8/4
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>新闻</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/content.css">
</head>
<body>
<div class="container outer">
    <div class="row clearfix head-bc">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-3 column">
            <h1 class="headfont">NEWS</h1>
            <h2 class="titlefont">--观今夜之天象，知天下之大事</h2>
        </div>
        <div class="col-md-5 column">
            <h3>看新闻，就到观星新闻网</h3>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-5 column border">
            <h1>${news.title}</h1>
            <img src="${news.picture}">
            <p>${news.content}</p>
        </div>
        <div class="col-md-2 column" style="padding-top: 80px;">
            <h4>相关新闻</h4>
            <div class="like">
                <img src="img/you2.jpg">
                <p>看新闻，就到观星新闻网看新闻</p>
            </div>
            <div class="like">
                <img src="img/you2.jpg">
                <p>看新闻，就到观星新闻网看新闻</p>
            </div>
            <div class="like">
                <img src="img/you2.jpg">
                <p>看新闻，就到观星新闻网看新闻</p>
            </div>
            <div class="like">
                <img src="img/you2.jpg">
                <p>看新闻，就到观星新闻网看新闻</p>
            </div>
        </div>
        <div class="col-md-2 column">
            <div class="ourcode">
                <a href="public.jsp">
                    <img src="img/3.4.jpg">
                </a>
            </div>
            <div id="gotop">
            </div>
        </div>
    </div>
    <div class="row clearfix" style="background-color: #0b6cb8;">
        <div class="col-md-12 column">
            <div class="footer">
                <p>
                    本网站提供新闻资源均系收集各大网站，本网站只提供web页面浏览服务，并不提供新闻资源存储，也不参与任何视频录制、上传若本站收集的节目无意侵犯了贵司版权，请给邮箱地址来信，我们将在第一时间删除相应资源。
                </p>
                <p>Copyright © 2017-2018 PXQnews.Com.All Rights Reserved . </p>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    //返回页面顶部
    var gotop=document.getElementById("gotop");
    gotop.onclick=function(){
        scrollTo(0,0);
    }
</script>
</html>
