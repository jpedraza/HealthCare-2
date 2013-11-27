<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${createLink(uri: '/') }">Home</a>
		</div>
		<div class="collapse navbar-collapse bs-js-navbar-collapse">
			<ul class="nav navbar-nav">
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
							<%-- <li class="divider"></li> --%>
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