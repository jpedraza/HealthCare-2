<%@ page import="healthcare.MedicalTest" %>



<div class="fieldcontain ${hasErrors(bean: medicalTestInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="medicalTest.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="code" type="number" value="${medicalTestInstance.code}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicalTestInstance, field: 'medicalTest', 'error')} required">
	<label for="medicalTest">
		<g:message code="medicalTest.medicalTest.label" default="Medical Test" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="medicalTest" required="" value="${medicalTestInstance?.medicalTest}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: medicalTestInstance, field: 'medicalTestDate', 'error')} required">
	<label for="medicalTestDate">
		<g:message code="medicalTest.medicalTestDate.label" default="Medical Test Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="medicalTestDate" precision="day"  value="${medicalTestInstance?.medicalTestDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: medicalTestInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="medicalTest.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${medicalTestInstance?.patient?.id}" class="many-to-one"/>
</div>

