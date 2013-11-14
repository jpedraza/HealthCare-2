
<%@ page import="healthcare.Staff" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-staff" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-staff" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'staff.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'staff.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="photo" title="${message(code: 'staff.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="identification" title="${message(code: 'staff.identification.label', default: 'Identification')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'staff.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'staff.accountLocked.label', default: 'Account Locked')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${staffInstanceList}" status="i" var="staffInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${staffInstance.id}">${fieldValue(bean: staffInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: staffInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: staffInstance, field: "photo")}</td>
					
						<td>${fieldValue(bean: staffInstance, field: "identification")}</td>
					
						<td><g:formatBoolean boolean="${staffInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${staffInstance.accountLocked}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${staffInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
