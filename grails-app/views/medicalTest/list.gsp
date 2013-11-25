
<%@ page import="healthcare.MedicalTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicalTest.label', default: 'MedicalTest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-medicalTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-medicalTest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>					
						<g:sortableColumn property="code" title="${message(code: 'medicalTest.code.label', default: 'Code')}" />
						<g:sortableColumn property="medicalTest" title="${message(code: 'medicalTest.medicalTest.label', default: 'Medical Test')}" />
						<g:sortableColumn property="medicalTestDate" title="${message(code: 'medicalTest.medicalTestDate.label', default: 'Medical Test Date')}" />
						<th><g:message code="medicalTest.patient.label" default="Patient" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${medicalTestInstanceList}" status="i" var="medicalTestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${medicalTestInstance.id}">${fieldValue(bean: medicalTestInstance, field: "code")}</g:link></td>
						<td>${fieldValue(bean: medicalTestInstance, field: "medicalTest")}</td>
						<td><g:formatDate date="${medicalTestInstance.medicalTestDate}" /></td>
						<td>${fieldValue(bean: medicalTestInstance, field: "patient")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${medicalTestInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
