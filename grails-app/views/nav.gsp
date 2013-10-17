<ul id="cbp-tm-menu" class="cbp-tm-menu">
    <g:link style="float:left" uri="/"><img id="aimlogo"
                                            src="${resource(dir: "images", file: "logo_b.png")} "/></g:link>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500' rel='stylesheet' type='text/css'>

    <li>
        <a href="#">Programs & Courses</a>
        <ul class="cbp-tm-submenu">
            <li><a href="#" class="cbp-tm-icon-archive">Degree Programs</a></li>
            <li><g:link uri="/courses" class="cbp-tm-icon-cog">Courses</g:link></li>
            <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_CIC, ROLE_CC, ROLE_EVAL">
                <li><a href="#" class="cbp-tm-icon-location">Course Offerings</a></li>
            </sec:ifAnyGranted>
            <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_CIC">
                <li><a href="#" class="cbp-tm-icon-users">Missing Course Info</a></li>
                <li><a href="#" class="cbp-tm-icon-earth">Course Coordinator Reports</a></li>
            </sec:ifAnyGranted>
        </ul>
    </li>


    <li>

        <a href="#">Student Outcomes</a>
        <ul class="cbp-tm-submenu">
            <li><a href="#" class="cbp-tm-icon-archive">Manage Outcomes</a></li>
            <li><a href="#" class="cbp-tm-icon-cog">Tabulate Outcomes</a></li>
        </ul>

    </li>


    <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_CIC">
        <li>
            <a href="#">PEOs</a>
            <ul class="cbp-tm-submenu">
                <li><a href="#" class="cbp-tm-icon-screen">Manage PEOs</a></li>
                <li><a href="#" class="cbp-tm-icon-mail">Tabulate PEO Attainment</a></li>
            </ul>
        </li>
        <li><a href="#">Minutes</a></li>
        <li><a href="#">Surveys</a></li>
        <li><g:link uri="/users/">Users</g:link></li>
    </sec:ifAnyGranted>
</ul>


<script src="js/cbpTooltipMenu.min.js"></script>
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
