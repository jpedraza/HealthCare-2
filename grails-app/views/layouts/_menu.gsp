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
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact</a></li>
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
							<li><a href="#about"> <i class="glyphicon glyphicon-user"></i>
									&nbsp;&nbsp;My Profile
							</a></li>
							<li><a href="#about"> <i class="glyphicon glyphicon-calendar"></i>
									&nbsp;&nbsp;My Calendar
							</a></li>
							<li><a href="#about"> <i class="glyphicon glyphicon-cog"></i>
									&nbsp;&nbsp;Settings
							</a></li>
							<li class="divider"></li>
							<li><a href="logout"> <i class="glyphicon glyphicon-log-out"></i>
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