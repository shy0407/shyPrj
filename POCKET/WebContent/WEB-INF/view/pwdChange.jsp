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
	<style>
	#pwd {
		display: inline-block;
	}
	
	.confirm {
		display: inline-block;
		
	}
	
	.confirm {
		background: #9ab978;
		background-image: -webkit-linear-gradient(top, #9ab978, #9ab978);
		background-image: -moz-linear-gradient(top, #9ab978, #9ab978);
		background-image: -ms-linear-gradient(top, #9ab978, #9ab978);
		background-image: -o-linear-gradient(top, #9ab978, #9ab978);
		background-image: linear-gradient(to bottom, #9ab978, #9ab978);
		-webkit-border-radius: 6;
		-moz-border-radius: 6;
		border-radius: 6px;
		font-family: Arial;
		color: #ffffff;
		font-size: 10px;
		padding: 10px 20px 10px 20px;
		text-decoration: none;
	}
	
	.confirm:hover {
		background: #b3d190;
		background-image: -webkit-linear-gradient(top, #b3d190, #9ab978);
		background-image: -moz-linear-gradient(top, #b3d190, #9ab978);
		background-image: -ms-linear-gradient(top, #b3d190, #9ab978);
		background-image: -o-linear-gradient(top, #b3d190, #9ab978);
		background-image: linear-gradient(to bottom, #b3d190, #9ab978);
		text-decoration: none;
	}
</style>
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
      <form class="form-wrapper" action="changeToNewPwd.do" method="post">
        <fieldset class="section is-active">
          <br/>
          <h3>Please Enter Your Authentication Number</h3>
          <input type="text" name="name" id="pwd" placeholder="발급 받은 임시비밀번호를 입력해주세요." autocomplete="off" required />
          <input type="button" value="확인" class ="confirm">         
          <input type="hidden" name="email" id="email" value="${email}">
          <div class="msg"></div>
          <div><input type="button" class="button" value="NEXT"></div>
          
        </fieldset>
        
        <fieldset class="section">
        	<br/>
          <h3>Enter New Password.</h3>
          <input type="password" name="password" id="password" placeholder="Password">
          <div class="msgForPwd"></div>
          <input type="password" name="password2" id="password2" placeholder="Re-enter Password">
          <input type="hidden" name="email1" id="email1" value="${email}">
          <div class="msgForNew"></div>
          <input class="submit button" type="submit" value="Update">
        </fieldset>
        <fieldset class="section">
        <br/><br/>
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
    <script>
    	$(function(){
    		
    		var email=$("#email").val();
    		
    		
    		console.log(email);
    		
    		$(".confirm").click(function(){
    			var temp=$("#pwd").val();
    			console.log(temp);
    			$.ajax({
        			url:"pwdChange.do",
        			data:{"temp":temp,"email":email},
        			
        			method:"POST",
        			success:function(data){
        				console.log(data);
        				
        				if (temp!=data){
        					$("#pwd").focus();
        					$(".button").attr("disabled", true);
        					
        					$(".msg").text("잘못입력하셨습니다.");
        					
        					
        				}else{
        					
        					$(".msg").text("일치합니다.");
        					$(".button").attr("disabled",false);
        					
        				}
        			}
        				
        		});
    		});
    		
    		
            
            $("#password2").change(function(){
            	var pwd =$("#password").val();
            	var pwd2 =$("#password2").val();
            	if(pwd !=pwd2){
            		$(".msgForNew").text("같은 비밀번호를 입력해주세요.");
            		
            	}else if(pwd ==pwd2){
            		$(".msgForNew").text("정확히 입력하셨습니다.");
            	}
            });
    		
        	$("#password").change(function(){
				var pwd =$("#password").val();
					console.log(pwd);
					if(!chkPwd(pwd)){ 
						$('.msgForPwd').text("안됨");
						$('#password').val('');

						$('#password').focus(); 
						
						$('.msgForPwd').hide();
						return false;
					}
					

			});
			
			function chkPwd(str){
				var reg_pwd = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,15}$/;
				if(!reg_pwd.test(str)){
					return false;
				}
				return true;
			}
            
            $( 'input' ).on("blur keyup", function() {
				$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
			});
    		
    	});
    	
    	
    	
    	
    
    </script>
  </body>

</html>
    