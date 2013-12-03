<!DOCTYPE html>
<html lang="en">
	<head>
		<title><g:layoutTitle default="${meta(name: 'app.name')}" /></title>
		
		<!-- Google Chrome Frame for IE -->
		<meta http-equiv="X-UA-Compatible" content="chrome=1">
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<r:require modules="bootstrap" />
		
		<!-- Le fav and touch icons 
		<link rel="shortcut icon"
			href="${resource(dir: 'images', file: 'favicon.ico')}"
			type="image/x-icon">
		-->
		
		<style type="text/css">
		/*       * Style tweaks       * --------------------------------------------------       */
		body {
			padding-top: 70px;
		}
		
		footer {
			padding-left: 15px;
			padding-right: 15px;
		}
		/*       * Off Canvas       * --------------------------------------------------       */
		</style>
		
		<r:layoutResources />
		<g:layoutHead />
	</head>
	
	<body>
		<g:render template="/layouts/menu" />
		<g:layoutBody />
		<r:layoutResources />
		<div class="container">
			<hr>
			<footer>
				<p>&copy; Ufscar 2013</p>
			</footer>
		</div>
	</body>

</html>