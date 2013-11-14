
<%@ page import="healthcare.Staff" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-staff" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-staff" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list staff">
			
				<g:if test="${staffInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="staff.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${staffInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="staff.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${staffInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="staff.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${staffInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.identification}">
				<li class="fieldcontain">
					<span id="identification-label" class="property-label"><g:message code="staff.identification.label" default="Identification" /></span>
					
						<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${staffInstance}" field="identification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.appointments}">
				<li class="fieldcontain">
					<span id="appointments-label" class="property-label"><g:message code="staff.appointments.label" default="Appointments" /></span>
					
						<g:each in="${staffInstance.appointments}" var="a">
						<span class="property-value" aria-labelledby="appointments-label"><g:link controller="appointment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="staff.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${staffInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="staff.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${staffInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="staff.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${staffInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="staff.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${staffInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.celphone}">
				<li class="fieldcontain">
					<span id="celphone-label" class="property-label"><g:message code="staff.celphone.label" default="Celphone" /></span>
					
						<span class="property-value" aria-labelledby="celphone-label"><g:fieldValue bean="${staffInstance}" field="celphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="staff.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${staffInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.complement}">
				<li class="fieldcontain">
					<span id="complement-label" class="property-label"><g:message code="staff.complement.label" default="Complement" /></span>
					
						<span class="property-value" aria-labelledby="complement-label"><g:fieldValue bean="${staffInstance}" field="complement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.contactPhone}">
				<li class="fieldcontain">
					<span id="contactPhone-label" class="property-label"><g:message code="staff.contactPhone.label" default="Contact Phone" /></span>
					
						<span class="property-value" aria-labelledby="contactPhone-label"><g:fieldValue bean="${staffInstance}" field="contactPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="staff.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${staffInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="staff.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${staffInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="staff.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${staffInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.fatherName}">
				<li class="fieldcontain">
					<span id="fatherName-label" class="property-label"><g:message code="staff.fatherName.label" default="Father Name" /></span>
					
						<span class="property-value" aria-labelledby="fatherName-label"><g:fieldValue bean="${staffInstance}" field="fatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="staff.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${staffInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="staff.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${staffInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="staff.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${staffInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.martialStatus}">
				<li class="fieldcontain">
					<span id="martialStatus-label" class="property-label"><g:message code="staff.martialStatus.label" default="Martial Status" /></span>
					
						<span class="property-value" aria-labelledby="martialStatus-label"><g:fieldValue bean="${staffInstance}" field="martialStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.motherName}">
				<li class="fieldcontain">
					<span id="motherName-label" class="property-label"><g:message code="staff.motherName.label" default="Mother Name" /></span>
					
						<span class="property-value" aria-labelledby="motherName-label"><g:fieldValue bean="${staffInstance}" field="motherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="staff.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${staffInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="staff.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${staffInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="staff.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${staffInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="staff.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${staffInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.speciality}">
				<li class="fieldcontain">
					<span id="speciality-label" class="property-label"><g:message code="staff.speciality.label" default="Speciality" /></span>
					
						<span class="property-value" aria-labelledby="speciality-label"><g:fieldValue bean="${staffInstance}" field="speciality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="staff.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${staffInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="staff.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${staffInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${staffInstance?.id}" />
					<g:link class="edit" action="edit" id="${staffInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
