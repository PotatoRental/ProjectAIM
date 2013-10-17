<%@ page import="projectaim.security.SecUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="application, home"/>
    <g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <style>.nav ul { list-style: none; padding: 0px } .nav ul li { display: inline }</style>
</head>

<body>
<div class="container">
<g:include view="nav.gsp"/>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="show-secUser" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list secUser">

            <g:if test="${secUserInstance?.username}">
                <li class="fieldcontain">
                    <span id="username-label" class="property-label"><g:message code="secUser.username.label"
                                                                                default="Username"/></span>

                    <span class="property-value" aria-labelledby="username-label"><g:fieldValue
                            bean="${secUserInstance}" field="username"/></span>

                </li>
            </g:if>

            <g:if test="${secUserInstance?.password}">
                <li class="fieldcontain">
                    <span id="password-label" class="property-label"><g:message code="secUser.password.label"
                                                                                default="Password"/></span>

                    <span class="property-value" aria-labelledby="password-label"><g:fieldValue
                            bean="${secUserInstance}" field="password"/></span>

                </li>
            </g:if>

            <g:if test="${secUserInstance?.accountExpired}">
                <li class="fieldcontain">
                    <span id="accountExpired-label" class="property-label"><g:message
                            code="secUser.accountExpired.label" default="Account Expired"/></span>

                    <span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean
                            boolean="${secUserInstance?.accountExpired}"/></span>

                </li>
            </g:if>

            <g:if test="${secUserInstance?.accountLocked}">
                <li class="fieldcontain">
                    <span id="accountLocked-label" class="property-label"><g:message code="secUser.accountLocked.label"
                                                                                     default="Account Locked"/></span>

                    <span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean
                            boolean="${secUserInstance?.accountLocked}"/></span>

                </li>
            </g:if>

            <g:if test="${secUserInstance?.enabled}">
                <li class="fieldcontain">
                    <span id="enabled-label" class="property-label"><g:message code="secUser.enabled.label"
                                                                               default="Enabled"/></span>

                    <span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean
                            boolean="${secUserInstance?.enabled}"/></span>

                </li>
            </g:if>

            <g:if test="${secUserInstance?.passwordExpired}">
                <li class="fieldcontain">
                    <span id="passwordExpired-label" class="property-label"><g:message
                            code="secUser.passwordExpired.label" default="Password Expired"/></span>

                    <span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean
                            boolean="${secUserInstance?.passwordExpired}"/></span>

                </li>
            </g:if>

        </ol>
        <g:form url="[resource: secUserInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${secUserInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
