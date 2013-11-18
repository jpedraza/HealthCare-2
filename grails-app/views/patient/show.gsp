
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
					<div class="jumbotron">
						<div>
							<img src="https://app.divshot.com/img/placeholder-100x100.gif">
							<span>Username</span>
						</div>
						<h1>Patient EMR</h1>
						<p>Text about that function</p>
					</div>
					<div class="row">
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Information</h2>
							<p>Some resumed information</p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Information</h2>
							<p>Some resumed information</p>
							<p></p>
						</div>
						<!--/span-->
						<div class="col-6 col-sm-6 col-lg-4">
							<h2>Information</h2>
							<p>Some resumed information</p>
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
							<li>EMR Menu</li>
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#">NCD</a></li>
							<li><a href="#">Exam</a></li>
							<li><a href="#">Consult</a></li>
							<li><a href="#">Diagnosis</a></li>
							<li><a href="#">Prescription</a></li>
							<sec:ifAllGranted roles="ROLE_ADMIN">
								<li>Staff Menu</li>
								<li><a href="#">Insert</a></li>
								<li><a href="#">Edit</a></li>
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
