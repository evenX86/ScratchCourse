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
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
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
            <img src="/image/wutaiqu.png" style="height: 291px;width: 412px" class="img-responsive" alt="Responsive image" id="wutaiImg">
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
        <button id="menuBtn" class="ui-widget-content">菜单栏</button>
        <button id="toolBtn"> 工具栏</button>
        <button id="wutaiBtn">舞台区</button>
        <button>指令区</button>
        <button>脚本区</button>
        <button>背景列表区</button>
        <button>角色列表区</button>
    </div>
    <!-- Small modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>

    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                ...
            </div>
        </div>
    </div>
</div>

</body>
<script>
    $('.bs-example-modal-sm').modal('toggle');
    $(function() {

        // 设定元素相对原点的初始位置
        var init_x = 0;
        var init_y = 0;

        // 设定各元素的初始位置
        var _stuname = $("#menuBtn");
        var stuname_x = 10;
        var stuname_y = 10;
        var _feeacount = $("#toolBtn");
        var feeacount_x = 10;
        var feeacount_y = 70;
        var _schoolname = $("#wutaiBtn");
        var schoolname_x = 10;
        var schoolname_y = 40;

        var ids = [ _stuname, _feeacount, _schoolname ];
        var ids_x = [ stuname_x, feeacount_x, schoolname_x ];
        var ids_y = [ stuname_y, feeacount_y, schoolname_y ];

        // 循环添加元素移动事件监听,添加绝对定位,改变鼠标指针样式
        $.each(_schoolname, function(i, _this) {
            _this.css({
                'position' : 'absolute',
                'cursor' : 'crosshair',
                'left' : ids_x[i],
                'top' : ids_y[i]
            });

            _this.mousedown(function(e) {
                beginmove(e, _this);
            });
        });
        // 开始移动元素位置
        function beginmove(e, _this) {
            // 当前元素的位置
            var offset = _this.offset();
            var cx = offset.left;
            var cy = offset.top;
            // 当前鼠标的位置(移动前，鼠标按下)
            var sx = e.pageX;
            var sy = e.pageY;

            // 计算当前鼠标和元素之间位置的偏移量，让移动后的元素以鼠标按下时的位置为坐标。（默认以元素左上点为坐标）
            var px = sx - cx;
            var py = sy - cy;
            console.log("鼠标提起位置: "+px);
            console.log("鼠标提起位置: "+py);

            // 绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件
            $(document).bind("mousemove", function(ev) {
                // 当前鼠标的位置（移动后，鼠标弹起）
                sx = ev.pageX;
                sy = ev.pageY;

                // 当前元素位置
                var _x = sx - px;
                var _y = sy - py;
                // 设定元素位置
                _this.css({
                    'left' : _x,
                    'top' : _y
                });
            });
            // 当鼠标按键弹起时，解除元素移动，让元素停留在当前位置
            $(document).mouseup(function() {
                $(this).unbind("mousemove");
                // 记录元素位置
                $.each(ids, function(i, _this) {
                    // 当前元素的位置
                    var offset = _this.offset();
                    var cx = offset.left;
                    var cy = offset.top;
                    // 保存位置
                    ids_x[2] = cx;
                    ids_y[2] = cy;

                });

            })
        }
    });

</script>

</html>