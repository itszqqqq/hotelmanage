<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"
        name="viewport">
    <meta content="宾馆管理" name="keywords" />
    <meta content="宾馆展示" name="description" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/index.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function() {
        $("#main-menu #nav_35").addClass("active");
    });
    </script>


    <title>关于我们</title>
    <style>
    .internal-page-title {
        background-image: url(images/1.jpg);
    }

    .page-content {
        text-align: center;
    }

    html,
    body {
        margin: 0;
        padding: 0;
    }

    .iw_poi_title {
        color: #CC5522;
        font-size: 14px;
        font-weight: bold;
        overflow: hidden;
        padding-right: 13px;
        white-space: nowrap
    }

    .iw_poi_content {
        font: 12px arial, sans-serif;
        overflow: visible;
        padding-top: 4px;
        white-space: -moz-pre-wrap;
        word-wrap: break-word
    }

    #dituContent {
        width: 887px;
        height: 400px;
        border: #ccc solid 1px;
        margin: 40px 0 0 250px;
    }

    @media screen and (max-width: 900px) {
        #dituContent {
            width: 100%;
            height: 300px;
            margin-left: 0;
            margin-bottom: 50px;
        }
    }

    .location {
        color: #C5A46D;
        font-weight: bold;
        text-align: center;
    }
    </style>

    <!-- <script type="text/javascript" src="https://api.map.baidu.com/api?key=&v=1.1&services=true"></script> -->
    <script type="text/javascript"
        src="http://api.map.baidu.com/api?v=1.0&type=webgl&ak=asSEX4G8y31GRblVm631Wv7nQkfEG4qb"></script>
</head>

