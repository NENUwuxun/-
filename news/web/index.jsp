<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/7/30
  Time: 8:35
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

    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <title></title>
</head>
<body>
<div class="container outer">
    <div class="row clearfix">
        <div class="col-md-3 column">
            <audio autoplay="autoplay" controls="controls" loop="loop" preload="auto"
                   src="music/Good.mp3">
            </audio>
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
            <div class="aboutus">
                <h3>
                    <em>|</em>
                    <a href="public.jsp">官方公众号</a>
                </h3>
                <h3>
                    <em>|</em>
                    <a href="advise.jsp">给予意见</a>
                </h3>
                <h3>
                    <em>|</em>
                    <a href="joinus.jsp">加入我们</a>
                </h3>
                <h3>
                    <a href="aboutus.jsp">了解我们</a>
                </h3>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column">
            <div class="form">
                <div class="tabbable" id="tabs-567153">
                    <ul class="nav nav-tabs">
                        <li class="active formlist" id="getLogin">
                            <a href="#panel-570344" data-toggle="tab" style="text-align: center;">登录</a>
                        </li>
                        <li class="formlist" id="getRegister">
                            <a href="#panel-810979" data-toggle="tab" style="text-align: center;">注册</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="panel-570344">
                            <form action="UserLoginServlet"  onsubmit="return loginForm()" method="post">
                                <div class="forminputout">
                                    <div class="forminput">
                                        <label>账号：</label>
                                        <div class="forminputdiv">
                                            <input type="text" id="name1" name="username" placeholder="请输入账号" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn1">
                                            <p>账号为空或账号不对</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>密码：</label>
                                        <div class="forminputdiv">
                                            <input type="password" id="password1" name="password" placeholder="请输入密码" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn2">
                                            <p>密码为空或密码不正确</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <input type="checkbox" id="check1">
                                        <label class="labelremenber" style="font-size: 13px;text-align: left;">记住密码</label>

                                    </div>
                                    <div class="forminput">
                                        <input type="submit" value="登录" id="submitLogin" class="forminput-input">
                                        <a href="Administrator.jsp">管理员登录</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="panel-810979">
                            <form action="RegisterServlet"  onsubmit="return registerForm()" method="post">
                                <div class="forminputout">
                                    <div class="forminput">
                                        <label>账号：</label>
                                        <div class="forminputdiv">
                                            <input type="text" id="name2" name="username" placeholder="请输入账号" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn3">
                                            <p>账号不能为空且不小于6位</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>密码：</label>
                                        <div class="forminputdiv">
                                            <input type="password" id="password2" name="password" placeholder="请输入密码" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn4">
                                            <p>密码不能为空且不小于6位</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>确认密码：</label>
                                        <div class="forminputdiv">
                                            <input type="password" id="password3" placeholder="请再次输入密码" maxlength="11" minlength="6">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn5">
                                            <p>密码不正确</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>手机号：</label>
                                        <div class="forminputdiv">
                                            <input type="text" id="phone"name="tele" placeholder="请输入手机号" maxlength="11" minlength="11">
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn6">
                                            <p>手机号为空或该手机号不存在</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <label>验证码：</label>
                                        <input type="text" id="truecode" placeholder="请输入验证码" maxlength="4" minlength="4">
                                        <div id="appearcode">
                                            获取验证码
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <div class="worning" id="worn7">
                                            <p>验证码不正确</p>
                                        </div>
                                    </div>
                                    <div class="forminput">
                                        <input type="submit" value="注册" id="submitregister" class="forminput-input">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 column">
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
<script type="text/javascript" src="js/login.js"></script>
</html>
