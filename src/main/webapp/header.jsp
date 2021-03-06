<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="container">
		<div class="navbar-header">
			<button type="button" data-target="#navbarCollapse"
				data-toggle="collapse" class="navbar-toggle">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">AngularJS Samples</a>
		</div>
		<!-- Collection of nav links and other content for toggling -->
		<div id="navbarCollapse" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Todo List</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#myModal" data-toggle="modal">Login</a></li>
			</ul>
		</div>
	</div>

</nav>

<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">Login</h4>
			</div>
			<div class="modal-body" >
				<form name="loginForm" ng-submit="login()" role="form">
					<div class="form-group">
						<label for="username">Username</label> <i class="fa fa-key"></i> <input
							type="text" name="username" id="username" class="form-control"
							ng-model="username" required /> <span
							ng-show="loginForm.username.$dirty && loginForm.username.$error.required"
							class="help-block">Username is required</span>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <i class="fa fa-lock"></i>
						<input type="password" name="password" id="password"
							class="form-control" ng-model="password" required /> <span
							ng-show="loginForm.password.$dirty && loginForm.password.$error.required"
							class="help-block">Password is required</span>
					</div>
					<button type="submit" ng-disabled="loginForm.$invalid"
						class="btn btn-danger">Login</button>					
			</div>
		</div>
		</form>
	</div>

</div>
	
</div>
</div>

