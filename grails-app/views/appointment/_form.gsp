<%@ page import="healthcare.Appointment" %>



<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'appointmentDate', 'error')} required">
	<label for="appointmentDate">
		<g:message code="appointment.appointmentDate.label" default="Appointment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="appointmentDate" precision="day"  value="${appointmentInstance?.appointmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'appointmentType', 'error')} required">
	<label for="appointmentType">
		<g:message code="appointment.appointmentType.label" default="Appointment Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="appointmentType" from="${healthcare.AppointmentType?.values()}" keys="${healthcare.AppointmentType.values()*.name()}" required="" value="${appointmentInstance?.appointmentType?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="appointment.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${healthcare.Staff.list()}" optionKey="id" required="" value="${appointmentInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="appointment.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="note" required="" value="${appointmentInstance?.note}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: appointmentInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="appointment.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${healthcare.Patient.list()}" optionKey="id" required="" value="${appointmentInstance?.patient?.id}" class="many-to-one"/>
</div>

