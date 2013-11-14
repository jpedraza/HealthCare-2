<!DOCTYPE html>
<html lang="en">
   <head>
		<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>

        <!-- Google Chrome Frame for IE -->
        <meta http-equiv="X-UA-Compatible" content="chrome=1">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <r:require modules="bootstrap"/>

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

        <r:layoutResources/>
        <g:layoutHead/>
   </head>
   <body>
   	  <g:render template="/layouts/menu"/>
      <g:layoutBody/>
      <r:layoutResources/>
   </body>
</html>