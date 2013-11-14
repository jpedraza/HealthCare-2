<%@ page import="healthcare.Obesity" %>



<div class="fieldcontain ${hasErrors(bean: obesityInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="obesity.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${obesityInstance.height}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obesityInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="obesity.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${obesityInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obesityInstance, field: 'waistline', 'error')} required">
	<label for="waistline">
		<g:message code="obesity.waistline.label" default="Waistline" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="waistline" type="number" value="${obesityInstance.waistline}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obesityInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="obesity.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" type="number" value="${obesityInstance.weight}" required=""/>
</div>

