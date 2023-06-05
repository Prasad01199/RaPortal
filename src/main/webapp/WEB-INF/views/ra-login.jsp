<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="styles/ra-login.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@700&family=Source+Code+Pro:wght@600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
   <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@700&family=Source+Code+Pro:wght@600&display=swap" rel="stylesheet">
	<title>RA Portal</title>
</head>
<body
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
	<section class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-lg-3 col-sm-6 col-md-4 shadow-lg p-3 mb-5 bg-custom rounded">
				<form class="form-container login-info" action="ralogin">
					<div  class="form-group padding-custom">
					 	 <h4 class="text-center font-weight-bold form-heading">RA Login </h4>
					 	 <label for="InputUsername" class="input-label-font">Username</label>
					 	 <input name="username" type="text" class="form-control" id="Username" aria-describeby="UsernameHelp" placeholder="Enter Username">
					</div>
					<div class="form-group padding-custom">
					 	 <label for="InputPassword1"  class="input-label-font">Password</label>
					 	 <input name="password" type="password" class="form-control" id="InputPassword1" placeholder="Enter Password">
					</div>
					<div class="padding-custom">
					 	<button type="submit" class="btn submit-btn">SIGN IN</button>
					</div>
				</form>
      		</section>
   		</section>
  </section>
</body>
</html>