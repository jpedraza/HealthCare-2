<%@ page import="healthcare.Obesity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'obesity.label', default: 'Obesity')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div id="create-obesity" class="content scaffold-create" role="main">
				<h1><g:message code="default.create.label" args="[entityName]" /></h1>
				<g:hasErrors bean="${obesityInstance}">
					<g:eachError bean="${obesityInstance}" var="error">
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
