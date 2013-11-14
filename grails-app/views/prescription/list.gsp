
<%@ page import="healthcare.Prescription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prescription.label', default: 'Prescription')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prescription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prescription" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="concentrate" title="${message(code: 'prescription.concentrate.label', default: 'Concentrate')}" />
					
						<g:sortableColumn property="instructions" title="${message(code: 'prescription.instructions.label', default: 'Instructions')}" />
					
						<g:sortableColumn property="medicine" title="${message(code: 'prescription.medicine.label', default: 'Medicine')}" />
					
						<th><g:message code="prescription.patient.label" default="Patient" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'prescription.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="use" title="${message(code: 'prescription.use.label', default: 'Use')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prescriptionInstanceList}" status="i" var="prescriptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prescriptionInstance.id}">${fieldValue(bean: prescriptionInstance, field: "concentrate")}</g:link></td>
					
						<td>${fieldValue(bean: prescriptionInstance, field: "instructions")}</td>
					
						<td>${fieldValue(bean: prescriptionInstance, field: "medicine")}</td>
					
						<td>${fieldValue(bean: prescriptionInstance, field: "patient")}</td>
					
						<td>${fieldValue(bean: prescriptionInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: prescriptionInstance, field: "use")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prescriptionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
