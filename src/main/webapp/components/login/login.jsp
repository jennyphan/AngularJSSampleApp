<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">Login</h4>
			</div>
			<div class="modal-body">
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