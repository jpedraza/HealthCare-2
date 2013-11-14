<%@ page import="healthcare.Allergy" %>



<div class="fieldcontain ${hasErrors(bean: allergyInstance, field: 'allergy', 'error')} required">
	<label for="allergy">
		<g:message code="allergy.allergy.label" default="Allergy" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="allergy" required="" value="${allergyInstance?.allergy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: allergyInstance, field: 'allergyDate', 'error')} required">
	<label for="allergyDate">
		<g:message code="allergy.allergyDate.label" default="Allergy Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="allergyDate" precision="day"  value="${allergyInstance?.allergyDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: allergyInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="allergy.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${allergyInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: allergyInstance, field: 'reaction', 'error')} required">
	<label for="reaction">
		<g:message code="allergy.reaction.label" default="Reaction" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reaction" required="" value="${allergyInstance?.reaction}"/>
</div>

