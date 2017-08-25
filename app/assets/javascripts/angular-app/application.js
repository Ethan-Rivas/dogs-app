var app = angular.module('dogs', ['ngRoute']);

app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {    
    $routeProvider    
    .when("/", {
        templateUrl : "templates/index.html.hbs"
    })
    .when("/dogs", {
        templateUrl : "templates/dogs.html.hbs"
    })

    $locationProvider.html5Mode(true);    
}]);

app.controller('TestController', function($scope) {
  $scope.message = "Hola";
});
