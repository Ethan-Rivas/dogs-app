var app = angular.module('dogs', ['ngRoute']);

app.config(['$routeProvider', '$locationProvider', '$httpProvider', function($routeProvider, $locationProvider, $httpProvider) {    
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    
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
    $http.get('/api/v1/dogs.json').then(function(response) {
        $scope.dogs = response.data;

        console.log($scope.dogs);
    });
});

// Carts Controller
app.controller('CartsController', function($scope, $http) {
    $http.get('/api/v1/carts.json').then(function(response) {
        $scope.carts = response.data;
    });
});

// Vaccines Controller
app.controller('VaccinesController', function($scope, $http) {
    $http.get('/api/v1/vaccines.json').then(function(response) {
        $scope.vaccines = response.data;
    });
});
