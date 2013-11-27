<%@ page import="healthcare.Allergy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allergy.label', default: 'Allergy')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div id="create-allergy" class="content scaffold-create" role="main">
				<h1><g:message code="default.create.label" args="[entityName]" /></h1>
				<g:hasErrors bean="${allergyInstance}">
					<g:eachError bean="${allergyInstance}" var="error">
						<g:if test="${error in org.springframework.validation.FieldError}">
							<div class="alert alert-danger" role="status"><g:message error="${error}"/></div>
						</g:if>
					</g:eachError>
				</g:hasErrors>
				<g:form action="save" >
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
