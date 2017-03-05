<!DOCTYPE html>

<html lang="en">

<title>Scratch Course</title>
<style>
    .container {
        width: 80%;
    }

    .img-row {
        float: left;
        display: inline;
    }

    .img-row img {
        vertical-align: middle;
    }

    .row div {
        padding-left: 0px;
        padding-right: 0px;
    }
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
      integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-4" id="menu">
            <img src="/image/caidanlan.png" class="img-responsive" style="margin-top: -3px" alt="Responsive image">
        </div>
        <div class="col-xs-6" id="tool">
            <img src="/image/gongjulan.png" class="img-responsive" alt="Responsive image" style="width:593px">
        </div>
    </div>
    <div class="row">
        <div class="col-xs-4" id="wutai">
            <img src="/image/wutaiqu.png" style="height: 291px;width: 412px" class="img-responsive" alt="Responsive image">
            <div class="row">
                <div class="col-xs-4 col-sm-3" id="bg-list">
                    <img src="/image/beijingliebiaoqu.png" style="margin-top: -2px;margin-left: 16px;height: 211px;width: 88px" class="img-responsive" alt="Responsive image">
                </div>
                <div class="col-xs-8 col-sm-9" id="role-list">
                    <img src="/image/jueseliebiaoqu.png" style="" class="img-responsive" alt="Responsive image">
                </div>
            </div>
        </div>
        <!-- Add the extra clearfix for only the required viewport -->
        <div class="clearfix visible-xs-block"></div>
        <div class="col-xs-2" id="command" style="width: 170px">
            <img src="/image/zhilingqu.png" style="height: 500px" class="img-responsive" alt="Responsive image">
        </div>
        <!-- Add the extra clearfix for only the required viewport -->
        <div class="clearfix visible-xs-block"></div>
        <div class="col-xs-4" id="script">
            <img src="/image/jiaobenqu.png" style="height: 500px" class="img-responsive" alt="Responsive image">
        </div>

    </div>

    <div>
        <button>菜单栏</button>
        <button>工具栏</button>
        <button>舞台区</button>
        <button>指令区</button>
        <button>脚本区</button>
        <button>背景列表区</button>
        <button>角色列表区</button>
    </div>
</div>

</body>

</html>