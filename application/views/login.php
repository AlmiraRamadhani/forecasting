<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title>LOGIN</title>
      <link href="<?=base_url('assets/favicon.ico')?>" rel="icon" />  
      <link href="<?=base_url('assets/css/default-bootstrap.min.css')?>" rel="stylesheet"/>
      <link href="<?=base_url('assets/css/general.css')?>" rel="stylesheet"/>
      <link href="<?=base_url('assets/css/signin.css')?>" rel="stylesheet"/>
      <script src="<?=base_url('assets/js/jquery.min.js')?>"></script>
      <script src="<?=base_url('assets/js/bootstrap.min.js')?>"></script>  
  </head>
  <body class="hold-transition login-page">
    <div class="container">
          <form class="form-signin" method="post">   
            <?=print_error()?>     
            <h2 class="form-signin-heading" style="color: black">Silahkan masuk</h2>          
            <label for="inputEmail" class="sr-only">Usernames</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="user" autofocus />
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" />        
            <button class="btn btn-lg btn-primary btn-block" type="submit">Masuk</button>        
          </form>      
        </div>
  </body>
</html>
