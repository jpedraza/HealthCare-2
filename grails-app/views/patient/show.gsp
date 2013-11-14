
<%@ page import="healthcare.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="patient.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${patientInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="patient.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${patientInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="patient.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${patientInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="patient.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${patientInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="patient.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${patientInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="patient.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${patientInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.allergies}">
				<li class="fieldcontain">
					<span id="allergies-label" class="property-label"><g:message code="patient.allergies.label" default="Allergies" /></span>
					
						<g:each in="${patientInstance.allergies}" var="a">
						<span class="property-value" aria-labelledby="allergies-label"><g:link controller="allergy" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.appointments}">
				<li class="fieldcontain">
					<span id="appointments-label" class="property-label"><g:message code="patient.appointments.label" default="Appointments" /></span>
					
						<g:each in="${patientInstance.appointments}" var="a">
						<span class="property-value" aria-labelledby="appointments-label"><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="patient.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${patientInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.celphone}">
				<li class="fieldcontain">
					<span id="celphone-label" class="property-label"><g:message code="patient.celphone.label" default="Celphone" /></span>
					
						<span class="property-value" aria-labelledby="celphone-label"><g:fieldValue bean="${patientInstance}" field="celphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="patient.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${patientInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.complement}">
				<li class="fieldcontain">
					<span id="complement-label" class="property-label"><g:message code="patient.complement.label" default="Complement" /></span>
					
						<span class="property-value" aria-labelledby="complement-label"><g:fieldValue bean="${patientInstance}" field="complement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.contactPhone}">
				<li class="fieldcontain">
					<span id="contactPhone-label" class="property-label"><g:message code="patient.contactPhone.label" default="Contact Phone" /></span>
					
						<span class="property-value" aria-labelledby="contactPhone-label"><g:fieldValue bean="${patientInstance}" field="contactPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="patient.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${patientInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.diagnosis}">
				<li class="fieldcontain">
					<span id="diagnosis-label" class="property-label"><g:message code="patient.diagnosis.label" default="Diagnosis" /></span>
					
						<g:each in="${patientInstance.diagnosis}" var="d">
						<span class="property-value" aria-labelledby="diagnosis-label"><g:link controller="diagnosis" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="patient.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${patientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="patient.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${patientInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.fatherName}">
				<li class="fieldcontain">
					<span id="fatherName-label" class="property-label"><g:message code="patient.fatherName.label" default="Father Name" /></span>
					
						<span class="property-value" aria-labelledby="fatherName-label"><g:fieldValue bean="${patientInstance}" field="fatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="patient.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${patientInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="patient.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${patientInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="patient.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${patientInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.martialStatus}">
				<li class="fieldcontain">
					<span id="martialStatus-label" class="property-label"><g:message code="patient.martialStatus.label" default="Martial Status" /></span>
					
						<span class="property-value" aria-labelledby="martialStatus-label"><g:fieldValue bean="${patientInstance}" field="martialStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.medicalTests}">
				<li class="fieldcontain">
					<span id="medicalTests-label" class="property-label"><g:message code="patient.medicalTests.label" default="Medical Tests" /></span>
					
						<g:each in="${patientInstance.medicalTests}" var="m">
						<span class="property-value" aria-labelledby="medicalTests-label"><g:link controller="medicalTest" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.motherName}">
				<li class="fieldcontain">
					<span id="motherName-label" class="property-label"><g:message code="patient.motherName.label" default="Mother Name" /></span>
					
						<span class="property-value" aria-labelledby="motherName-label"><g:fieldValue bean="${patientInstance}" field="motherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.ncds}">
				<li class="fieldcontain">
					<span id="ncds-label" class="property-label"><g:message code="patient.ncds.label" default="Ncds" /></span>
					
						<g:each in="${patientInstance.ncds}" var="n">
						<span class="property-value" aria-labelledby="ncds-label"><g:link controller="NCD" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="patient.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${patientInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="patient.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${patientInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="patient.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${patientInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="patient.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${patientInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.prescriptions}">
				<li class="fieldcontain">
					<span id="prescriptions-label" class="property-label"><g:message code="patient.prescriptions.label" default="Prescriptions" /></span>
					
						<g:each in="${patientInstance.prescriptions}" var="p">
						<span class="property-value" aria-labelledby="prescriptions-label"><g:link controller="prescription" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="patient.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${patientInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="patient.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${patientInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="patient.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${patientInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${patientInstance?.id}" />
					<g:link class="edit" action="edit" id="${patientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
