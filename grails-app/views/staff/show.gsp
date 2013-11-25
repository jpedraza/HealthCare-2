
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
					<div class="jumbotron">
						<div>
							<img src="https://app.divshot.com/img/placeholder-100x100.gif">
							<span>Username</span>
						</div>
						<h1>Staff Index Page</h1>
						<p>Text about that function</p>
					</div>
					<div class="row">
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Some news</h2>
							<p>Some news</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Some news</h2>
							<p>Some news</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Some news</h2>
							<p>Some news</p>
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
