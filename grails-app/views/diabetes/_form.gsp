<%@ page import="healthcare.Diabetes" %>



<div class="fieldcontain ${hasErrors(bean: diabetesInstance, field: 'glicemia', 'error')} required">
	<label for="glicemia">
		<g:message code="diabetes.glicemia.label" default="Glicemia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="glicemia" value="${fieldValue(bean: diabetesInstance, field: 'glicemia')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: diabetesInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="diabetes.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${diabetesInstance?.patient?.id}" class="many-to-one"/>
</div>

