var app = angular.module('dogs', ['ngRoute']);

app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {    
    $routeProvider    
    .when("/", {
        templateUrl : "templates/index.html.hbs"
    })
    .when("/dogs", {
        templateUrl : "templates/dogs.html.hbs",
        controller : "DogsController"
    })

    $locationProvider.html5Mode(true);    
}]);

// Dogs Controller
app.controller('DogsController', function($scope, $http) {
    $http.get('/api/v1/dogs.json', function(response) {
        $scope.dogs = response.data;
    });
});

// Carts Controller
app.controller('CartsController', function($scope, $http) {
    $http.get('/api/v1/carts.json', function(response) {
        $scope.carts = response.data;
    });
});

// Vaccines Controller
app.controller('VaccinesController', function($scope, $http) {
    $http.get('/api/v1/vaccines.json', function(response) {
        $scope.vaccines = response.data;
    });
});
