<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>

    <r:require modules="application, home"/>
</head>

<body>
<div class="container">
    <ul id="cbp-tm-menu" class="cbp-tm-menu">
        <g:link style="float:left" uri="/"><img id="aimlogo" src="${resource(dir: "images", file: "logo.png")} "/></g:link>
    </ul>   </div>
    <div id='login-wrap'>

        <div id='login'>

            <h2>Sign In</h2>
            <br>
            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <p>
                    <label id='username-label' for='username'>Username</label>
                    <input type='text' class='form-control' name='j_username' id='username'/>
                </p>

                <p><label id='password-label' for='password'>Password</label>
                    <input type='password' class='form-control' name='j_password' id='password'/>
                </p>

                <p id="remember_me_holder">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                           <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                    <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                </p>

                <p>
                    <input type='submit' class="btn btn-default blue-button" id="submit"
                           value='Sign In'/>
                </p>
            </form>

        </div>
    </div>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
