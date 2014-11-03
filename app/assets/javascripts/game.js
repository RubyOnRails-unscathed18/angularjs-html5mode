var TEMPLATES_DIR = '/angularjs/templates/game/';

var app = angular.module('GameModule', ['ngRoute']);

/*
	********************** HTML5 MODE **********************
	Before Angular 1.3.0 (currently using 1.3.1)

	http://omarriott.com/aux/angularjs-html5-routing-rails/

	After 1.3.0:

	https://docs.angularjs.org/error/$location/nobase
*/

app.config(['$locationProvider', function($locationProvider){
  $locationProvider.html5Mode({enabled:true, requireBase: true});
}]);

app.config(['$routeProvider', function($routeProvider){  
	$routeProvider
		.when('/' , {
			templateUrl:	TEMPLATES_DIR + 'index.html',
			controller: 	'gameController'
		})
		.when('/menu' , {
			templateUrl:	TEMPLATES_DIR + 'menu.html',
			controller: 	'menuController'
		})
		.when('/bolsa' , {
			templateUrl:	TEMPLATES_DIR + 'bolsa.html',
			controller: 	'bolsaController'
		})
		.when('/end' , {
			templateUrl:	TEMPLATES_DIR + 'end.html',
			controller: 	'endController'
		})
		.when('/prizes' , {
			templateUrl:	TEMPLATES_DIR + 'prizes.html',
			controller: 	'prizesController'
		})
		.otherwise({
			redirectTo: '/menu'
		});
}]);

app.controller('gameController', ['$scope', function($scope){
		$scope.hello = "Hello ninja!"
}]);


app.controller('bolsaController', ['$scope', function($scope){

}]);

app.controller('endController', ['$scope', function($scope){

}]);

app.controller('menuController', ['$scope', function($scope){

}]);

app.controller('prizesController', ['$scope', function($scope){

}]);