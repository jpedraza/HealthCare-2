
<%@ page import="healthcare.BloodPressure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bloodPressure.label', default: 'BloodPressure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bloodPressure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bloodPressure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bloodPressure">
			
				<g:if test="${bloodPressureInstance?.diastolicPressure}">
				<li class="fieldcontain">
					<span id="diastolicPressure-label" class="property-label"><g:message code="bloodPressure.diastolicPressure.label" default="Diastolic Pressure" /></span>
					
						<span class="property-value" aria-labelledby="diastolicPressure-label"><g:fieldValue bean="${bloodPressureInstance}" field="diastolicPressure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodPressureInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="bloodPressure.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${bloodPressureInstance?.patient?.id}">${bloodPressureInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bloodPressureInstance?.systolicPressure}">
				<li class="fieldcontain">
					<span id="systolicPressure-label" class="property-label"><g:message code="bloodPressure.systolicPressure.label" default="Systolic Pressure" /></span>
					
						<span class="property-value" aria-labelledby="systolicPressure-label"><g:fieldValue bean="${bloodPressureInstance}" field="systolicPressure"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bloodPressureInstance?.id}" />
					<g:link class="edit" action="edit" id="${bloodPressureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
