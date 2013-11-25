
<%@ page import="healthcare.Appointment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'appointment.label', default: 'Appointment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-appointment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-appointment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="appointmentDate" title="${message(code: 'appointment.appointmentDate.label', default: 'Appointment Date')}" />
						<g:sortableColumn property="appointmentType" title="${message(code: 'appointment.appointmentType.label', default: 'Appointment Type')}" />
						<th><g:message code="appointment.doctor.label" default="Doctor" /></th>
						<g:sortableColumn property="note" title="${message(code: 'appointment.note.label', default: 'Note')}" />
						<th><g:message code="appointment.patient.label" default="Patient" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${appointmentInstanceList}" status="i" var="appointmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${appointmentInstance.id}">${fieldValue(bean: appointmentInstance, field: "appointmentDate")}</g:link></td>
						<td>${fieldValue(bean: appointmentInstance, field: "appointmentType")}</td>
						<td>${fieldValue(bean: appointmentInstance, field: "doctor")}</td>
						<td>${fieldValue(bean: appointmentInstance, field: "note")}</td>
						<td>${fieldValue(bean: appointmentInstance, field: "patient")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${appointmentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
