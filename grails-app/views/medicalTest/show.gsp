
<%@ page import="healthcare.MedicalTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medicalTest.label', default: 'MedicalTest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-medicalTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-medicalTest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list medicalTest">
			
				<g:if test="${medicalTestInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="medicalTest.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${medicalTestInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicalTestInstance?.medicalTest}">
				<li class="fieldcontain">
					<span id="medicalTest-label" class="property-label"><g:message code="medicalTest.medicalTest.label" default="Medical Test" /></span>
					
						<span class="property-value" aria-labelledby="medicalTest-label"><g:fieldValue bean="${medicalTestInstance}" field="medicalTest"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicalTestInstance?.medicalTestDate}">
				<li class="fieldcontain">
					<span id="medicalTestDate-label" class="property-label"><g:message code="medicalTest.medicalTestDate.label" default="Medical Test Date" /></span>
					
						<span class="property-value" aria-labelledby="medicalTestDate-label"><g:formatDate date="${medicalTestInstance?.medicalTestDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicalTestInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="medicalTest.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${medicalTestInstance?.patient?.id}">${medicalTestInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${medicalTestInstance?.id}" />
					<g:link class="edit" action="edit" id="${medicalTestInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
