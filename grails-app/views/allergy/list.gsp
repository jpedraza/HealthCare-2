
<%@ page import="healthcare.Allergy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allergy.label', default: 'Allergy')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-allergy" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-allergy" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="allergy" title="${message(code: 'allergy.allergy.label', default: 'Allergy')}" />
					
						<g:sortableColumn property="allergyDate" title="${message(code: 'allergy.allergyDate.label', default: 'Allergy Date')}" />
					
						<th><g:message code="allergy.patient.label" default="Patient" /></th>
					
						<g:sortableColumn property="reaction" title="${message(code: 'allergy.reaction.label', default: 'Reaction')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${allergyInstanceList}" status="i" var="allergyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${allergyInstance.id}">${fieldValue(bean: allergyInstance, field: "allergy")}</g:link></td>
					
						<td><g:formatDate date="${allergyInstance.allergyDate}" /></td>
					
						<td>${fieldValue(bean: allergyInstance, field: "patient")}</td>
					
						<td>${fieldValue(bean: allergyInstance, field: "reaction")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${allergyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
