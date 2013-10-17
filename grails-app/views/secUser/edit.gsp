<%@ page import="projectaim.security.SecUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <r:require modules="application, home"/>
    <g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
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

    <div id="edit-secUser" class="content scaffold-edit" role="main">
        <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${secUserInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${secUserInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: secUserInstance, action: 'update']" method="PUT">
            <g:hiddenField name="version" value="${secUserInstance?.version}"/>
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:actionSubmit class="save" action="update"
                                value="${message(code: 'default.button.update.label', default: 'Update')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
