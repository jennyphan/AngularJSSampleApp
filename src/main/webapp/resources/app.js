'use strict';

var app = angular.module('MainApp', [ 'sampleApp', 'ngRoute', 'ngAutocomplete']);
app.config(function($routeProvider) {

	$routeProvider.when('/login', {
		templateUrl : '/sampleApp/components/sample/login/login.jsp',
		controller : 'loginController'
	}).when('/getTodo', {
		templateUrl : '/sampleApp/components/sample/todo/todo.jsp',
		controller : 'todoController'
	}).otherwise({
		redirectTo: '/login'
	});
});