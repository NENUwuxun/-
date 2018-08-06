<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/8/4
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>新闻</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/star.css">
    <link rel="stylesheet" type="text/css" href="css/news.css">
</head>
<body>
<div class="container">
    <div class="row clearfix head-bc">
        <div class="col-md-3 column">
        </div>
        <div class="col-md-6 column">
            <div class="title">
                <h3>
                    <em>|</em>最新
                </h3>
                <p id="time"></p>
            </div>
            <c:forEach var="news" items="${list}">
            <div class="one-new">
                <a href="ShowServlet?id=${news.id}">
                    <div class="img-outer">
                        <img src="${news.picture}">
                    </div>
                    <div class="editor">
                        <div class="edit">
                            <a href="EditorServlet?id=${news.id}">
                                <img src="img/edit.jpg" title="编辑">
                            </a>
                        </div>
                        <div class="delete">
                            <a href="DeleteServlet?id=${news.id}">
                                <img src="img/delete.jpg" title="删除">
                            </a>
                        </div>
                    </div>
                    <h3>${news.title}</h3>

                <h5>${news.author}</h5>

                <h5>${news.up_time}</h5>
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
                </a>
            </div></c:forEach>
        </div>
        </div>
        <div class="col-md-1 column">
        </div>
        <div class="col-md-2 column">
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
                    <a href="AdminShowServlet?page=${paging.page-1}" >上一页</a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=1" target="myframe" id="head">首页</a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=${paging.page+1}" target="myframe">
                        <div class="div-page" id="page1">1</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=2" target="myframe">
                        <div class="div-page" id="page2">2</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=3" target="myframe">
                        <div class="div-page" id="page3">3</div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="div-page">...</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=12" target="myframe">
                        <div class="div-page" id="page12">12</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=13" target="myframe">
                        <div class="div-page" id="page13">13</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=14" target="myframe">
                        <div class="div-page" id="page14">14</div>
                    </a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=${paging.totalPage}" id="end" target="myframe">尾页</a>
                </li>
                <li>
                    <a href="AdminShowServlet?page=${paging.page+1}" id="nex">下一页</a>
                </li>
            </ul>
        </div>
        <form action="AdminShowServlet" method="post">
            <input type="text" name="page" id="turnto">
            <input type="submit" value="跳转">
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
</body>
<script type="text/javascript" src="js/news.js">
</script>
</html>
