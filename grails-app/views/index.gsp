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
                <li><a href="/ProjectAIM/"><span class="glyphicon glyphicon-home"/></a></li>
                <span id="topnav">
                    <sec:ifLoggedIn><a href="#"><sec:username/></a></sec:ifLoggedIn>
                    <sec:ifNotLoggedIn><g:link controller="login" action="auth">Login</g:link></sec:ifNotLoggedIn>
                    <sec:ifLoggedIn><g:link controller="logout">| Log Out</g:link></sec:ifLoggedIn>
                </span>
            </ol>

            <p style="font-size: 50pt">${flash.message}</p>

            <div class="row">

                <div class="col-md-3">
                    <h4>Quick Links</h4>

                    <div class="quicklinks">
                        <ul>
                            <li><a href="#">All Course Listings</a></li>
                            <li><a href="#">Degree Programs</a></li>
                            <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_CIC">
                                <li><a href="#">View Instructors</a></li>
                                <li><a href="#">View Course Coordinators</a></li>
                                <li><a href="#">View Evaluators</a></li>
                            </sec:ifAnyGranted>
                        </ul>
                    </div>
                    <br>
                    <sec:ifAnyGranted roles="ROLE_CC">
                        <h4>
                            Courses You Are Teaching
                        </h4>

                        <div class="quicklinks">
                            <ul>
                                <li><a href="#">CSE 102</a></li>
                                <li><a href="#">CSE 320</a></li>
                            </ul>
                        </div>
                        <br>
                        <h4>Courses You Are Coordinating</h4>

                        <div class="quicklinks">
                            <ul>
                                <li><a href="#">CSE 336</a></li>
                                <li><a href="#">CSE 373</a></li>
                            </ul>
                        </div>
                    </sec:ifAnyGranted>
                </div>

                <div class="col-md-7 col-sm-7 col-sm-offset-1 col-md-offset-1">
                    <sec:ifLoggedIn>
                    
                    </sec:ifLoggedIn>
                    <sec:ifAnyGranted roles="ROLE_CIC">
                        <h4>Updates</h4>

                        <div class="alert alert-dismissable alert-warning">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <strong>4 courses are missing information.</strong> <a href="#">View</a>.
                        </div>

                        <div class="alert alert-dismissable alert-info">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            2 courses have been added to the system. <a href="#">View</a>.
                        </div>
                    </sec:ifAnyGranted>
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
</script>

</body>
</html>

