<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span><span class="icon-bar"></span><span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Healthcare</a>
		</div>
		<div class="collapse navbar-collapse bs-js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/HealthCare">Home</a></li>
				<sec:ifAllGranted roles="ROLE_ADMIN">
					<li><a href="${createLink(controller:'staff', action: 'showCurrent') }">EHR Controller</a></li>
				</sec:ifAllGranted>
				<sec:ifAllGranted roles="ROLE_USER">
					<li><a href="${createLink(controller:'patient', action: 'showCurrent') }">EHR</a></li>
				</sec:ifAllGranted>			
			</ul>
			<sec:ifNotLoggedIn>
				<div class="nav navbar-form navbar-right">
					<a href="${createLink(controller: 'login')}" type="button"
						class="btn btn-success">Sign in</a>
				</div>
			</sec:ifNotLoggedIn>			
			<sec:ifLoggedIn>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="glyphicon glyphicon-user"></i> <sec:username/> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#about"> <i class="glyphicon glyphicon-cog"></i>
									&nbsp;&nbsp;Settings
							</a></li>
							<li class="divider"></li>
							<li><a href="${createLink(controller: 'logout')}" > <i class="glyphicon glyphicon-log-out"></i>
									&nbsp;&nbsp;Logout
							</a></li>
						</ul>
					</li>				
				</ul>
			</sec:ifLoggedIn>
		</div>
		<!--/.navbar-collapse -->
	</div>
</div>