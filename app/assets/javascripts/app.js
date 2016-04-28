var app = angular.module('goatApp', ['ui.router', 'templates']);

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
    });
  $urlRouterProvider.otherwise('home');
});
