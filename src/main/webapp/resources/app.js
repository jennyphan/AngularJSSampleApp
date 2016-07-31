'use strict';

var app = angular.module('MainApp', [ 'uberApp', 'ngRoute', 'ngAutocomplete']);
app.config(function($routeProvider) {

	$routeProvider.when('/welcome', {
		templateUrl : '/uberRates/components/uber/uberHome.jsp',
		controller : 'uberController'
	}).when('/getPrices', {
		templateUrl : '/uberRates/components/uber/uberPrices.jsp',
		controller : 'uberPriceController'
	}).otherwise({
		redirectTo: '/welcome'
	});
});