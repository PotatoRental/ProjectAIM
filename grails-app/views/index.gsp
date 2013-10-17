<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta name="layout" content="main">
    <r:require modules="application, home"/>

    %{--<meta name="author" content="Monika Tuchowska"/>--}%
    %{--<link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'default.css')}"/>--}%
    %{--<link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'component.css')}"/>--}%
    %{--<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,900italic,900,500'--}%
    %{--type='text/css'>--}%

    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" media="screen">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css"/>--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.mCustomScrollbar.css')}" type="text/css"/>--}%

    %{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>--}%
    %{--<script src="${resource(dir: 'js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>--}%
    %{--<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>--}%
    %{--<script src="${resource(dir: 'js', file: 'modernizr.custom.js')}"></script>--}%
    %{--<script src="${resource(dir: 'js', file: 'jquery.mCustomScrollbar.min.js')}"></script>--}%

</head>

<body>

<div class="container">

    <g:include view="nav.gsp"/>

    <div class="row maincontent">

        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><g:link uri="/"><span class="glyphicon glyphicon-home"/></g:link></li>
                <span id="topnav"><a href="#">Username</a> | <a href="#">Log Out</a></span>
            </ol>

            <div class="alert alert-dismissable alert-warning">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>4 courses are missing information.</strong> <a href="#">View</a>.
            </div>

            <div class="alert alert-dismissable alert-info">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                2 courses have been added to the system. <a href="#">View</a>.
            </div>

                <div class="homenav">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">All Course Listings</a></li>
                        <li><a href="#">Degree Programs</a></li>
                        <li><a href="#">View Instructors</a></li>
                        <li><a href="#">View Course Coordinators</a></li>
                        <li><a href="#">View Evaluators</a></li>

                    </ul>

                    <h4>
                        Courses You Are Teaching
                    </h4>
                    <ul>
                        <li><a href="#">CSE 102</a></li>
                        <li><a href="#">CSE 320</a></li>
                    </ul>

                    <h4>Courses You Are Coordinating</h4>
                    <ul>
                        <li><a href="#">CSE 336</a></li>
                        <li><a href="#">CSE 373</a></li>
                    </ul>
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
%{--<script src="js/cbpTooltipMenu.min.js"></script>--}%
<script>
    var menu = new cbpTooltipMenu(document.getElementById('cbp-tm-menu'));
</script>

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

    var toggletext = function (){
        alert($(this).attr('id'));
    };
</script>

</body>
</html>

