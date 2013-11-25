
<%@ page import="healthcare.Obesity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'obesity.label', default: 'Obesity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-obesity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-obesity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="height" title="${message(code: 'obesity.height.label', default: 'Height')}" />
						<th><g:message code="obesity.patient.label" default="Patient" /></th>
						<g:sortableColumn property="waistline" title="${message(code: 'obesity.waistline.label', default: 'Waistline')}" />
						<g:sortableColumn property="weight" title="${message(code: 'obesity.weight.label', default: 'Weight')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${obesityInstanceList}" status="i" var="obesityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${obesityInstance.id}">${fieldValue(bean: obesityInstance, field: "height")}</g:link></td>
						<td>${fieldValue(bean: obesityInstance, field: "patient")}</td>
						<td>${fieldValue(bean: obesityInstance, field: "waistline")}</td>
						<td>${fieldValue(bean: obesityInstance, field: "weight")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${obesityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
