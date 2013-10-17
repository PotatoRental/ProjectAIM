<!DOCTYPE html>
<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.denied.title" /></title>

    <r:require modules="application, home"/>
</head>

<body>
<div class='body'>
    <div class="container">
        <g:include view="nav.gsp" />
	    <div class='errors'><g:message code="springSecurity.denied.message" /></div>
    </div>
</div>
</body>
</html>