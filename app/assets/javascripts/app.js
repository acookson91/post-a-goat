var app = angular.module('goatApp', ['ui.router', 'templates']);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'home/_home.html',
      controller: 'MainCtrl'
    });
  $urlRouterProvider.otherwise('home');
});
