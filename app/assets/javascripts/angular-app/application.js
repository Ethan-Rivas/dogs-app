var app = angular.module('dogs', ['ngRoute']);

app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "templates/index.html"
    })
    .when("/dogs", {
        templateUrl : "templates/dogs.html.hbs",
        controller : "TestController"
      })
  });

app.controller('TestController', function($scope) {
  $scope.message = "Hola";
});
