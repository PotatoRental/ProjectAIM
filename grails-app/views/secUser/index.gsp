
<%@ page import="projectaim.security.SecUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
        <r:require modules="application, home"/>
        <g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>.nav ul { list-style: none; padding: 0px } .nav ul li { display: inline }</style>
        <style>
        table {
            color: #666666;
            font-size: 14px;
            text-shadow: 1px 1px 0px #FFFFFF;
            border: #3A767B 1px solid;
            width: 95%;
            margin: 0px auto;

            -moz-box-shadow: 0 1px 2px #D1D1D1;
            -webkit-box-shadow: 0 1px 2px #D1D1D1;
            box-shadow: 0 1px 2px #D1D1D1;
        }
        table th {
            padding:21px 25px 22px 25px;
            border-top:1px solid #000000;
            border-bottom:1px solid #FF8989;

            background: #FFFFFF;
            background: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#FAFAFA));
            background: -moz-linear-gradient(top,  #FFFFFF,  #FAFAFA);
        }table td {
             padding:10px;
             border-top: 1px solid #000000;
             border-bottom:1px solid #e0e0e0;
             border-left: 1px solid #e0e0e0;

             background: #F9F9F9;
             background: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#fAfAfA));
             background: -moz-linear-gradient(top,  #FFFFFF,  #FAFAFA);
        </style>
    </head>
	<body>
    <div class="container">
    <g:include view="nav.gsp"/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-secUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="classic-mons">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'secUser.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'secUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'secUser.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'secUser.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'secUser.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'secUser.passwordExpired.label', default: 'Password Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${secUserInstanceList}" status="i" var="secUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${secUserInstance.id}">${fieldValue(bean: secUserInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: secUserInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${secUserInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${secUserInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${secUserInstance.enabled}" /></td>
					
						<td><g:formatBoolean boolean="${secUserInstance.passwordExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${secUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
