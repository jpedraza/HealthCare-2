<!doctype html>
<html>

  <head>
    <title>${meta(name: 'app.name')}</title>

    <!-- Google Chrome Frame for IE -->
    <meta http-equiv="X-UA-Compatible" content="chrome=1">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <r:require modules="bootstrap"/>

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

    <r:layoutResources/>
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #eee;
      }
      
      .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin .checkbox {
        font-weight: normal;
      }
      .form-signin .form-control {
        position: relative;
        font-size: 16px;
        height: auto;
        padding: 10px;
        -webkit-box-sizing: border-box;
           -moz-box-sizing: border-box;
                box-sizing: border-box;
      }
      .form-signin .form-control:focus {
        z-index: 2;
      }
      .form-signin input[type="text"] {
        margin-bottom: -1px;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
      }
      .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
      }
    </style>
  </head>
  
  <body>
    <div class="container">
      <form class="form-signin" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type='text' class="form-control" placeholder="Login" name='j_username' id="username">
        <input type='password' name='j_password' placeholder="Password" class="form-control" id="password">
        <button type="submit" id="submit" value="Login" class="btn btn-success">Sign in</button>
      </form>
    </div> <!-- /container -->
  </body>
  
</html>