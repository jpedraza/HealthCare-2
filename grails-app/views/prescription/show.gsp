
<%@ page import="healthcare.Prescription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prescription.label', default: 'Prescription')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="container">
			<div id="show-prescription" class="content scaffold-show" role="main">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<ol class="property-list prescription">
				
					<g:if test="${prescriptionInstance?.concentrate}">
					<li class="fieldcontain">
						<span id="concentrate-label" class="property-label"><g:message code="prescription.concentrate.label" default="Concentrate" /></span>
						
							<span class="property-value" aria-labelledby="concentrate-label"><g:fieldValue bean="${prescriptionInstance}" field="concentrate"/></span>
						
					</li>
					</g:if>
				
					<g:if test="${prescriptionInstance?.instructions}">
					<li class="fieldcontain">
						<span id="instructions-label" class="property-label"><g:message code="prescription.instructions.label" default="Instructions" /></span>
						
							<span class="property-value" aria-labelledby="instructions-label"><g:fieldValue bean="${prescriptionInstance}" field="instructions"/></span>
						
					</li>
					</g:if>
				
					<g:if test="${prescriptionInstance?.medicine}">
					<li class="fieldcontain">
						<span id="medicine-label" class="property-label"><g:message code="prescription.medicine.label" default="Medicine" /></span>
						
							<span class="property-value" aria-labelledby="medicine-label"><g:fieldValue bean="${prescriptionInstance}" field="medicine"/></span>
						
					</li>
					</g:if>
				
					<g:if test="${prescriptionInstance?.patient}">
					<li class="fieldcontain">
						<span id="patient-label" class="property-label"><g:message code="prescription.patient.label" default="Patient" /></span>
						
							<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${prescriptionInstance?.patient?.id}">${prescriptionInstance?.patient?.encodeAsHTML()}</g:link></span>
						
					</li>
					</g:if>
				
					<g:if test="${prescriptionInstance?.quantity}">
					<li class="fieldcontain">
						<span id="quantity-label" class="property-label"><g:message code="prescription.quantity.label" default="Quantity" /></span>
						
							<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${prescriptionInstance}" field="quantity"/></span>
						
					</li>
					</g:if>
				
					<g:if test="${prescriptionInstance?.use}">
					<li class="fieldcontain">
						<span id="use-label" class="property-label"><g:message code="prescription.use.label" default="Use" /></span>
						
							<span class="property-value" aria-labelledby="use-label"><g:fieldValue bean="${prescriptionInstance}" field="use"/></span>
						
					</li>
					</g:if>
				
				</ol>
				<g:form>
					<fieldset class="buttons">
						<g:hiddenField name="id" value="${prescriptionInstance?.id}" />
						<g:link class="edit" action="edit" id="${prescriptionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
