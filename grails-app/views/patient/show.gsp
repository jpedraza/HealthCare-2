
<%@ page import="healthcare.Patient"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName"	value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	
	<body>
		<div class="container">
			<div class="row row-offcanvas row-offcanvas-right">
				<div class="col-xs-12 col-sm-9">
					<p class="pull-right visible-xs" style>
						<button type="button" class="btn btn-primary btn-xs"
							data-toggle="offcanvas">Toggle nav</button>
					</p>
					<div id="home" class="jumbotron">
						<img src="https://app.divshot.com/img/placeholder-100x100.gif">
						<div class="content scaffold-show">
							<div class="fieldcontain">
								<span id="name-label" class="property-label"><g:message code="patient.firstName.label" default="Name:" /></span>
								<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="firstName"/></span>
							</div>
							<div class="fieldcontain">
								<span id="identification-label" class="property-label"><g:message code="patient.identification.label" default="Identification:" /></span>
								<span class="property-value" aria-labelledby="identification-label"><g:fieldValue bean="${patientInstance}" field="identification"/></span>
							</div>
							<div class="fieldcontain">
								<span id="phone-label" class="property-label"><g:message code="patient.phone.label" default="Phone:" /></span>
								<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${patientInstance}" field="phone"/></span>
							</div>
						</div>						
					</div>
					<div class="row">
					<h2 id="bloodPressure">Blood Pressure</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.bloodPressures}">
							<table class="table">
								<thead>
									<tr>					
										<g:sortableColumn property="diastolicPressure" title="${message(code: 'bloodPressure.diastolicPressure.label', default: 'Diastolic Pressure')}" />
										<g:sortableColumn property="systolicPressure" title="${message(code: 'bloodPressure.systolicPressure.label', default: 'Systolic Pressure')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.bloodPressures}" status="i" var="bloodPressureInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: bloodPressureInstance, field: "diastolicPressure")}</td>		
										<td>${fieldValue(bean: bloodPressureInstance, field: "systolicPressure")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Blood Pressure Control</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="diabetes">Diabetes</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.diabetes}">
							<table class="table">
								<thead>
									<tr>
										<g:sortableColumn property="glicemia" title="${message(code: 'diabetes.glicemia.label', default: 'Glicemia')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.diabetes}" status="i" var="diabetesInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: diabetesInstance, field: "glicemia")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Diabetes Control</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="weights">Weight</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.weights}">
							<table class="table">
								<thead>
									<tr>
										<g:sortableColumn property="height" title="${message(code: 'obesity.height.label', default: 'Height')}" />
										<g:sortableColumn property="waistline" title="${message(code: 'obesity.waistline.label', default: 'Waistline')}" />
										<g:sortableColumn property="weight" title="${message(code: 'obesity.weight.label', default: 'Weight')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.weights}" status="i" var="obesityInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: obesityInstance, field: "height")}</td>
										<td>${fieldValue(bean: obesityInstance, field: "waistline")}</td>
										<td>${fieldValue(bean: obesityInstance, field: "weight")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Weight control</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="allergies">Allergies</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.allergies}">
							<table class="table">
								<thead>
									<tr>									
										<g:sortableColumn property="allergy" title="${message(code: 'allergy.allergy.label', default: 'Allergy')}" />
										<g:sortableColumn property="allergyDate" title="${message(code: 'allergy.allergyDate.label', default: 'Allergy Date')}" />
										<g:sortableColumn property="reaction" title="${message(code: 'allergy.reaction.label', default: 'Reaction')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.allergies}" status="i" var="allergyInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: allergyInstance, field: "allergy")}</td>
										<td><g:formatDate date="${allergyInstance.allergyDate}" /></td>
										<td>${fieldValue(bean: allergyInstance, field: "reaction")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Allergy</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="medicalTests">Medical Tests</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.medicalTests}">
							<table class="table">
								<thead>
									<tr>					
										<g:sortableColumn property="code" title="${message(code: 'medicalTest.code.label', default: 'Code')}" />
										<g:sortableColumn property="medicalTest" title="${message(code: 'medicalTest.medicalTest.label', default: 'Medical Test')}" />
										<g:sortableColumn property="medicalTestDate" title="${message(code: 'medicalTest.medicalTestDate.label', default: 'Medical Test Date')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.medicalTests}" status="i" var="medicalTestInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: medicalTestInstance, field: "code")}</td>
										<td>${fieldValue(bean: medicalTestInstance, field: "medicalTest")}</td>
										<td><g:formatDate date="${medicalTestInstance.medicalTestDate}" /></td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Medical Test</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="appointments">Appointments</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.appointments}">
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
								<g:each in="${patientInstance.appointments}" status="i" var="appointmentInstance">
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
						<h2 id="prescriptions">Prescriptions</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.prescriptions}">
							<table class="table">
								<thead>
									<tr>					
										<g:sortableColumn property="concentrate" title="${message(code: 'prescription.concentrate.label', default: 'Concentrate')}" />
										<g:sortableColumn property="instructions" title="${message(code: 'prescription.instructions.label', default: 'Instructions')}" />
										<g:sortableColumn property="medicine" title="${message(code: 'prescription.medicine.label', default: 'Medicine')}" />
										<g:sortableColumn property="quantity" title="${message(code: 'prescription.quantity.label', default: 'Quantity')}" />
										<g:sortableColumn property="use" title="${message(code: 'prescription.use.label', default: 'Use')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.prescriptions}" status="i" var="prescriptionInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: prescriptionInstance, field: "concentrate")}</td>
										<td>${fieldValue(bean: prescriptionInstance, field: "instructions")}</td>
										<td>${fieldValue(bean: prescriptionInstance, field: "medicine")}</td>
										<td>${fieldValue(bean: prescriptionInstance, field: "quantity")}</td>
										<td>${fieldValue(bean: prescriptionInstance, field: "use")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Prescription</strong>
						          </div>
							</g:else>
						</div>
						<!--/span-->
						<h2 id="diagnosis">Diagnosis</h2>
						<div class="col-xs-12">
							<g:if test="${patientInstance.diagnosis}">
							<table class="table">
								<thead>
									<tr>					
										<g:sortableColumn property="code" title="${message(code: 'diagnosis.code.label', default: 'Code')}" />
										<g:sortableColumn property="diagnosis" title="${message(code: 'diagnosis.diagnosis.label', default: 'Diagnosis')}" />
										<g:sortableColumn property="diagnosisDate" title="${message(code: 'diagnosis.diagnosisDate.label', default: 'Diagnosis Date')}" />
										<g:sortableColumn property="diagnosisStatus" title="${message(code: 'diagnosis.diagnosisStatus.label', default: 'Diagnosis Status')}" />
									</tr>
								</thead>
								<tbody>
								<g:each in="${patientInstance.diagnosis}" status="i" var="diagnosisInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${fieldValue(bean: diagnosisInstance, field: "code")}</td>
										<td>${fieldValue(bean: diagnosisInstance, field: "diagnosis")}</td>
										<td><g:formatDate date="${diagnosisInstance.diagnosisDate}" /></td>
										<td>${fieldValue(bean: diagnosisInstance, field: "diagnosisStatus")}</td>
									</tr>
								</g:each>
								</tbody>
							</table>
							</g:if>
							<g:else>
								 <div class="alert alert-info">
						            <strong>There is no Diagnosis</strong>
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
							<sec:ifAllGranted roles="ROLE_USER">
								<li>EHR Menu</li>
								<li class="active"><a href="#home">Home</a></li>
								<li><a href="#bloodPressure">Blood Pressure</a></li>
								<li><a href="#diabetes">Diabetes</a></li>
								<li><a href="#weights">Weight</a></li>
								<li><a href="#allergies">Allergy</a></li>
								<li><a href="#medicalTests">Medical Test</a></li>
								<li><a href="#appointments">Appointment</a></li>
								<li><a href="#prescriptions">Prescription</a></li>
								<li><a href="#diagnosis">Diagnosis</a></li>							
							</sec:ifAllGranted>
							<sec:ifAllGranted roles="ROLE_ADMIN">
								<li>EHR Menu</li>
								<ul class="nav navbar-nav">
									<li class="active"><a href="#home">Home</a></li>
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'bloodPressure', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#bloodPressure">Blood Pressure</a></li>									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'diabetes', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#diabetes">Diabetes</a></li>									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'obesity', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#weights">Weights</a></li>									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'allergy', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#allergies">Allergies</a><li>									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'medicalTest', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#medicalTests">Medical Test</a></li>									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'appointment', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#appointments">Appointment</a></li>
									
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'prescription', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#prescriptions">Prescription</a></li>
								</ul>
								<ul class="nav navbar-nav">
									<li><a href="${createLink(controller:'diagnosis', action: 'create')}" class="glyphicon glyphicon-plus"></a></li>
									<li><a href="#diagnosis">Diagnosis</a></li>
								</ul>					
							</sec:ifAllGranted>
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
