var app = angular.module('uberApp', []);
app.controller('uberController', function($http, $scope, $compile, $location, $rootScope) {
    
	$http.get('../uberRates/initializeLocation').success(function(data) {
		$scope.locationStart = data;
		
	});
	
	$http.get('../uberRates/initializeLocation').success(function(data) {
		$scope.locationEnd = data;
	});
	

	$scope.getPrices = function() {
		$scope.locationStart.latitude = $scope.detailsStart.geometry.location.lat();
		$scope.locationStart.longitude = $scope.detailsStart.geometry.location.lng();
		$scope.locationEnd.latitude = $scope.detailsEnd.geometry.location.lat();
		$scope.locationEnd.longitude = $scope.detailsEnd.geometry.location.lng();
		$rootScope.locationStart = $scope.locationStart;
		$rootScope.locationEnd = $scope.locationEnd;
		$location.path('/getPrices');
	}
})
.directive('bsActiveLink', ['$location', function ($location) {
	return {
	    restrict: 'A', //use as attribute 
	    replace: false,
	    link: function (scope, elem) {
	        //after the route has changed
	        scope.$on("$routeChangeSuccess", function () {
	            var hrefs = ['/uberRates/#' + $location.path(),
	                         '#' + $location.path(), //html5: false
	                         $location.path()]; //html5: true
	            angular.forEach(elem.find('a'), function (a) {
	                a = angular.element(a);
	                if (-1 !== hrefs.indexOf(a.attr('href'))) {
	                    a.parent().addClass('active');
	                } else {
	                    a.parent().removeClass('active');   
	                };
	            });     
	        });
	    }
	}
	}]);
