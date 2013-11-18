<%@ page import="healthcare.Patient" %>

<div class="form-group">

	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'username', 'error')} required">
		<label class="control-label" for="username">
			<g:message code="patient.username.label" default="Username" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="username" required="" value="${patientInstance?.username}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'password', 'error')} required">
		<label class="control-label" for="password">
			<g:message code="patient.password.label" default="Password" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="password" required="" value="${patientInstance?.password}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'identification', 'error')} required">
		<label class="control-label" for="identification">
			<g:message code="patient.identification.label" default="Identification" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="identification" required="" value="${patientInstance?.identification}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'address', 'error')} required">
		<label class="control-label" for="address">
			<g:message code="patient.address.label" default="Address" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="address" required="" value="${patientInstance?.address}"/>
	</div>
			
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'birthDate', 'error')} required">
		<label class="control-label" for="birthDate">
			<g:message code="patient.birthDate.label" default="Birth Date" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker class="form-control" name="birthDate" precision="day"  value="${patientInstance?.birthDate}"  />
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'celphone', 'error')} required">
		<label class="control-label" for="celphone">
			<g:message code="patient.celphone.label" default="Celphone" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="celphone" required="" value="${patientInstance?.celphone}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'city', 'error')} required">
		<label class="control-label" for="city">
			<g:message code="patient.city.label" default="City" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="city" required="" value="${patientInstance?.city}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'complement', 'error')} required">
		<label class="control-label" for="complement">
			<g:message code="patient.complement.label" default="Complement" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="complement" required="" value="${patientInstance?.complement}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'contactPhone', 'error')} required">
		<label class="control-label" for="contactPhone">
			<g:message code="patient.contactPhone.label" default="Contact Phone" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="contactPhone" required="" value="${patientInstance?.contactPhone}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'cpf', 'error')} required">
		<label class="control-label" for="cpf">
			<g:message code="patient.cpf.label" default="Cpf" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="cpf" required="" value="${patientInstance?.cpf}"/>
	</div>
		
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} required">
		<label class="control-label" for="email">
			<g:message code="patient.email.label" default="Email" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="email" required="" value="${patientInstance?.email}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'fatherName', 'error')} required">
		<label class="control-label" for="fatherName">
			<g:message code="patient.fatherName.label" default="Father Name" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="fatherName" required="" value="${patientInstance?.fatherName}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'firstName', 'error')} required">
		<label class="control-label" for="firstName">
			<g:message code="patient.firstName.label" default="First Name" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="firstName" required="" value="${patientInstance?.firstName}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'gender', 'error')} required">
		<label class="control-label" for="gender">
			<g:message code="patient.gender.label" default="Gender" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="gender" from="${healthcare.Gender?.values()}" keys="${healthcare.Gender.values()*.name()}" required="" value="${patientInstance?.gender?.name()}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'lastName', 'error')} required">
		<label class="control-label" for="lastName">
			<g:message code="patient.lastName.label" default="Last Name" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="lastName" required="" value="${patientInstance?.lastName}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'martialStatus', 'error')} required">
		<label class="control-label" for="martialStatus">
			<g:message code="patient.martialStatus.label" default="Martial Status" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="martialStatus" from="${healthcare.MartialStatus?.values()}" keys="${healthcare.MartialStatus.values()*.name()}" required="" value="${patientInstance?.martialStatus?.name()}"/>
	</div>
		
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'motherName', 'error')} required">
		<label class="control-label" for="motherName">
			<g:message code="patient.motherName.label" default="Mother Name" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="motherName" required="" value="${patientInstance?.motherName}"/>
	</div>
		
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'number', 'error')} required">
		<label class="control-label" for="number">
			<g:message code="patient.number.label" default="Number" />
			<span class="required-indicator">*</span>
		</label>
		<g:field class="form-control" name="number" type="number" value="${patientInstance?.number}" required=""/>
	</div>
		
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'phone', 'error')} required">
		<label class="control-label" for="phone">
			<g:message code="patient.phone.label" default="Phone" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="phone" required="" value="${patientInstance?.phone}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'photo', 'error')} required">
		<label class="control-label" for="photo">
			<g:message code="patient.photo.label" default="Photo" />
			<span class="required-indicator">*</span>
		</label>
		
	</div>
		
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'rg', 'error')} required">
		<label class="control-label" for="rg">
			<g:message code="patient.rg.label" default="Rg" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="rg" required="" value="${patientInstance?.rg}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'state', 'error')} required">
		<label class="control-label" for="state">
			<g:message code="patient.state.label" default="State" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="state" from="${healthcare.State?.values()}" keys="${healthcare.State.values()*.name()}" required="" value="${patientInstance?.state?.name()}"/>
	</div>
	
	<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'zipCode', 'error')} required">
		<label class="control-label" for="zipCode">
			<g:message code="patient.zipCode.label" default="Zip Code" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="zipCode" required="" value="${patientInstance?.zipCode}"/>
	</div>

</div>

