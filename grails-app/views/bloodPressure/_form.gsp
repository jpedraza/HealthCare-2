<%@ page import="healthcare.BloodPressure" %>



<div class="fieldcontain ${hasErrors(bean: bloodPressureInstance, field: 'diastolicPressure', 'error')} required">
	<label for="diastolicPressure">
		<g:message code="bloodPressure.diastolicPressure.label" default="Diastolic Pressure" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="diastolicPressure" type="number" value="${bloodPressureInstance.diastolicPressure}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodPressureInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="bloodPressure.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${bloodPressureInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bloodPressureInstance, field: 'systolicPressure', 'error')} required">
	<label for="systolicPressure">
		<g:message code="bloodPressure.systolicPressure.label" default="Systolic Pressure" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="systolicPressure" type="number" value="${bloodPressureInstance.systolicPressure}" required=""/>
</div>

