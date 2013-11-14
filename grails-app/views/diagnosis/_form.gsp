<%@ page import="healthcare.Diagnosis" %>



<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="diagnosis.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="code" type="number" value="${diagnosisInstance.code}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'diagnosis', 'error')} required">
	<label for="diagnosis">
		<g:message code="diagnosis.diagnosis.label" default="Diagnosis" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diagnosis" required="" value="${diagnosisInstance?.diagnosis}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'diagnosisDate', 'error')} required">
	<label for="diagnosisDate">
		<g:message code="diagnosis.diagnosisDate.label" default="Diagnosis Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="diagnosisDate" precision="day"  value="${diagnosisInstance?.diagnosisDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'diagnosisStatus', 'error')} required">
	<label for="diagnosisStatus">
		<g:message code="diagnosis.diagnosisStatus.label" default="Diagnosis Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="diagnosisStatus" from="${healthcare.DiagnosisStatus?.values()}" keys="${healthcare.DiagnosisStatus.values()*.name()}" required="" value="${diagnosisInstance?.diagnosisStatus?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="diagnosis.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${diagnosisInstance?.patient?.id}" class="many-to-one"/>
</div>