<body class="homepage trans-header sticky white-datepicker">

    <div id="page-body-wrap">
        <?php
        require("head.html");
        ?>
        <div class="internal-page-title about-page">
            <h1>关于我们</h1>
            <ol class="breadcrumb">
                <li><i class="fa fa-map-marker"></i> &nbsp;<span>当前位置： <a href="index.php">网站首页</a> &gt <a
                            href="about.php">关于我们</a></span></li>
            </ol>
        </div>

        <div class="page-container" id="innerpage-wrap">
            <div class="container">
                <div class="row">

                    <div class="main col-md-12 inner-left" role="main">


                        <div class="about-page-wrap">
                            <div class="com-cnt page-content">
                                <strong><span style="color:#C5A46D;font-size:18px;">欢迎光临</span></strong><br />
                                <br />
                                <strong>xxx酒店欢迎您的到来！<br />

                            </div>
                            <hr>
                            <div id="contact-wrap">
                                <h3 class="msg-title location">给我们留言</h3>
                                <form class="add-msg-form" method="post" action="insert.php" name="msgform"
                                    id="contact-form">
                                    <div class="row">
                                        <div class="cf-column col-md-6"><input required name="title" id="subject"
                                                type="text" placeholder="主题"
                                                validate="minlength:2, maxlength:50, required:true"></div>
                                        <div class="cf-column col-md-6"><input required name="name" id="username"
                                                type="text" placeholder="名字"
                                                validate="minlength:2, maxlength:50, required:true"></div>
                                        <div class="cf-column col-md-6"><input required name="mailbox" id="mail"
                                                type="text" placeholder="邮箱"
                                                validate="maxlength:40, required:true, email:true"></div>
                                        <div class="cf-column col-md-6"><input required name="phone" id="telephone"
                                                type="text" placeholder="手机"
                                                validate="minlength:6,maxlength:40, required:true"></div>
                                        <div class="cf-column col-md-12 cf-tarea"><textarea required name="content"
                                                id="comment" placeholder="留言内容"
                                                validate="minlength:2, maxlength:200, required:true"></textarea></div>
                                        <div class="cf-column col-md-12 submit-column">
                                            <input type="hidden" name="action" value="message">
                                            <button type="submit" onclick="return validate()" id="submit-btn"
                                                class="submit-button">立即提交</button>
                                        </div>
                                    </div>
                                    <script>
                                    // 表单提交事件判断
                                    function validate() {
                                        var name = $("input[name='name']");
                                        var namecheck = /^[\u4e00-\u9fa5]{2,4}$/;
                                        var mailbox = $("input[name='mailbox']");
                                        var mailboxcheck =
                                            /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
                                        var phone = $("input[name='phone']");
                                        var phonecheck = /^(((1[3456789][0-9]{1})|(15[0-9]{1}))+\d{8})$/;
                                        if (!namecheck.test(name.val())) {
                                            alert('姓名填写有误');
                                            name.val('');
                                            name.focus();
                                            return false;
                                        }
                                        if (!mailboxcheck.test(mailbox.val())) {
                                            alert('邮箱填写有误');
                                            mailbox.val('');
                                            mailbox.focus();
                                            return false;
                                        }
                                        if (!phonecheck.test(phone.val())) {
                                            alert('手机号填写有误');
                                            phone.val('');
                                            phone.focus();
                                            return false;
                                        }
                                        return true;
                                    }
                                    </script>
                                </form>
                            </div>
                        </div>


                    </div>


                </div>
            </div>
            <hr>
            <h3 class='location'>位置信息</h3>
            <div id="dituContent"></div>
        </div>
        <div class="for-bottom-padding"></div>

        <?php
        require("footer.html");
        ?>

    </div>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/helper.js"></script>
    <script type="text/javascript" src="js/template.js"></script>
    <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap() {
        createMap(); //创建地图
        setMapEvent(); //设置地图事件
        addMapControl(); //向地图添加控件
        addMarker(); //向地图中添加marker
    }

    //创建地图函数：
    function createMap() {
        var map = new BMapGL.Map("dituContent"); //在百度地图容器中创建一个地图
        var point = new BMapGL.Point(118.716685, 30.909624); //定义一个中心点坐标
        map.centerAndZoom(point, 17); //设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; //将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
        map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard(); //启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl() {
        //向地图中添加缩放控件
        var ctrl_nav = new BMapGL.NavigationControl({
            anchor: BMAP_ANCHOR_TOP_LEFT,
            type: BMAP_NAVIGATION_CONTROL_LARGE
        });
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMapGL.OverviewMapControl({
            anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
            isOpen: 1
        });
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMapGL.ScaleControl({
            anchor: BMAP_ANCHOR_BOTTOM_LEFT
        });
        map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{
        title: "合肥工业大学宣城校区",
        content: "计算机与信息学院",
        point: "118.710234|30.903596",
        isOpen: 1,
        icon: {
            w: 21,
            h: 21,
            l: 0,
            t: 0,
            x: 6,
            lb: 5
        }
    }];
    //创建marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMapGL.Point(p0, p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMapGL.Marker(point, {
                icon: iconImg
            });
            var iw = createInfoWindow(i);
            var label = new BMapGL.Label(json.title, {
                "offset": new BMapGL.Size(json.icon.lb - json.icon.x + 10, -20)
            });
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor: "#808080",
                color: "#333",
                cursor: "pointer"
            });

            (function() {
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click", function() {
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open", function() {
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close", function() {
                    _marker.getLabel().show();
                })
                label.addEventListener("click", function() {
                    _marker.openInfoWindow(_iw);
                })
                if (!!json.isOpen) {
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i) {
        var json = markerArr[i];
        var iw = new BMapGL.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title +
            "</b><div class='iw_poi_content'>" + json.content + "</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json) {
        var icon = new BMapGL.Icon("favicon.ico", new BMapGL.Size(json.w, json.h), {
            imageOffset: new BMapGL.Size(-json.l, -json.t),
            infoWindowOffset: new BMapGL.Size(json.lb + 5, 1),
            offset: new BMapGL.Size(json.x, json.h)
        })
        return icon;
    }

    initMap(); //创建和初始化地图
    </script>
</body>

</html>