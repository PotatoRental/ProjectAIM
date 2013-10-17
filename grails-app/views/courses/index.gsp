<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns:ng="http://angularjs.org" ng-app class="no-js" lang="en">
<head>

    <meta name="layout" content="main">
    <r:require modules="application, home, search" />
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
                <li><g:link uri="/"><span class="glyphicon glyphicon-home"/></g:link></li>
                <li><a href="#">Programs & Courses</a></li>
                <li class="active">Courses</li>
                <span id="topnav">
                    <sec:ifLoggedIn><a href="#"><sec:username /></a></sec:ifLoggedIn>
                    <sec:ifNotLoggedIn><g:link controller="login" action="auth" >Login</g:link></sec:ifNotLoggedIn>
                    <sec:ifLoggedIn><g:link controller="logout">| Log Out</g:link></sec:ifLoggedIn>
                </span>
            </ol>

        </div>

        <div class="col-md-4 col-sm-4 searchbar" id="searchbar" ng-controller="searchCtrl">
            <div class="row">
                <span id="search-ico" class="glyphicon glyphicon-search"></span>
                <input type="text" ng-model="search" id="searchfield" value="Search Courses" onclick="this.value=''">
            </div>
            <!-- /input-group -->


            <div class="search-results">
                <ul>
                    <li><a href="#" onclick="selectCourse()">CSE 102</a></li>
                    <li ng-repeat="course in courses | filter:search">
                        <a href="#" id={{course.id}}>{{course.name}}</a>
                    </li>



                </ul>
            </div>
        </div>

        <div class="col-md-8 col-sm-8">
            <input type="text" ng-model="yourName" placeholder="Enter a name here">
            <hr>
            <h1>Hello, meow, {{yourName}}!</h1>

            <div id="course-home">
                <g:include view="courses.gsp"/>
            </div>
            <div class="importpage" id="cse102">
                <g:include view="course.gsp"/>
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

    function searchCtrl($scope) {
        $scope.courses = [

            {name:'CSE 110', click:"", id:"CSE110"},
            {name:'CSE 114', click:"", id:"CSE114"},
            {name:'CSE 214', click:"", id:"CSE214"}

        ];



    }

</script>

</body>
</html>
