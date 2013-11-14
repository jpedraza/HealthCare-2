<%@ page import="healthcare.Staff" %>



<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="staff.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${staffInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="staff.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${staffInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="staff.photo.label" default="Photo" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'identification', 'error')} required">
	<label for="identification">
		<g:message code="staff.identification.label" default="Identification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identification" required="" value="${staffInstance?.identification}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'appointments', 'error')} ">
	<label for="appointments">
		<g:message code="staff.appointments.label" default="Appointments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${staffInstance?.appointments?}" var="a">
    <li><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="appointment" action="create" params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'appointment.label', default: 'Appointment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="staff.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${staffInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="staff.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${staffInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="staff.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${staffInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="staff.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${staffInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'celphone', 'error')} required">
	<label for="celphone">
		<g:message code="staff.celphone.label" default="Celphone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celphone" required="" value="${staffInstance?.celphone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="staff.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${staffInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'complement', 'error')} required">
	<label for="complement">
		<g:message code="staff.complement.label" default="Complement" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complement" required="" value="${staffInstance?.complement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'contactPhone', 'error')} required">
	<label for="contactPhone">
		<g:message code="staff.contactPhone.label" default="Contact Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPhone" required="" value="${staffInstance?.contactPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="staff.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${staffInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="staff.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${staffInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="staff.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${staffInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'fatherName', 'error')} required">
	<label for="fatherName">
		<g:message code="staff.fatherName.label" default="Father Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fatherName" required="" value="${staffInstance?.fatherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="staff.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${staffInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="staff.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${healthcare.Gender?.values()}" keys="${healthcare.Gender.values()*.name()}" required="" value="${staffInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="staff.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${staffInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'martialStatus', 'error')} required">
	<label for="martialStatus">
		<g:message code="staff.martialStatus.label" default="Martial Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="martialStatus" from="${healthcare.MartialStatus?.values()}" keys="${healthcare.MartialStatus.values()*.name()}" required="" value="${staffInstance?.martialStatus?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'motherName', 'error')} required">
	<label for="motherName">
		<g:message code="staff.motherName.label" default="Mother Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motherName" required="" value="${staffInstance?.motherName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="staff.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${staffInstance.number}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="staff.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${staffInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="staff.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${staffInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="staff.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" required="" value="${staffInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'speciality', 'error')} required">
	<label for="speciality">
		<g:message code="staff.speciality.label" default="Speciality" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="speciality" from="${healthcare.Speciality?.values()}" keys="${healthcare.Speciality.values()*.name()}" required="" value="${staffInstance?.speciality?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="staff.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${healthcare.State?.values()}" keys="${healthcare.State.values()*.name()}" required="" value="${staffInstance?.state?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="staff.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" required="" value="${staffInstance?.zipCode}"/>
</div>

