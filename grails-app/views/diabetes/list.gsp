
<%@ page import="healthcare.Diabetes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diabetes.label', default: 'Diabetes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-diabetes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-diabetes" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="glicemia" title="${message(code: 'diabetes.glicemia.label', default: 'Glicemia')}" />
						<th><g:message code="diabetes.patient.label" default="Patient" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${diabetesInstanceList}" status="i" var="diabetesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${diabetesInstance.id}">${fieldValue(bean: diabetesInstance, field: "glicemia")}</g:link></td>
						<td>${fieldValue(bean: diabetesInstance, field: "patient")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${diabetesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
