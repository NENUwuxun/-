<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/8/3
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>登录注册</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/administrator.css">
    <script type="text/javascript" src="js/administrator.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container outer">
    <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-3 column">
            <h1 class="headfont">NEWS</h1>
        </div>
        <div class="col-md-3 column">
            <div>
                <h2 class="titlefont">--观今夜之天象，知天下之大事</h2>
            </div>
        </div>
        <div class="col-md-3 column">
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column">
            <div class="form">
                <div class="tabbable" id="tabs-567153">
                    <ul class="nav nav-tabs">
                        <li class="active formlist" id="getLogin">
                            <a href="#panel-570344" data-toggle="tab" style="text-align: center;">管理员登录</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="panel-570344">
                            <form action="AdminLoginServlet?" onsubmit="return loginForm()" method="post">
                                <div class="forminputout">
                                    <div class="forminput">
                                        <label>账号：</label>
                                        <div class="forminputdiv">
                                            <input type="text" id="name1" name="username" placeholder="请输入账号" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>密码：</label>
                                        <div class="forminputdiv">
                                            <input type="password" id="password1" name="password" placeholder="请输入密码" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <input type="checkbox" id="check1">
                                        <label class="labelremenber" style="font-size: 13px;text-align: left;">记住密码</label>

                                    </div>
                                    <div class="forminput">
                                        <input type="submit" value="登录" id="submitLogin" class="forminput-input">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
    <div class="row clearfix">
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
</html>
