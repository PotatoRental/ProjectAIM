<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Project AIM</title>

    <meta name="author" content="Monika Tuchowska"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'default.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'component.css')}"/>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,900italic,900,500'
          type='text/css'>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" media="screen">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.mCustomScrollbar.css')}" type="text/css"/>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="${resource(dir: 'js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'modernizr.custom.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.mCustomScrollbar.min.js')}"></script>

</head>

<body>

<div class="container">

    <g:include view="nav.gsp"/>

    <div class="row maincontent">
        <div class="col-md-12">
            <div class="row">
                <ol class="breadcrumb">
                    <li class="active"><g:link uri="/"><span class="glyphicon glyphicon-home"/></g:link></li>
                </ol>
            </div>

            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1>AIM Home</h1>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="col-md-12 content">
    <div class="copyrights">
        <small>&copy; 2013 Qiang He, Yun Pang, Jason Chen, Monika Tuchowska</small>
    </div>
</div>

</div>
<script src="js/cbpTooltipMenu.min.js"></script>
<script>
    var menu = new cbpTooltipMenu(document.getElementById('cbp-tm-menu'));
</script>
<script src="http://tympanus.net/codrops/adpacks/demoad.js"></script>

<script>
    (function ($) {
        $(window).load(function () {
            $(".search-results").mCustomScrollbar({
                theme: "dark-2",
                advanced: {
                    updateOnContentResize: true,
                    scrollInertia: 0
                }
            });
        });
    })(jQuery);
</script>

</body>
</html>

