
<%@ page import="healthcare.Staff"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName"	value="${message(code: 'staff.label', default: 'Staff')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="modal fade" id="modalSearch" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Search Patient</h4>
					</div>
					<g:form controller="patient" action="showIdentification" >
						<g:hiddenField name="id" value="${staffInstance.id}"/>
						<div class="modal-body">
							<div class="form-group">
								<div class="controls fieldcontain ${hasErrors(bean: patientInstance, field: 'identification', 'error')} required">
									<label class="control-label" for="identification">
										<g:message code="patient.identification.label" default="Identification" />
										<span class="required-indicator">*</span>
									</label>
									<g:textField class="form-control" name="patientIdentification" required="" value="${patientInstance?.identification}"/>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<g:submitButton name="show" class="btn btn-primary" value="${message(code: 'default.button.show.label', default: 'Search')}" />
							</div>
						</div>
					</g:form>					
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
			
		<div class="container">
			<div class="row row-offcanvas row-offcanvas-right">
				<div class="col-xs-12 col-sm-9">
					<p class="pull-right visible-xs">
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">Toggle nav</button>
					</p>
					<div id="home" class="jumbotron">
						<img src="https://app.divshot.com/img/placeholder-100x100.gif">
						<div class="content scaffold-show">
							<div class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="patient.firstName.label" default="Name:" /></span>
								<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${staffInstance}" field="firstName"/></span>
							</div>
							<div class="fieldcontain">
								<span id="speciality-label" class="property-label"><g:message code="speciality.phone.label" default="Speciality:" /></span>
								<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${staffInstance}" field="speciality"/></span>
							</div>
							<div class="fieldcontain">
								<span id="identification-label" class="property-label"><g:message code="patient.identification.label" default="Identification:" /></span>
								<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${staffInstance}" field="identification"/></span>
							</div>
							<div class="fieldcontain">
								<span id="phone-label" class="property-label"><g:message code="patient.phone.label" default="Phone:" /></span>
								<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${staffInstance}" field="phone"/></span>
							</div>
						</div>						
					</div>
					<div class="row">
						<h2 id="appointments">Appointments</h2>
						<div class="col-xs-12">
							<g:if test="${staffInstance.appointments}">
							<table class="table">
								<thead>
									<tr>
										<g:sortableColumn property="appointmentDate" title="${message(code: 'appointment.appointmentDate.label', default: 'Appointment Date')}" />
										<g:sortableColumn property="appointmentType" title="${message(code: 'appointment.appointmentType.label', default: 'Appointment Type')}" />
										<th><g:message code="appointment.doctor.label" default="Doctor" /></th>
										<g:sortableColumn property="note" title="${message(code: 'appointment.note.label', default: 'Note')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${staffInstance.appointments}" status="i" var="appointmentInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: appointmentInstance, field: "appointmentDate")}</td>
										<td>${fieldValue(bean: appointmentInstance, field: "appointmentType")}</td>
										<td>${fieldValue(bean: appointmentInstance, field: "doctor")}</td>
										<td>${fieldValue(bean: appointmentInstance, field: "note")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Appointment</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
					</div>
					<!--/row-->
				</div>
				<!--/span-->
				<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar"
					role="navigation">
					<div class="well sidebar-nav">
						<ul class="nav">
							<li>Actions</li>
							<li><a href="${createLink(controller: 'patient', action: 'create') }">New EHR</a></li>
							<li><a href="patient/index.html" data-toggle="modal"
								data-target="#modalSearch">Search Patient</a></li>
						</ul>
					</div>
					<!--/.well -->
				</div>
				<!--/span-->
			</div>
			<!--/row-->
		</div>
		<!--/.container-->
	</body>

</html>
