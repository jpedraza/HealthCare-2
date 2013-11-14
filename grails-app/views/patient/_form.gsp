<%@ page import="healthcare.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="patient.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${patientInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="patient.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${patientInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="patient.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${patientInstance?.identification}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="patient.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${patientInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="patient.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${patientInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="patient.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${patientInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'allergies', 'error')} required">
	<label for="allergies">
		<g:message code="patient.allergies.label" default="Allergies" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.allergies?}" var="a">
    <li><g:link controller="allergy" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="allergy" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'allergy.label', default: 'Allergy')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'appointments', 'error')} required">
	<label for="appointments">
		<g:message code="patient.appointments.label" default="Appointments" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.appointments?}" var="a">
    <li><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="appointment" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'appointment.label', default: 'Appointment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="patient.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${patientInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'celphone', 'error')} required">
	<label for="celphone">
		<g:message code="patient.celphone.label" default="Celphone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celphone" required="" value="${patientInstance?.celphone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="patient.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${patientInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'complement', 'error')} required">
	<label for="complement">
		<g:message code="patient.complement.label" default="Complement" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complement" required="" value="${patientInstance?.complement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'contactPhone', 'error')} required">
	<label for="contactPhone">
		<g:message code="patient.contactPhone.label" default="Contact Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPhone" required="" value="${patientInstance?.contactPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="patient.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${patientInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'diagnosis', 'error')} required">
	<label for="diagnosis">
		<g:message code="patient.diagnosis.label" default="Diagnosis" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.diagnosis?}" var="d">
    <li><g:link controller="diagnosis" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="diagnosis" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'diagnosis.label', default: 'Diagnosis')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="patient.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${patientInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="patient.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${patientInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'fatherName', 'error')} required">
	<label for="fatherName">
		<g:message code="patient.fatherName.label" default="Father Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fatherName" required="" value="${patientInstance?.fatherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="patient.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${patientInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="patient.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${healthcare.Gender?.values()}" keys="${healthcare.Gender.values()*.name()}" required="" value="${patientInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="patient.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${patientInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'martialStatus', 'error')} required">
	<label for="martialStatus">
		<g:message code="patient.martialStatus.label" default="Martial Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="martialStatus" from="${healthcare.MartialStatus?.values()}" keys="${healthcare.MartialStatus.values()*.name()}" required="" value="${patientInstance?.martialStatus?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'medicalTests', 'error')} required">
	<label for="medicalTests">
		<g:message code="patient.medicalTests.label" default="Medical Tests" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.medicalTests?}" var="m">
    <li><g:link controller="medicalTest" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="medicalTest" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'medicalTest.label', default: 'MedicalTest')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'motherName', 'error')} required">
	<label for="motherName">
		<g:message code="patient.motherName.label" default="Mother Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motherName" required="" value="${patientInstance?.motherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'ncds', 'error')} required">
	<label for="ncds">
		<g:message code="patient.ncds.label" default="Ncds" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.ncds?}" var="n">
    <li><g:link controller="NCD" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="NCD" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'NCD.label', default: 'NCD')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="patient.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${patientInstance.number}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="patient.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${patientInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="patient.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${patientInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="patient.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'prescriptions', 'error')} required">
	<label for="prescriptions">
		<g:message code="patient.prescriptions.label" default="Prescriptions" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${patientInstance?.prescriptions?}" var="p">
    <li><g:link controller="prescription" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="prescription" action="create" params="['patient.id': patientInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'prescription.label', default: 'Prescription')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="patient.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" required="" value="${patientInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="patient.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${healthcare.State?.values()}" keys="${healthcare.State.values()*.name()}" required="" value="${patientInstance?.state?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="patient.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" required="" value="${patientInstance?.zipCode}"/>
</div>

