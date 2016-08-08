angular.module('sampleAppControllers', []).controller('mainController', function($http, $scope, $compile, $location, $rootScope, AuthenticationService) {
    console.log("here");
    AuthenticationService.ClearCredentials();
    
    $scope.login = function () {
        $scope.dataLoading = true;
        AuthenticationService.Login($scope.username, $scope.password, function(response) {
            if(response.success) {
                AuthenticationService.SetCredentials($scope.username, $scope.password);
                $location.path('/');
            } else {
                $scope.error = response.message;
                $scope.dataLoading = false;
            }
        });
    };
	
})