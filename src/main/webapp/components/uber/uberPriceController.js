app.controller('uberPriceController', function($http, $scope, $rootScope,
		$compile, $location) {

	$scope.getPrice = function() {
		console.log("start " + $rootScope.locationStart.latitude);
		console.log("end   " + $rootScope.locationEnd.latitude);
		var res = $http.post('../uberRates/getPrices', [$rootScope.locationStart, $rootScope.locationEnd]);
		res.success(function(data, status, headers, config) {
			console.log(data);
			$scope.priceEstimateList = data;
		});
		res.error(function(data, status, headers, config) {
			alert("failure message: " + JSON.stringify({
				data : data
			}));
		});
	}
	$scope.getPrice();


})

.directive('priceEstimateHeader', function() {
         return {
             restrict: 'E', // Element directive
             scope: { price: '=priceEstimate' },
             template: '<p>Price Estimate: {{price.displayName}}<br />Type: {{price.estimate}}</p>'
         }
});

