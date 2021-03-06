modules = {
    application {
        dependsOn 'jquery'
        resource url: 'js/bootstrap.js'
        resource url: 'js/bootstrap.min.js'
        resource url: 'js/modernizr.custom.js'
        resource url: 'js/jquery-ui-1.10.3.custom.min.js'
        resource url: 'js/jquery.mCustomScrollbar.min.js'
        resource url: 'js/cbpTooltipMenu.min.js'

        resource url: 'css/nav/default.css'
        resource url: 'css/nav/component.css'
        resource url: 'css/bootstrap.css'
        resource url: 'css/jquery.mCustomScrollbar.css'
    }

    home {
        resource url: 'css/main.css'
    }

    search {
        dependsOn 'angular'
        resource url: 'js/angular.min.js'
    }
}
