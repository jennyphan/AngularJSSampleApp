'use strict';

var app = angular.module('MainApp', [ 'sampleAppControllers', 'ngRoute', 'ngAutocomplete']);
app.config(function($routeProvider) {

	$routeProvider.when('/login', {
		templateUrl : '/sampleApp/components/login/login.jsp',
		controller : 'loginController'
	}).when('/getTodo', {
		templateUrl : '/sampleApp/components/todo/todo.jsp',
		controller : 'todoController'
	}).when('/home', {
		templateUrl : '/sampleApp/components/welcome/welcome.jsp',
		controller : 'welcomeController'
	}).otherwise({
		redirectTo: '/home'
	});
});