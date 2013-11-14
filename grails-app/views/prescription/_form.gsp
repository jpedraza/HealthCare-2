<%@ page import="healthcare.Prescription" %>



<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'concentrate', 'error')} required">
	<label for="concentrate">
		<g:message code="prescription.concentrate.label" default="Concentrate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="concentrate" required="" value="${prescriptionInstance?.concentrate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'instructions', 'error')} required">
	<label for="instructions">
		<g:message code="prescription.instructions.label" default="Instructions" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructions" required="" value="${prescriptionInstance?.instructions}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'medicine', 'error')} required">
	<label for="medicine">
		<g:message code="prescription.medicine.label" default="Medicine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="medicine" required="" value="${prescriptionInstance?.medicine}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="prescription.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${prescriptionInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="prescription.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="quantity" required="" value="${prescriptionInstance?.quantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'use', 'error')} required">
	<label for="use">
		<g:message code="prescription.use.label" default="Use" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="use" from="${healthcare.Use?.values()}" keys="${healthcare.Use.values()*.name()}" required="" value="${prescriptionInstance?.use?.name()}"/>
</div>

