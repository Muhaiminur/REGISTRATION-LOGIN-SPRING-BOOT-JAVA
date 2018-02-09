<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>REGISTRATION LOGIN SPRING</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <style>
  .success-popup  {
    transition: .3s ease all;
    font-family: 'Roboto', sans-serif;
  }
  </style>
</head>
<body>
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="/">WELCOME</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="/">HOME</a></li>
		      <li><a href="register">REGISTER</a></li>
		      <li><a href="update">LOGIN</a></li>
		      <li><a href="delete">VIEW ALL USER</a></li>
		    </ul>
		  </div>
		</nav>

		<div class="container" id="homediv">
			<div class="jumbotron text-center">
				<h1>WELCOME TO REGISTRATION LOGIN SPRING BOOT TUTORIAL</h1>
				<h3>Save Time With Great Product </h3>
			</div>
		</div>
		<c:choose>
			<c:when test="${mode=='MODE_REGISTER' }">
				<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save_user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">FIRST NAME</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="firstname" value="${user.firstname }" />
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">LAST NAME</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="lastname" value="${user.lastname }" />
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">AGE </label>
							<div class="col-md-3">
								<input type="text" class="form-control" name="age" value="${user.age }" />
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">USER NAME</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="username" value="${user.username }" />
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">PASSWORD</label>
							<div class="col-md-7">
								<input type="password" class="form-control" name="password" value="${user.password }" />
							</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" data-toggle="modal" data-target="#myModal"/>
					</div>
				</form>
				<!-- mhere the success popup modal code -->

				<!-- Modal Success Popup -->
				<div class="modal fade success-popup" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog modal-sm" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				        <h4 class="modal-title" id="myModalLabel">REGISTERD !!!</h4>
				      </div>
				      <div class="modal-body text-center">
					       <a href="#">
					          <span class="glyphicon glyphicon-heart"></span>
					       </a>
				          <p class="lead">Registration successfully submitted. Thank you, We will verify you soon!</p>
				          <a href="index.php" class="rd_more btn btn-default">Go to Home</a>
				      </div>
				      
				    </div>
				  </div>
				</div>
				</div>
			</c:when>
		</c:choose>	
</body>
</html>