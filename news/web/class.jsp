<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/8/3
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>观星新闻网-实时更新的新闻网</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/star.css">
    <link rel="stylesheet" type="text/css" href="css/news.css">
</head>
<body id="body">
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
            <div class="login">
                <h3>
                    <a href="#">退出</a>
                </h3>
                <h3>
                    <a href="advise.jsp">给予意见</a>
                    <em>|</em>
                </h3>
                <h3>
                    <a href="aboutus.jsp">帮助</a>
                    <em>|</em>
                </h3>
                <h3>
                    <a href="index.jsp">登陆/注册</a>
                    <em>|</em>
                </h3>
            </div>
        </div>
        <div class="col-md-2 column">
            <div class="care">
                <input type="submit" value="关灯" id="light">
                <input type="submit" value="护眼模式" id="eyes">
            </div>
        </div>
    </div>
    <div class="row clearfix navigation">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-8 column">
            <ul class="ul-nav">
                <li id="nav-li1">
                    <a href="ClassServlet?cat_id=1" target="myframe">最新</a>
                </li>
                <li id="nav-li2">
                    <a href="ClassServlet?cat_id=2" target="myframe">国际</a>
                </li>
                <li id="nav-li3">
                    <a href="ClassServlet?cat_id=3" target="myframe">军事</a>
                </li>
                <li id="nav-li4">
                    <a href="ClassServlet?cat_id=4" target="myframe">体育</a>
                </li>
                <li id="nav-li5">
                    <a href="ClassServlet?cat_id=5" target="myframe">娱乐</a>
                </li>
                <li id="nav-li6">
                    <a href="ClassServlet?cat_id=6" target="myframe">游戏</a>
                </li>
                <li id="nav-li7">
                    <a href="ClassServlet?cat_id=7" target="myframe">财经</a>
                </li>
                <li id="nav-li8">
                    <a href="ClassServlet?cat_id=8" target="myframe">汽车</a>
                </li>
                <li id="nav-li9">
                    <a href="ClassServlet?cat_id=9" target="myframe">科技</a>
                </li>
                <li id="nav-li10">
                    <a href="ClassServlet?cat_id=10" target="myframe">教育</a>
                </li>
                <li id="nav-li11">
                    <a href="ClassServlet?cat_id=11" target="myframe">历史</a>
                </li>
                <li id="nav-li12">
                    <a href="ClassServlet?cat_id=12" target="myframe">时尚</a>
                </li>
                <li id="nav-li13">
                    <a href="ClassServlet?cat_id=13" target="myframe">法制</a>
                </li>
                <li id="nav-li14">
                    <a href="ClassServlet?cat_id=14" target="myframe">热点排行</a>
                </li>
            </ul>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-2 column advouter">
            <div class="adv-left1" id="adv-left1">
                <a href="http://www.liuyanghejiu.com/" target="_blank">
                    <img src="img/jiu.jpg">
                </a>
                <div class="close">
                    <a id="closebut1">关闭</a>
                </div>
            </div>
        </div>
        <div class="col-md-5 column">
            <div class="title">
                <h3>
                    <em>|</em>今日新闻
                </h3>
                <p id="time"></p>
            </div>
            <c:forEach var="news" items="${list}">
            <div class="one-new">
                <a href="ShowServlet?id=${news.id}">
                    <div class="img-outer">
                        <img src="${news.picture}">
                    </div>

                    <h3>${news.title}</h3>
                    <p><br><br></p>
                </a>
                <h5>${news.author}</h5>
                <h5>${news.add_time}</h5>
                <div class="share">
                    <div class="dropdown">
                        <ul>
                            <li>
                                <a href="https://qzone.qq.com/" target="_blank">
                                    <img src="img/5.1.png">
                                    <h5>QQ空间</h5>
                                </a>
                            </li>
                            <li>
                                <a href="http://web2.qq.com/" target="_blank">
                                    <img src="img/5.2.png">
                                    <h5>QQ好友</h5>
                                </a>
                            </li>
                            <li>
                                <a href="https://wx.qq.com/" target="_blank">
                                    <img src="img/5.3.png">
                                    <h5>微信好友</h5>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div></c:forEach>
        </div>
        <div class="col-md-3 column">
            <div class="title">
                <h3>
                    <em>|</em>热点新闻
                </h3>
            </div>
            <div class="extra-news">
                <div class="one-news">
                    <a href="">
                        <img src="img/1.3.jpg">
                        <h4>实现iframe 的自适应高度</h4>
                    </a>
                </div>
                <div class="one-news">
                    <a href="">
                        <img src="img/1.3.jpg">
                        <h4>实现iframe 的自适应高度</h4>
                    </a>
                </div>
                <div class="one-news">
                    <a href="">
                        <img src="img/1.3.jpg">
                        <h4>实现iframe 的自适应高度</h4>
                    </a>
                </div>
            </div>
            <div class="you-div">
                <img src="img/you1.jpg">
            </div>
            <div class="title">
                <h3>
                    <em>|</em>热度排行
                </h3>
            </div>
            <div class="extra-news">
                <ol>
                    <li>
                        <a href=""><span>1.</span>实现iframe 的自适应高度</a>
                    </li>
                    <li>
                        <a href=""><span>2.</span>实现iframe 的自适应高度</a>
                    </li>
                    <li>
                        <a href=""><span>3.</span>实现iframe 的自适应高度</a>
                    </li>
                    <li>
                        <a href=""><span>4.</span>实现iframe 的自适应高度</a>
                    </li>
                    <li>
                        <a href=""><span>5.</span>实现iframe 的自适应高度</a>
                    </li>
                    <li>
                        <a href=""><span>6.</span>实现iframe 的自适应高度</a>
                    </li>
                </ol>
            </div>
            <div class="you-div">
                <img src="img/you6.gif">
            </div>
            <div class="extra-news">
                <div class="one-news">
                    <a href="">
                        <img src="img/1.3.jpg">
                        <h4>实现iframe 的自适应高度</h4>
                    </a>
                </div>
                <div class="one-news">
                    <a href="">
                        <img src="img/1.3.jpg">
                        <h4>实现iframe 的自适应高度</h4>
                    </a>
                </div>
            </div>
            <div class="you-div">
                <img src="img/you3.jpg">
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
            <div class="adv-right1" id="adv-right1">
                <a href="http://www.liuyanghejiu.com/" target="_blank">
                    <img src="img/jiu.jpg">
                </a>
                <div class="close">
                    <a id="closebut3">关闭</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix bottom">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column">
            <div class="ul-outer">
                <ul class="ul-page">
                    <li>
                        <a href="UserShowServlet?page=${paging.page-1}&cat_id=${cat_id}" >上一页</a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=1&cat_id=${cat_id}" target="myframe" id="head">首页</a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=${paging.page+1}&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page1">1</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=2&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page2">2</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=3&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page3">3</div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="div-page">...</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=12&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page12">12</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=13&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page13">13</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=14&cat_id=${cat_id}" target="myframe">
                            <div class="div-page" id="page14">14</div>
                        </a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=${paging.totalPage}&cat_id=${cat_id}" id="end" target="myframe">尾页</a>
                    </li>
                    <li>
                        <a href="UserShowServlet?page=${paging.page+1}&cat_id=${cat_id}" id="nex">下一页</a>
                    </li>
                </ul>
            </div>
            <form action="UserShowServlet" method="post">
                <input type="text" name="page" id="turnto">
                <input type="submit"  value="跳转">
            </form>
        </div>
        <div class="col-md-3 column">
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
<script type="text/javascript" src="js/star.js">
</script>
</html>
