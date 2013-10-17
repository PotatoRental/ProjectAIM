<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta name="layout" content="main">
    <r:require modules="application, home" />

    <meta name="author" content="Monika Tuchowska"/>
    %{--

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'default.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css/nav', file: 'component.css')}" />
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,900italic,900,500'  type='text/css'>

        <link rel="stylesheet" href="${resource(dir: 'css', file:'bootstrap.css')}" media="screen">
        <link rel="stylesheet" href="${resource(dir: 'css', file:'main.css')}" type="text/css"/>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.mCustomScrollbar.css')}" type="text/css"/>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="${resource(dir: 'js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
        <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
        <script src="${resource(dir: 'js', file: 'modernizr.custom.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery.mCustomScrollbar.min.js')}"></script>
    --}%

</head>
<body>

<div class="container">

    <g:include view="nav.gsp"/>

    <div class="row maincontent">
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li class="active"><g:link uri="/"><span class="glyphicon glyphicon-home"/></g:link></li>
                <li><a href="#">Users</a></li>
                <li class="active">All Users</li>
                <span id="topnav">
                    <sec:ifLoggedIn><a href="#"><sec:username /></a></sec:ifLoggedIn>
                    <sec:ifNotLoggedIn><g:link controller="login" action="auth" >Login</g:link></sec:ifNotLoggedIn>
                    <sec:ifLoggedIn><g:link controller="logout">| Log Out</g:link></sec:ifLoggedIn>
                </span>
            </ol>

        </div>

        <div class="col-md-4 col-sm-4 searchbar" id="searchbar">
            <div class="row">

                <span id="search-ico" class="glyphicon glyphicon-search"></span>

                <input type="text" id="searchfield" value="Search Courses" onclick="this.value=''">
            </div>
            <!-- /input-group -->


            <div class="search-results">
                <ul>
                    <li><a href="#">Gale Boetticher <span class="label label-info">Course Coord.</span></a></li>
                    <li><a href="#">Gustavo Fring <span class="label label-primary">CIC</span></a> </li>
                    <li><a href="#">Saul Goodman <span class="label label-default">Evaluator</span></a></li>
                    <li><a href="#">Jesse Pinkman <span class="label label-primary">CIC</span></a></li>
                    <li><a href="#">Hank Schrader <span class="label label-default">Evaluator</span></a></li>

                    <li><a href="#">Skyler White <span class="label label-default">Evaluator</span></a></li>
                    <li><a href="#" onclick="selectCourse()">Walter White <span class="label label-primary">CIC</span> <span class="label label-success">Instructor</span></a> </li>

                </ul>
            </div>
        </div>

        <div class="col-md-8 col-sm-8">
            <div id="course-home">
                <g:include view="users/useraccounts.gsp"/>
            </div>
            <div class="importpage" id="cse102">
                <g:include view="users/walterwhite.gsp"/>
            </div>
            <div class="importpage" id="add-user">
                <g:include view="users/adduser.gsp"/>
            </div>
            <div class="importpage" id="edit-form">
                <g:include view="course2.gsp"/>
            </div>
        </div>
    </div>

    <div class="col-md-12 content">
        <div class="copyrights">
            <small>&copy; 2013 Qiang He, Yun Pang, Jason Chen, Monika Tuchowska</small>
        </div>
    </div>
</div>

<script src="${resource(dir: 'js', file: 'cbpTooltipMenu.min.js')}"></script>
<script>
    var menu = new cbpTooltipMenu(document.getElementById('cbp-tm-menu'));
</script>
<script>
    var enabled = true;
    var courseSelected = false;


    var toggleEdit = function () {
        $(".importpage").slideToggle("fast");
    };
    var selectCourse = function () {
        if (courseSelected)
            return;
        $("#course-home").slideToggle("fast");
        $("#cse102").slideToggle("fast");
        courseSelected = true;
    }
    var addUser = function () {
        $("#course-home").slideToggle("fast");
        $("#add-user").slideToggle("fast");
    }
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
