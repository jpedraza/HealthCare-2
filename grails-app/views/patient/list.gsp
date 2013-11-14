
<%@ page import="healthcare.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patient" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'patient.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'patient.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="identification" title="${message(code: 'patient.identification.label', default: 'Identification')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'patient.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'patient.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'patient.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientInstanceList}" status="i" var="patientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patientInstance.id}">${fieldValue(bean: patientInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: patientInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "identification")}</td>
					
						<td><g:formatBoolean boolean="${patientInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${patientInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: patientInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
