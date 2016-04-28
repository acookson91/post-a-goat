var app = angular.module('goatApp', ['ui.router', 'templates', 'Devise']);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'friends/_home.html',
      controller: 'MainCtrl',
      resolve: {
        friendPromise: ['friends', function(friends){
          console.log(friends.getAll());
          return friends.getAll();
        }]
      }
    })
    .state('login', {
      url: '/login',
      templateUrl: 'auth/_login.html',
      controller: 'AuthCtrl'
    })
    .state('register', {
      url: '/register',
      templateUrl: 'auth/_register.html',
      controller: 'AuthCtrl'
    });
    
  $urlRouterProvider.otherwise('home');
});
