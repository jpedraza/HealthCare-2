
<%@ page import="healthcare.Diagnosis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diagnosis.label', default: 'Diagnosis')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-diagnosis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-diagnosis" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list diagnosis">
			
				<g:if test="${diagnosisInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="diagnosis.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${diagnosisInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosisInstance?.diagnosis}">
				<li class="fieldcontain">
					<span id="diagnosis-label" class="property-label"><g:message code="diagnosis.diagnosis.label" default="Diagnosis" /></span>
					
						<span class="property-value" aria-labelledby="diagnosis-label"><g:fieldValue bean="${diagnosisInstance}" field="diagnosis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosisInstance?.diagnosisDate}">
				<li class="fieldcontain">
					<span id="diagnosisDate-label" class="property-label"><g:message code="diagnosis.diagnosisDate.label" default="Diagnosis Date" /></span>
					
						<span class="property-value" aria-labelledby="diagnosisDate-label"><g:formatDate date="${diagnosisInstance?.diagnosisDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosisInstance?.diagnosisStatus}">
				<li class="fieldcontain">
					<span id="diagnosisStatus-label" class="property-label"><g:message code="diagnosis.diagnosisStatus.label" default="Diagnosis Status" /></span>
					
						<span class="property-value" aria-labelledby="diagnosisStatus-label"><g:fieldValue bean="${diagnosisInstance}" field="diagnosisStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diagnosisInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="diagnosis.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${diagnosisInstance?.patient?.id}">${diagnosisInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${diagnosisInstance?.id}" />
					<g:link class="edit" action="edit" id="${diagnosisInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
