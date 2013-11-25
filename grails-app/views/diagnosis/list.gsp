
<%@ page import="healthcare.Diagnosis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diagnosis.label', default: 'Diagnosis')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-diagnosis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-diagnosis" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>					
						<g:sortableColumn property="code" title="${message(code: 'diagnosis.code.label', default: 'Code')}" />
						<g:sortableColumn property="diagnosis" title="${message(code: 'diagnosis.diagnosis.label', default: 'Diagnosis')}" />
						<g:sortableColumn property="diagnosisDate" title="${message(code: 'diagnosis.diagnosisDate.label', default: 'Diagnosis Date')}" />
						<g:sortableColumn property="diagnosisStatus" title="${message(code: 'diagnosis.diagnosisStatus.label', default: 'Diagnosis Status')}" />
						<th><g:message code="diagnosis.patient.label" default="Patient" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${diagnosisInstanceList}" status="i" var="diagnosisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${diagnosisInstance.id}">${fieldValue(bean: diagnosisInstance, field: "code")}</g:link></td>
						<td>${fieldValue(bean: diagnosisInstance, field: "diagnosis")}</td>
						<td><g:formatDate date="${diagnosisInstance.diagnosisDate}" /></td>
						<td>${fieldValue(bean: diagnosisInstance, field: "diagnosisStatus")}</td>
						<td>${fieldValue(bean: diagnosisInstance, field: "patient")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${diagnosisInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
