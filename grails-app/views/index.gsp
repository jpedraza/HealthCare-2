<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
	</head>

	<body>
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1>Welcome to the Healthcare System</h1>
				<sec:ifLoggedIn><p>VOCE TA LOGADO</p></sec:ifLoggedIn>
				<a href="logout">Logout</a>
				<p>
					<a class="btn btn-primary btn-lg">Learn more »</a>
				</p>
			</div>
		</div>
		<div class="container">
			<!-- Example row of columns -->
			<div class="row">
				<div class="col-lg-4">
					<h2>EMR</h2>
					<p>Text about EMR</p>
					<p>
						<a class="btn btn-default" href="#">View details »</a>
					</p>
				</div>
				<div class="col-lg-4">
					<h2>NCD Control</h2>
					<p>Text about the NCD Control</p>
					<p>
						<a class="btn btn-default" href="#">View details »</a>
					</p>
				</div>
				<div class="col-lg-4">
					<h2>Mobile Application</h2>
					<p>Text about the mobile application</p>
					<p>
						<a class="btn btn-default" href="#">View details »</a>
					</p>
				</div>
			</div>
		</div>
		<!-- /container -->	
	</body>
	
</html>
