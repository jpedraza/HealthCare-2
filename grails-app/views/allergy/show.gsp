
<%@ page import="healthcare.Allergy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allergy.label', default: 'Allergy')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-allergy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-allergy" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list allergy">
			
				<g:if test="${allergyInstance?.allergy}">
				<li class="fieldcontain">
					<span id="allergy-label" class="property-label"><g:message code="allergy.allergy.label" default="Allergy" /></span>
					
						<span class="property-value" aria-labelledby="allergy-label"><g:fieldValue bean="${allergyInstance}" field="allergy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${allergyInstance?.allergyDate}">
				<li class="fieldcontain">
					<span id="allergyDate-label" class="property-label"><g:message code="allergy.allergyDate.label" default="Allergy Date" /></span>
					
						<span class="property-value" aria-labelledby="allergyDate-label"><g:formatDate date="${allergyInstance?.allergyDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${allergyInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="allergy.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${allergyInstance?.patient?.id}">${allergyInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${allergyInstance?.reaction}">
				<li class="fieldcontain">
					<span id="reaction-label" class="property-label"><g:message code="allergy.reaction.label" default="Reaction" /></span>
					
						<span class="property-value" aria-labelledby="reaction-label"><g:fieldValue bean="${allergyInstance}" field="reaction"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${allergyInstance?.id}" />
					<g:link class="edit" action="edit" id="${allergyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
