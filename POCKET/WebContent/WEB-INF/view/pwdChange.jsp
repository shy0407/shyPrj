<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Logo Nav - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/onlyNav/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/onlyNav/logo-nav.css" rel="stylesheet">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="/pwdChange/css/style.css">
	
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="http://placehold.it/300x60?text=Logo" width="150" height="30" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
    <div id="container">
    
    <div class="wrapper">
      <ul class="steps">
        <li class="is-active">Step 1</li>
        
        <li>Step 2</li>
      </ul>
      <form class="form-wrapper">
        <fieldset class="section is-active">
          <h3>Please Enter Your Authentication Number</h3>
          <input type="text" name="name" id="name" placeholder="인증번호 숫자 5자리를 입력해주세요" autocomplete="off" required />
          
          <div class="button">Next</div>
        </fieldset>
        
        <fieldset class="section">
          <h3>Enter New Password.</h3>
          <input type="password" name="password" id="password" placeholder="Password">
          <input type="password" name="password2" id="password2" placeholder="Re-enter Password">
          <input class="submit button" type="submit" value="Update">
        </fieldset>
        <fieldset class="section">
          <h3>Password Changed!</h3>
          <p>비밀번호 재설정이 완료되었습니다.</p>
          
        </fieldset>
      </form>
    </div>
    </div>     
    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <script src="/jquery-3.3.1.min.js"></script>
    <script src="/onlyNav/bootstrap.bundle.min.js"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>

    <script src="/pwdChange/js/index.js"></script>
  </body>

</html>
    